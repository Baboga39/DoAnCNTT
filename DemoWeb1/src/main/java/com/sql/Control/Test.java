package com.sql.Control;
//Hai
import java.util.List;

import com.sql.Dao.DAO;
import com.sql.Model.Author;
import com.sql.Model.Blog;
import com.sql.Model.Book;

public class Test {

	public static void main(String[] args) {
		DAO dao = new DAO();
		List<Author> list = dao.getAllAuthor();
		for(Author a : list)
		{
			System.out.println(a.getAuId());
		}
	}
	
		
	}
