package com.sql.Control;
import java.io.FileOutputStream;
//Hai
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.sql.Dao.DAO;
import com.sql.Model.Book;
import com.sql.Model.User;

public class Test {

	public static void main(String[] args) {
		DAO dao = new DAO();
		User user = new User(5, "1", "244444", "3", "4", "5", "6", "7", "8","9");
		String username = "1";
		String passsword ="1";
		String email = "1";
		String image = "1";
		dao.UpdateUser(user, username, passsword, image, email);
		System.out.println(user.getuPhone());
	}	
	}
