package com.sql.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.sql.Connection.SqlServerConnection;
import com.sql.Model.Author;
import com.sql.Model.Book;
import com.sql.Model.Category;



public class DAO {
	Connection conn = null; // Kết nới Sql
	PreparedStatement ps = null; // Query qua SQL
	ResultSet rs = null; // Kết quả trả về
	// Show all Product
	public List<Book> getAllBook() {
		List<Book> list = new ArrayList<>();
		
		String query = "SELECT * FROM Book";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
			list.add(
					new Book(rs.getInt(1),
							 rs.getString(2),
							 rs.getInt(3),
							 rs.getInt(4),
							 rs.getString(7))
					);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}
	
	//Show Categoory
	public List<Category> getAllCategory() {
		List<Category> list = new ArrayList<>();
		
		String query = "SELECT * FROM Category";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
			list.add(
					new Category(rs.getInt(1),
							 rs.getString(2)
							 )
					);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}
	
	// Show Author
	public List<Author> getAllAuthor() {
		List<Author> list = new ArrayList<>();
		
		String query = "SELECT * FROM Author";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
			list.add(
					new Author(rs.getInt(1),
							 rs.getString(2)
							 )
					);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}
	public static void main(String[] args) {
		try {
			DAO dao = new DAO();
			List<Author> list = dao.getAllAuthor();
			for(Author o : list) {
				System.out.println(o.getAuName());
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	// Get Book By CID 
	public List<Book> getBookByCID( String cid) {
		List<Book> list = new ArrayList<>();
		
		String query = "SELECT * FROM Book WHERE BCate = ?";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			ps.setString(1, cid);
			rs = ps.executeQuery();
			while (rs.next()) {
			list.add(
					new Book(rs.getInt(1),
							 rs.getString(2),
							 rs.getInt(3),
							 rs.getInt(4),
							 rs.getString(7))
					);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}
	
	// GET Book By Id
	public Book getBookByBId( String cid) {
		String query = "SELECT * FROM Book WHERE BId = ?";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			ps.setString(1, cid);
			rs = ps.executeQuery();
			while (rs.next()) {
				return 	new Book(rs.getInt(1),
							 rs.getString(2),
							 rs.getInt(3),
							 rs.getInt(4),
							 rs.getString(7))
					;
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return null;
	}
	
	//Search Book
	public List<Book> searchBookByName( String txtSearch) {
		List<Book> list = new ArrayList<>();
		
		String query = "SELECT * FROM Book WHERE BName LIKE ?";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			ps.setString(1, "%"+ txtSearch + "%");
			rs = ps.executeQuery();
			while (rs.next()) {
			list.add(
					new Book(rs.getInt(1),
							 rs.getString(2),
							 rs.getInt(3),
							 rs.getInt(4),
							 rs.getString(7))
					);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}
	
}
