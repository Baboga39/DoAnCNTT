package com.sql.Control;
//Hai
import java.util.List;

import com.sql.Dao.DAO;
import com.sql.Model.Coment;

public class Test {

	public static void main(String[] args) {
		DAO dao = new DAO();
		String pass = dao.getPass("ngochai06122002@gmail.com");
		System.out.println(pass);
	}	
	}
