package t.Mockito1;

import java.util.List;

public  interface UserRepository {
	 Hotel findByHotelname(String city);
	    List<Hotel> findAll();
	    void save(Hotel hotel);
}
