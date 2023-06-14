/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import dal.UserDAO;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.User;
/**
 *
 * @author DELL
 */
public class test {
    public static void main(String[] args) throws SQLException {
        UserDAO dao = new UserDAO();
//        System.out.println(dao.findUser("nguyen@gmail.com"));
        
        //dao.register("nguyen", "12345","123","2017-09-11", true, "0856820345", "nguyendiephoang@gmail.com");
        List<User> list = dao.getAllUser();
        for (User c : list) {
            System.out.println(c);
        }
    }
}
