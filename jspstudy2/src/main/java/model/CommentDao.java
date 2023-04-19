package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CommentDao {
	public int maxseq(int num) {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select ifnull(max(seq),0) from comment where num = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1);
			}
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			DBConnection.close(conn, pstmt, rs);
		}
		return 0;
	}
	 public boolean insert(Comment comment) {
			Connection conn = DBConnection.getConnection();
			PreparedStatement pstmt = null;
			String sql = "insert into comment"
					+" (num,seq,writer,content,regdate) "
					+" values(?,?,?,?,now())";
			try {
				pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1,comment.getNum());
				pstmt.setInt(2,comment.getSeq());
				pstmt.setString(3,comment.getWriter());
				pstmt.setString(4,comment.getContent());
				return pstmt.executeUpdate() > 0 ;
				
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				DBConnection.close(conn, pstmt, null);
			}
			return false;
	 }				
	public List<Comment> list(int num){
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = conn.prepareStatement("select * from comment where num = ?");
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			List<Comment> list = new ArrayList<>();
			while(rs.next()) {
				Comment c = new Comment();
					c.setNum(rs.getInt("num"));
					c.setSeq(rs.getInt("seq"));
					c.setWriter(rs.getString("writer"));
					c.setContent(rs.getString("content"));
					c.setRegdate(rs.getTimestamp("regdate"));
					list.add(c);
			}
			return list;//num에 해당하는 댓글 목록 저장
		} catch(SQLException e) {
			e.printStackTrace();
		}finally {
			DBConnection.close(conn,pstmt,rs);
		}
			return null;
	}
	public boolean delete(int num, int seq) {
		Connection conn = DBConnection.getConnection();
		PreparedStatement pstmt = null;
		String sql = "delete from comment where num=? and seq=?";
		try{
    		pstmt = conn.prepareStatement(sql);
    		pstmt.setInt(1, num);
    		pstmt.setInt(2, seq);
    		return pstmt.executeUpdate() >0;
    	}catch (SQLException e) {
    		e.printStackTrace();
    	}finally {
    		DBConnection.close(conn, pstmt, null);
    	}
    return false;
	}
}
