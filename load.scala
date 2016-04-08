import java.sql.Statement

import scala.collection.mutable.ArrayBuffer


/**
  * Created by zhangxu on 16/4/6.
  */
object Transfer extends App {
  val OConn = OConnect.conn
  val MConn = MConnect.conn
  val ORCLRows = new ArrayBuffer[(Int, Int)]()
  val ORCLRows2 = new ArrayBuffer[(Int, Int, Int)]()
  val Ostmt = OConn.prepareStatement("select * from goku.goku_doc where doc_class='oracle'")
  val Ors = Ostmt.executeQuery()
  var GOlable = ""
  var Mid = 0
//  var Oid = 0
  while (Ors.next()) {
    val Oid = Ors.getInt(1)
    val Olable = Ors.getString(3)
    if (Olable != GOlable) {
      val stmt = MConn.prepareStatement("insert into g_note.category(name,father_id,createdata,updatedata) values(?,36,now(),now())", Statement.RETURN_GENERATED_KEYS)
      stmt.setString(1, Olable)
      stmt.execute()
      val Mrs = stmt.getGeneratedKeys();
      while (Mrs.next()) {
        Mid = Mrs.getInt(1)
        ORCLRows += ((Oid, Mid))
      }
      Mrs.close()
      stmt.clearParameters()
      GOlable = Olable
    } else {
      ORCLRows += ((Oid, Mid))
    }
  }
  Ors.close()
  Ostmt.close()
  var GOSubLable = ""
  var Mid2 = 0

  val Ostmt1 = OConnect.conn.prepareStatement(s"select * from goku.goku_doc where id = ?")
  val stmt = MConnect.conn.prepareStatement("insert into g_note.category(name,father_id,createdata,updatedata) values(?,?,now(),now())", Statement.RETURN_GENERATED_KEYS)
  ORCLRows.foreach { case (oid, mid) =>
    Ostmt1.setInt(1, oid)
    val Ors2 = Ostmt1.executeQuery()
    while (Ors2.next()) {
      val SubLable = Ors2.getString(4)
      if (GOSubLable != SubLable) {
        stmt.setString(1, SubLable)
        stmt.setInt(2, mid)
        stmt.execute()
        val Mrs = stmt.getGeneratedKeys();
        while (Mrs.next()) {
          Mid2 = Mrs.getInt(1)
          ORCLRows2 += ((oid, mid, Mid2))
        }
        Mrs.close()
        stmt.clearParameters()
        GOSubLable = SubLable
      } else {
        ORCLRows2 += ((oid, mid, Mid2))
      }
    }
    Ors2.close
    Ostmt1.clearParameters()
  }

  println(ORCLRows2)
  val Ostmt13 = OConnect.conn.prepareStatement("select * from goku.goku_doc where id = ?")
  val stmt3 = MConnect.conn.prepareStatement("insert into g_note.content(content_1,content_2,category_id,createdata,updatedata) values(?,?,?,now(),now())")
  ORCLRows2.foreach { case (i1, i2, i3) =>
    println(i1)
    Ostmt13.setInt(1, i1)
    val Ors2 = Ostmt13.executeQuery()
    while (Ors2.next()) {
      val doc_name = Ors2.getString(5)
      val doc_doc = Ors2.getString(6)
      println(doc_name)
      stmt3.setString(1, doc_name)
      stmt3.setString(2, doc_doc)
      stmt3.setInt(3, i3)
      stmt3.execute()
      stmt3.clearParameters()
    }
    Ors2.close
    Ostmt13.clearParameters()
  }
  //  var Gloid = 0
  //  var GLABEL = ""
  //  while (Ors.next()) {
  //    val LABEL = Ors.getString(3)
  //    val SUBLABEL = Ors.getString(4)
  //    if (LABEL != GLABEL) {
  //      val MConn1 = MConnect.conn
  //      val Mstmt1 = MConn1.createStatement
  //      Mstmt1.executeUpdate(s"insert into g_note.category(name,father_id,createdata,updatedata) values($LABEL,36,now(),now())", Statement.RETURN_GENERATED_KEYS)
  //      val Mrs1 = Mstmt1.getGeneratedKeys
  //      while (Mrs1.next()) {
  //        Gloid = Mrs1.getInt(1)
  //      }
  //      Mrs1.close()
  //      Mstmt1.close()
  //      val Mstmt2 = MConn1.createStatement
  //      Mstmt2.executeUpdate(s"insert into g_note.category(name,father_id,createdata,updatedata) values($LABEL,$Gloid,,now(),now())", Statement.RETURN_GENERATED_KEYS)
  //
  //    } else {
  //      val MConn2 = MConnect.conn
  //      val Mstmt2 = MConn2.createStatement
  //      Mstmt2.executeUpdate(s"insert into g_note.category(name,father_id,createdata,updatedata) values($SUBLABEL,$Gloid,now(),now())", Statement.RETURN_GENERATED_KEYS)
  //      val Mrs2 = Mstmt2.getGeneratedKeys
  //      while (Mrs2.next()) {
  //        val Gloid2 = Mrs2.getInt(1)
  //        val MConn3 = MConnect.conn
  //        MConn3.createStatement().executeUpdate("insert into g_note.content(content_1,content_2,category_id,createdata,updatedata) values(?,?,$Gloid2,now(),now())")
  //      }
  //
  //      Mrs2.close()
  //      Mstmt2.close()
  //    }
  //    GLABEL = LABEL
  //  }
  //  OConn.close()


  //  val stmt1 = MConn.createStatement
  //  stmt1.executeUpdate("insert into temp(b) values(1)", Statement.RETURN_GENERATED_KEYS)
  //  val mrs = stmt1.getGeneratedKeys
  //  while (mrs.next()) {
  //    println(mrs.getInt(1))
  //  }
  //      val mid = mrs.getInt(1)
  //      val stmt2 = MConn.prepareStatement("insert into g_note.category(name,father_id,createdata,updatedata) values(?,36,now(),now())")
  //    }
  //      val stmt = MConn.prepareStatement("insert into g_note.category(name,father_id,createdata,updatedata) values(?,36,now(),now())")
  //      stmt.setString(1, label)


  //  val rs = MConn.createStatement.executeQuery("select id,name from category where father_id=36")
  //  while(rs.next){
  //    val name = rs.getString(2)
  //    val id = rs.getInt(1)
  //    val stmt = OConn.prepareStatement("select DOC_SUB_LABEL from goku.goku_doc where doc_class='oracle' and DOC_LABEL = ? group by DOC_SUB_LABEL")
  //    stmt.setString(1,name)
  //    val rs2 = stmt.executeQuery()
  //    while(rs2.next()) {
  //      val stmt2 = MConn.prepareStatement(s"insert into g_note.category(name,father_id,createdata,updatedata) values(?,$id,now(),now())")
  //      stmt2.setString(1,rs2.getString(1))
  //      stmt2.execute()
  //    }
  //  }

  //  val rs = MConn.createStatement.executeQuery("select a.id,a.name ,b.name from g_note.category a join (select id,name,father_id from g_note.tmp where father_id = 36) b on a.father_id = b.id")
  //  while (rs.next) {
  //    val DOC_SUB_LABEL = rs.getString(2)
  //    val DOC_LABEL = rs.getString(3)
  //    val id = rs.getInt(1)
  //    val stmt = OConn.prepareStatement("select DOC_DOC_NAME,DOC_SUMMARY from goku.goku_doc where doc_class='oracle' and DOC_LABEL = ? and DOC_SUB_LABEL =?")
  //    stmt.setString(1, DOC_LABEL)
  //    stmt.setString(2, DOC_SUB_LABEL)
  //    val rs2 = stmt.executeQuery()
  //    while (rs2.next()) {
  //      val stmt2 = MConn.prepareStatement(s"insert into g_note.content(content_1,content_2,category_id,createdata,updatedata) values(?,?,$id,now(),now())")
  //      stmt2.setString(1, rs2.getString(1))
  //      stmt2.setString(2, rs2.getString(2))
  //      stmt2.execute()
  //      stmt2.close()
  //    }
  //    rs2.close()
  //    stmt.close()
  //  }
}

