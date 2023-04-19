package controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import gdu.mskim.MskimRequestMapping;
import gdu.mskim.RequestMapping;
import model.Book;
import model.BookDao;
import model.Member;
import model.MemberDao;

@WebServlet(urlPatterns= {"/book/*"},
initParams= {@WebInitParam(name="view",value="/view/")})
public class BookController extends MskimRequestMapping{
	BookDao dao = new BookDao();
	@RequestMapping("test1From")
	public String testForm(HttpServletRequest request,HttpServletResponse response) {
		return "book/testForm";
	}
	
	@RequestMapping("test1")
	public String test1(HttpServletRequest request,HttpServletResponse response) {

	    try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	    Book boook = new Book();
	    boook.setWriter(request.getParameter("writer"));
	    boook.setTitle(request.getParameter("title"));
	    boook.setContent(request.getParameter("content"));
	    BookDao dao = new BookDao();
	    if(dao.insert(boook)) {
	    	Book dbBook = dao.selectOne(boook.getWriter());
	    	request.setAttribute("book", dbBook);
	    	return "book/test1";
	    } else {
	    	request.setAttribute("msg","방명록 등록시 오류 발생");
	    	request.setAttribute("url","testForm");
	    	return "alert";
	    }
	}
	@RequestMapping("testlist")
	public String list(HttpServletRequest request,HttpServletResponse response) {
		List<Book> list = dao.list();
			request.setAttribute("list",list);
		return "book/testlist"; // /view/book.testlist.jsp 뷰로 설정
	}
}
