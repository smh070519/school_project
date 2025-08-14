package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import util.DBUtil;

public class HelloDAO {
    Connection conn;
    PreparedStatement pstmt;
    ResultSet rs;

    public void insertRental(String rentalNo, String custNo, java.sql.Date rentalDate, String equipCode, java.sql.Date returnDue) {
        try {
            conn = DBUtil.getConnection();
            String sql = "INSERT INTO rental (rental_no, cust_no, rental_date, equip_code, return_due) VALUES (?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, rentalNo);
            pstmt.setString(2, custNo);
            pstmt.setDate(3, rentalDate);
            pstmt.setString(4, equipCode);
            pstmt.setDate(5, returnDue);
            pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            DBUtil.close(conn, pstmt, rs);
        }
    }
}
