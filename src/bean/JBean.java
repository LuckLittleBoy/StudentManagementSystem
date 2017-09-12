package bean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class JBean
{
	private String driverStr = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	private String conStr = "jdbc:sqlserver://localhost:1433; DatabaseName=DCS_User";
	private String dbusername = "sa";
	private String dbpassword = "meng19950628";
	private Connection conn = null;
	private Statement stmt = null;

	public JBean()
	{
		try
		{
			Class.forName(driverStr);
			conn = DriverManager.getConnection(conStr, dbusername, dbpassword);
			stmt=conn.createStatement();
			
		}
		catch (Exception e)
		{
			System.out.println(e);
		}
	}

	public int executeUpdate(String s)
	{
		int result = 0;
		try
		{
			result = stmt.executeUpdate(s);
		}
		catch (Exception e)
		{
			System.out.println("Ö´ÐÐ¸üÐÂ´íÎó£¡");
		}
		return result;
	}

	public ResultSet executeQuery(String s)
	{
		ResultSet rs = null;
		try
		{
			rs = stmt.executeQuery(s);
		} 
		catch (Exception e)
		{
			System.out.println(e);
		}
		return rs;
	}

	public void close()
	{
		try
		{
			stmt.close();
			conn.close();
		}
		catch (Exception e)
		{
		}
	}
}

