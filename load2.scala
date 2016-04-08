import java.sql.{Connection, Statement}

import scala.collection.mutable.ArrayBuffer


/**
  * Created by zhangxu on 16/4/6.
  */
object Transfer extends App {
  //  val OConn = OConnect.conn
  //  val MConn = MConnect.conn
  val Oconn: Connection = OConnect.conn
  val Mconn: Connection = MConnect.conn
  val Ors = Oconn.createStatement().executeQuery(
    """select doc_label,
      |       row_number() over(partition by doc_label order by doc_class, doc_sub_label, id) doc_label_id,
      |       doc_sub_label,
      |       row_number() over(partition by doc_label, doc_sub_label order by doc_class, doc_sub_label, id) doc_sub_label_id,
      |       DOC_DOC_NAME,
      |       DOC_SUMMARY,
      |       id
      |  from (select * from goku_doc where doc_class = 'oracle' order by doc_class, doc_sub_label, id)
      | """.stripMargin)
  var mfid = 0
  var mcid = 0
  while (Ors.next()) {

    val id = Ors.getInt(7)
    val label = Ors.getString(1)
    val label_id = Ors.getInt(2)
    val sublabel = Ors.getString(3)
    val sublabel_id = Ors.getInt(4)
    val doc_doc_name = Ors.getString(5)
    val doc_summary = Ors.getString(6)

    if (label_id == 1) {
      //insert label
      val stmt = Mconn.prepareStatement("insert into g_note.category(name,father_id,createdata,updatedata) values(?,36,now(),now())",
        Statement.RETURN_GENERATED_KEYS)
      stmt.setString(1, label)
      stmt.execute()
      val Mrs = stmt.getGeneratedKeys()
      while (Mrs.next()) {
        mfid = Mrs.getInt(1)
      }
      Mrs.close()
      stmt.close()
      //insert sub label
      val stmt2 = Mconn.prepareStatement("insert into g_note.category(name,father_id,createdata,updatedata) values(?,?,now(),now())",
        Statement.RETURN_GENERATED_KEYS)
      stmt2.setString(1, sublabel)
      stmt2.setInt(2, mfid)
      stmt2.execute()
      val Mrs2 = stmt2.getGeneratedKeys()
      while (Mrs2.next()) {
        mcid = Mrs2.getInt(1)
      }
      Mrs2.close()
      stmt2.close()

      val stmt3 = Mconn.prepareStatement("insert into g_note.content(content_1,content_2,category_id,createdata,updatedata,document_id) values(?,?,?,now(),now(),?)")
      stmt3.setString(1, doc_doc_name)
      stmt3.setString(2, doc_summary)
      stmt3.setInt(3, mcid)
      stmt3.setInt(4, id)
      stmt3.execute()
      stmt3.close()

    } else if (sublabel_id == 1) {

      val stmt2 = Mconn.prepareStatement("insert into g_note.category(name,father_id,createdata,updatedata) values(?,?,now(),now())",
        Statement.RETURN_GENERATED_KEYS);
      stmt2.setString(1, sublabel)
      stmt2.setInt(2, mfid)
      stmt2.execute()
      val Mrs2 = stmt2.getGeneratedKeys()
      while (Mrs2.next()) {
        mcid = Mrs2.getInt(1)
      }
      Mrs2.close()
      stmt2.close()

      val stmt3 = Mconn.prepareStatement("insert into g_note.content(content_1,content_2,category_id,createdata,updatedata,document_id) values(?,?,?,now(),now(),?)")
      stmt3.setString(1, doc_doc_name)
      stmt3.setString(2, doc_summary)
      stmt3.setInt(3, mcid)
      stmt3.setInt(4, id)
      stmt3.execute()
      stmt3.close()
    } else {
      val stmt3 = Mconn.prepareStatement("insert into g_note.content(content_1,content_2,category_id,createdata,updatedata,document_id) values(?,?,?,now(),now(),?)")
      stmt3.setString(1, doc_doc_name)
      stmt3.setString(2, doc_summary)
      stmt3.setInt(3, mcid)
      stmt3.setInt(4, id)
      stmt3.execute()
      stmt3.close()
    }
  }

}

