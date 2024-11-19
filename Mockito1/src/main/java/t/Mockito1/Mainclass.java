package t.Mockito1;

import java.util.List;

public class Mainclass {

	public static void main(String[] args) {
        // Create a database connection
        DatabaseConnection dbConnection = new DatabaseConnection(
            "jdbc:mysql://localhost:3306/your_db_name", // Replace with your database URL
            "your_username", // Replace with your database username
            "your_password"  // Replace with your database password
        );

        // Create a UserRepository implementation
        UserRepository userRepository = new Use(dbConnection);

        // Create an instance of App
        App app = new App(userRepository);

        // Example: Add a new hotel
        Hotel newHotel = new Hotel("Los Angeles", "Skyline Hotel", "Luxury", 90001);
        app.addHotel(newHotel);
        System.out.println("Hotel added: " + newHotel.displayHotelDetails());

        // Example: Get hotel by location
        Hotel fetchedHotel = app.getHotelByLocation("Los Angeles");
        if (fetchedHotel != null) {
            System.out.println("Fetched hotel: " + fetchedHotel.displayHotelDetails());
        } else {
            System.out.println("No hotel found in Los Angeles.");
        }

        // Example: Get all hotels
        List<Hotel> allHotels = app.getAllHotels();
        System.out.println("All hotels:");
        for (Hotel hotel : allHotels) {
            System.out.println(hotel.displayHotelDetails());
        }
    }
}
