package logic;

import java.sql.*;

/**
 * Created by Yevhen on 09.09.2015.
 */
public class Main {
    public static void main(String[] args) {
        new Main().run();
    }

    private void run() {
        try {
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/demo1", "eugeny", "123");
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM phone");
            while (resultSet.next()) {
                String num = resultSet.getString("num");
                int person_id = resultSet.getInt("person_id");
                System.out.println(num + " " + person_id);
            }
            System.out.println("=====================");
//
//            PreparedStatement preparedStatement = connection.prepareStatement("INSERT INTO phone (num, comment, person_id) VALUES (?, ?, ?)");
//            preparedStatement.setString(1, "555555");
//            preparedStatement.setString(2, "home");
//            preparedStatement.setInt(3, 2);
//            preparedStatement.executeUpdate();

            ResultSet resultSet1 = statement.executeQuery("SELECT * FROM phone,person WHERE person_id = person.id");
            while (resultSet1.next()) {
                String num = resultSet1.getString("num");
                String fio = resultSet1.getString("fio");
                System.out.println(fio + " " + num);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
