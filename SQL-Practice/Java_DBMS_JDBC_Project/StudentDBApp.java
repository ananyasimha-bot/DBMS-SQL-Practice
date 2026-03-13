import java.sql.*;
public class StudentDBApp {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/StudentDB";
        String user = "root";
        String password = "password";
        try {
            Connection con = DriverManager.getConnection(url, user, password);
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM Students");
            while (rs.next()) {
                System.out.println(
                        rs.getInt("roll_no") + " " +
                        rs.getString("name") + " " +
                        rs.getString("department")
                );
            }
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
