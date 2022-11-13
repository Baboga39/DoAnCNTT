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
		String name ="Oxf IDIOMS Dict Learners of Eng 2e";
		String image = "https://www.vinabook.com/images/thumbnails/product/240x/188787_p64922m51cwfregocl.jpg";
		String price = "115000";
		String PriceSale = "100000";
		int getCate = 2;
		int getauthor = 2;
		String id ="63";
		dao.EditBook(name, image, price, PriceSale, getCate, getauthor, id);;
	}	
	}
