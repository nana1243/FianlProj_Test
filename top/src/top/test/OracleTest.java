package top.test;
import java.sql.DriverManager;
import java.sql.SQLException;
public class OracleTest {
	

		public static void main(String[] args) {
			String driver = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@15.165.163.102:1521:XE";

			String user = "TOP";
			String password = "111111";
			try {
				Class.forName(driver);
				System.out.println("jdbc driver �ε� ����");
				DriverManager.getConnection(url, user, password);
				System.out.println("����Ŭ ���� ����");
			} catch (ClassNotFoundException e) {
				System.out.println("jdbc driver �ε� ����");
			} catch (SQLException e) {
				System.out.println("����Ŭ ���� ����");
			}
		}
	}


