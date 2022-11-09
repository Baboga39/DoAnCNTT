package com.sql.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.sql.Connection.SqlServerConnection;
import com.sql.Model.Blog;
import com.sql.Model.Book;
import com.sql.Model.Category;
import com.sql.Model.User;

public class DAO {
	Connection conn = null; // Kết nới Sql
	PreparedStatement ps = null; // Query qua SQL
	ResultSet rs = null; // Kết quả trả về
	// Show all Product
	// Hai

	public List<Book> getAllBook() {
		List<Book> list = new ArrayList<>();

		String query = "SELECT * FROM Book";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Book(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(7)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}

	// Hai
	// Show Categoory
	public List<Category> getAllCategory() {
		List<Category> list = new ArrayList<>();

		String query = "SELECT * FROM Category";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Category(rs.getInt(1), rs.getString(2)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}

	// Hai
	// Get Book By CID
	public List<Book> getBookByCID(String cid) {
		List<Book> list = new ArrayList<>();

		String query = "SELECT * FROM Book WHERE BCate = ?";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			ps.setString(1, cid);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Book(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(7)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}

	// Hai
	// Get book 10000-50000
	public List<Book> getBookPrice1to5() {
		List<Book> list = new ArrayList<>();

		String query = "SELECT * FROM Book WHERE BPrice > 10000 and BPrice <50000 ";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Book(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(7)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}

	// Hai
	// Getbook 50000-70000
	public List<Book> getBookPrice5to7() {
		List<Book> list = new ArrayList<>();

		String query = "SELECT * FROM Book WHERE BPrice > 50000 and BPrice <70000";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Book(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(7)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}

	// Hai
	// Getbook70000-100000
	public List<Book> getBookPrice7to10() {
		List<Book> list = new ArrayList<>();

		String query = "SELECT * FROM Book WHERE BPrice > 70000 and BPrice <100000 ";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Book(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(7)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}

	// Hai
	// Getbook 100000-200000
	public List<Book> getBookPrice10to20() {
		List<Book> list = new ArrayList<>();

		String query = "SELECT * FROM Book WHERE BPrice > 100000 and BPrice <200000 ";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Book(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(7)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}

	// Hai
	// Getbook 200000-300000
	public List<Book> getBookPrice20to30() {
		List<Book> list = new ArrayList<>();

		String query = "SELECT * FROM Book WHERE BPrice > 200000 and BPrice <300000 ";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Book(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(7)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}

	// Hai
	// Getbook 3000000+
	public List<Book> getBookPrice30to40() {
		List<Book> list = new ArrayList<>();

		String query = "SELECT * FROM Book WHERE BPrice >300000 ";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Book(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(7)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}

	// Hai
	// GET Book By Id
	public Book getBookByBId(String cid) {
		String query = "SELECT * FROM Book WHERE BId = ?";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			ps.setString(1, cid);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Book(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(7));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return null;
	}

	// Hai
	// Get Related Book By CID
	public List<Book> getRelatedBookByCID(String cid) {
		List<Book> list = new ArrayList<>();

		String query = "SELECT TOP 4 * FROM Book WHERE BCate = ?";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			ps.setString(1, cid);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Book(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(7)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}

	// Hai
	// Search Book
	public List<Book> searchBookByName(String txtSearch) {
		List<Book> list = new ArrayList<>();

		String query = "SELECT * FROM Book WHERE BName LIKE ?";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			ps.setString(1, "%" + txtSearch + "%");
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Book(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(7)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}

	// Hai
	// Login
	public User login(String user, String pass) {
		String query = "SELECT * FROM [User] WHERE UTK = ? AND UPass =?";

		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			ps.setString(1, user);
			ps.setString(2, pass);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	// Hai
	// Check exits
	public User checkUserExits(String user) {
		String query = "SELECT * FROM [User] WHERE UTK = ? ";

		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			ps.setString(1, user);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}

	// Hai
	// Sign Up
	public void SignUp(String name, String phone, String email, String user, String pass, String username) {
		String query = "INSERT INTO [User] VALUES(?,?,0,?,?,?,'0','1','0')";
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

	// Hai
	// Get Best Seller
	public List<Book> BestSeller() {
		List<Book> list = new ArrayList<>();

		String query = "SELECT TOP 4 * FROM Book WHERE BestSeller = 1";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Book(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(7)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}

	// Hai
	// Get New Arrivals
	public List<Book> getNewArrivals() {
		List<Book> list = new ArrayList<>();

		String query = "SELECT TOP 4 * FROM Book WHERE NewViral = 1";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Book(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(7)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}

	// Hai
	// Get Hot Sales
	public List<Book> getHotSales() {
		List<Book> list = new ArrayList<>();

		String query = "SELECT TOP 4 * FROM Book WHERE HotSale = 1";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Book(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(7)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}

	// Hai
	// Get Popular
	public List<Book> getPopular() {
		List<Book> list = new ArrayList<>();

		String query = "SELECT TOP 4 * FROM Book WHERE Popular = 1";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Book(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(7)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return list;
	}

	// Hai
	public void DeleteBook(String bid) {
		String query = "DELETE FROM Book WHERE BId =?";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			ps.setString(1, bid);
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	// Insert Book Hai
	public void InsertBook(String name, String image, String price, String PriceSale, int category) {
		String query = "INSERT [dbo].[Book] ([BName], [BPrice], [BPriceSale],"
				+ " [AuID], [BCate], [BImage], [BestSeller], [NewViral], [HotSale], "
				+ "[Popular]) VALUES (?, ?, ?, NULL, ?, ?, 0, 0, 0, 0);";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			ps.setString(1, name);
			ps.setString(5, image);
			ps.setString(2, price);
			ps.setString(3, PriceSale);
			ps.setInt(4, category);
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	// Lay Tong so cuon sach Hai
	public int getTotalBook() {
		String query = "SELECT COUNT(*) from Book";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				return rs.getInt(1);
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return 0;
	}

	// Hai
	public List<Book> PagingBook(int index) {
		List<Book> list = new ArrayList<Book>();
		String query = "SELECT * FROM Book ORDER BY BId OFFSET ? ROWS FETCH NEXT 6 ROWS ONLY";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			ps.setInt(1, (index - 1) * 6);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Book(rs.getInt(1), rs.getString(2), rs.getInt(3), rs.getInt(4), rs.getString(7)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}

	// Hai
	public void InsertFeedback(String name, String email, String price, String content) {
		String query = "INSERT INTO Feedback VALUES (?,?,?)";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, name);
			ps.setString(3, content);
			ps.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
		}
	}

	// Hai
	public List<Blog> getAllBlog() {
		List<Blog> list = new ArrayList<>();
		String query = "SELECT * FROM Blog";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			rs = ps.executeQuery();
			while (rs.next()) {
				list.add(new Blog(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13)));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return list;
	}
	// Hai
	// GET Book By Id
	public Blog getBlogByBId(String Blogid) {
		String query = "SELECT * FROM Blog WHERE BlogID = ?";
		try {
			conn = new SqlServerConnection().getConnection();// Má»Ÿ káº¿t ná»‘i sql Server
			ps = conn.prepareStatement(query);
			ps.setString(1, Blogid);
			rs = ps.executeQuery();
			while (rs.next()) {
				return new Blog(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getString(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9),rs.getString(10),rs.getString(11),rs.getString(12),rs.getString(13));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}

		return null;
	}

	
}
