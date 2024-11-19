package t.Mockito1;

import java.util.List;

/**
 * Hello world!
 *
 */
public class App 
{
	private UserRepository userRepository;
	
	public App(UserRepository userRepository) {
		this.userRepository = userRepository;
	}
	public Hotel getHotelByLocation(String city) {
		return userRepository.findByHotelname(city);
	}
	
	public List<Hotel> getAllHotels(){
		return userRepository.findAll();
	}
	public void addHotel(Hotel hotel) {
		userRepository.save(hotel);
	}
	
}
