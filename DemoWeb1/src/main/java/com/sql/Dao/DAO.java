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
import com.sql.Model.User;



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
	//Login
	public User login(String user, String pass)
	{
		String query ="SELECT * FROM [User] WHERE UTK = ? AND UPass =?";
			
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			ps.setString(1, user);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			while(rs.next()) {
				return new User( rs.getInt(1), rs.getString(2), rs.getString(3),
						rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7)
						, rs.getString(8), rs.getString(9),rs.getString(10));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	//Check exits
	public User checkUserExits(String user)
	{
		String query ="SELECT * FROM [User] WHERE UTK = ? ";
			
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			ps.setString(1, user);
			rs = ps.executeQuery();
			while(rs.next()) {
				return new User( rs.getInt(1), rs.getString(2), rs.getString(3),
						rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7)
						, rs.getString(8), rs.getString(9),rs.getString(10));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	// Sign Up
	public void SignUp(String name, String phone ,  String email,  String user,
			 String pass, String username)
	{
		String query ="INSERT INTO [User] VALUES(?,?,0,'?,?,?,'0','1','0')";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(2, phone);
			ps.setString(3, email);
			ps.setString(4, pass);
			ps.setString(5, username);
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
}
