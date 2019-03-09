package servlet;

import entity.*;
import dao.commentDao;
import util.Json;
import com.google.gson.Gson;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;


/**
 * @author wangran
 */
@WebServlet(name = "testServlet",urlPatterns = "/servlet/testServlet")
public class testServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("双方的出现");
        response.setContentType ( "text/json;charset=UTF-8" );
        response.setCharacterEncoding ( "UTF-8" );
        response.setContentType ( "json" );
        String comJson = Json.getJson(request);
        Gson gs = new Gson();
        Comment co = gs.fromJson(comJson, Comment.class);
        commentDao cd =new commentDao();
        String u_id = co.getUId()+"";
        String userName = co.getUserName()+"";
        String id = co.getId()+"";
        String comment = co.getComment()+"";
        try {
            cd.addCom(u_id,userName,id,comment);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doPost(request, response);
    }
}
