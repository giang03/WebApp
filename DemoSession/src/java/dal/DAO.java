package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Admin;

/**
 *
 * @author ADMIN
 */
public class DAO extends DBContext{
    public Admin check(String username, String password){
        String sql = "select * from admin where Username = ? and Password = ?";
        try{
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if(rs.next()){
                Admin ad = new Admin(rs.getString("Username"), rs.getString("Password"),rs.getInt("role"));
                return ad;
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return null;
    }
}
