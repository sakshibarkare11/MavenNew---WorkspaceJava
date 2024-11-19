package t.Mockito1;

import java.util.ArrayList;
import java.util.List;

public class HotelTesting {
	private List<Hotel> hotels = new ArrayList<>();

    public Hotel findByHotelname(String city) {
        for (Hotel hotel : hotels) {
            if (hotel.getCity().equals(city)) {
                return hotel;
            }
        }
        return null; // Return null if no hotel is found
    }

    public List<Hotel> findAll() {
        return new ArrayList<>(hotels); // Return a copy of the list
    }

    public void save(Hotel hotel) {
        hotels.add(hotel); // Save the hotel to the list
    }
}

