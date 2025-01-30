/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package rentalCar;

/**
 *
 * @author nehaazad
 */
public interface Provider {
    String DRIVER_CLASS="com.mysql.cj.jdbc.Driver";    // MySQL driver class name
    String CONNECTION_URL="jdbc:mysql://localhost:3306/rentacar?useSSL=false";  // MySQL connection URL
    String USERNAME="root";     // MySQL username
    String PASSWORD="root";     // MySQL password    
}
