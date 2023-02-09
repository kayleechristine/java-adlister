import java.sql.*;
import com.mysql.cj.jdbc.Driver;
import java.util.ArrayList;
import java.util.List;

public class MySQLAdsDao implements Ads {

    private Connection connection = null;

    public MySQLAdsDao(Config config) {
        try {
            DriverManager.registerDriver(new Driver());
            connection = DriverManager.getConnection(
                    config.getUrl(),
                    config.getUser(),
                    config.getPassword()
            );
        } catch (SQLException e) {
            throw new RuntimeException("Error connecting to the database.", e);
        }
    }

    @Override
    public List<Ad> all() {
        try {
            Statement statement = connection.createStatement();
            ResultSet result = statement.executeQuery("SELECT * FROM ads");
            List<Ad> ads = new ArrayList<>();
            while (result.next()) {
                ads.add(new Ad(
                        result.getLong("id"),
                        result.getLong("user_id"),
                        result.getString("title"),
                        result.getString("description")
                ));
            }
            return ads;
        } catch (SQLException e) {
            throw new RuntimeException("Error populating the ads.", e);
        }
    }

    @Override
    public Long insert(Ad ad) {
        String query = String.format("INSERT INTO ads (user_id, title, description) VALUES (%d, '%s', '%s')", ad.getUserId(), ad.getTitle(), ad.getDescription());
        try {
            Statement statement = connection.createStatement();
            statement.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
            ResultSet result = statement.getGeneratedKeys();
            result.next();
            return result.getLong(1);
        } catch (SQLException e) {
            throw new RuntimeException("Error creating a new ad.", e);
        }
    }

    public static void main(String[] args) {

        MySQLAdsDao test = new MySQLAdsDao(new Config());
        System.out.println(test.all());

        Ad newAd = new Ad(1, "thingy thing", "sort of small-ish and round-ish?");
        test.insert(newAd);
        System.out.println(test.all());

    }

}