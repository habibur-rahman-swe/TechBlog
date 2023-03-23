package com.tech.blog.dao;

import com.tech.blog.entities.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDao {
    private Connection con;
    
    public UserDao(Connection con) {
        this.con = con;
    }
    
    // method to insert user to data base
    
    public boolean saveUser(User user) {
        boolean f = false;
        try {
            // user --> database
            
            String query = "insert into users("
                    + "user_name, user_email, user_password, user_gender, about_user"
                    + ") values(?, ?, ?, ?, ?)";
            
            PreparedStatement pstmt = this.con.prepareStatement(query);
            
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getGender());
            pstmt.setString(5, user.getAbout());
            
            pstmt.executeUpdate();
            
            f = true;
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
    
    // get user by useremail and userpassword
    
    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;
        try {
            String query = "select * from users where user_email = ? and user_password = ?";
            PreparedStatement pstmt = con.prepareStatement(query);
            
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            
            ResultSet set = pstmt.executeQuery();
            
            if (set.next()) {
                user = new User();
                
//                data from db
                user.setName(set.getString("user_name"));
                user.setEmail(set.getString("user_email"));
                user.setPassword(set.getString("user_password"));
                user.setGender(set.getString("user_gender"));
                user.setAbout(set.getString("about_user"));
                user.setDateTime(set.getTimestamp("date"));
                user.setProfile(set.getString("user_profile"));
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
}
