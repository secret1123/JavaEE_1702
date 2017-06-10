package demo.servlet;

import demo.util.Db;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by AnLu on
 * 2017/6/9 14:21.
 * JavaEE_1702
 */
@WebServlet(urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String mobile = req.getParameter("mobile");
        String password = req.getParameter("password");

        Connection connection = Db.getConnection();
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        try {
            String sql = "SELECT * FROM db_javaee.user WHERE mobile=? AND password=?";
            if (connection != null) {
                statement = connection.prepareStatement(sql);
            } else {
                req.setAttribute("message","error");
                req.getRequestDispatcher("index.jsp").forward(req,resp);
                return;
            }
            statement.setString(1, mobile);
            statement.setString(2, password);
            resultSet = statement.executeQuery();
            if (resultSet.next()) {
                req.getSession().setAttribute("nick", resultSet.getString("nick"));
            resp.sendRedirect("home.jsp");
//                req.getRequestDispatcher("home.jsp")
//                        .forward(req, resp);
            } else {
//        resp.sendRedirect("index.jsp");// redirect 重定向 地址栏有变化
                req.setAttribute("message", "用户名或密码错误");// attribute 属性（string，任意类型对象）
                req.getRequestDispatcher("index.jsp")
                        .forward(req, resp);// forward 转发 地址栏没有变化
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            Db.close(resultSet, statement, connection);
        }
    }
}
