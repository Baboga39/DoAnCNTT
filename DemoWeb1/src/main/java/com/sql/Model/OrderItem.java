package com.sql.Model;

public class OrderItem {
	private int bookId;
	private Book book;
	private int quantity;
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public OrderItem(int bookId, Book book, int quantity) {
		super();
		this.bookId = bookId;
		this.book = book;
		this.quantity = quantity;
	}
	@Override
	public String toString() {
		return "OrderItem [bookId=" + bookId + ", book=" + book + ", quantity=" + quantity + "]";
	}
}
