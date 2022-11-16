package com.sql.Control;
//Hai
import java.util.List;

import com.sql.Dao.DAO;
import com.sql.Model.Coment;

public class Test {

	public static void main(String[] args) {
		DAO dao = new DAO();
		List<Coment> list = dao.GetCmtbyID(1);
		for(Coment a : list)
		{
			System.out.println(a);
		}
	}	
	}
