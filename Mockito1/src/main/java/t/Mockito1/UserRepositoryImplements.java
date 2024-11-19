package t.Mockito1;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserRepositoryImplements 
	 implements UserRepository {
		    private DatabaseConnection databaseConnection;

		    public void UserRepositoryImpl(DatabaseConnection databaseConnection) {
		        this.databaseConnection = databaseConnection;
		    }

		    public Hotel findByHotelname(String city) {
		        String query = "SELECT * FROM hotels WHERE city = ?";
		        try (Connection connection = databaseConnection.getConnection();
		             PreparedStatement statement = connection.prepareStatement(query)) {
		            statement.setString(1, city);
		            ResultSet resultSet = statement.executeQuery();
		            if (resultSet.next()) {
		                return new Hotel(
		                        resultSet.getString("city"),
		                        resultSet.getString("hotel_name"),
		                        resultSet.getString("hotel_type"),
		                        resultSet.getInt("city_pincode")
		                );
		            }
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }
		        return null;
		    }

		    @Override
		    public List<Hotel> findAll() {
		        List<Hotel> hotels = new ArrayList<>();
		        String query = "SELECT * FROM hotels";
		        try (Connection connection = databaseConnection.getConnection();
		             Statement statement = connection.createStatement()) {
		            ResultSet resultSet = statement.executeQuery(query);
		            while (resultSet.next()) {
		                hotels.add(new Hotel(
		                        resultSet.getString("city"),
		                        resultSet.getString("hotel_name"),
		                        resultSet.getString("hotel_type"),
		                        resultSet.getInt("city_pincode")
		                ));
		            }
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }
		        return hotels;
		    }

		    @Override
		    public void save(Hotel hotel) {
		        String query = "INSERT INTO hotels (city, hotel_name, hotel_type, city_pincode) VALUES (?, ?, ?, ?)";
		        try (Connection connection = databaseConnection.getConnection();
		             PreparedStatement statement = connection.prepareStatement(query)) {
		            statement.setString(1, hotel.getCity());
		            statement.setString(2, hotel.getHotelName());
		            statement.setString(3, hotel.getHotelType());
		            statement.setInt(4, hotel.getCitypincode());
		            statement.executeUpdate();
		        } catch (SQLException e) {
		            e.printStackTrace();
		        }
		    }
}
