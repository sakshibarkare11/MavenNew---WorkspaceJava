package t.Mockito1;

public class Hotel {
	private String city;
	private String hotelName;
	private String hotelType;
	private int citypincode;

	public Hotel(String city, String hotelName,String hotelType,int citypincode ) {
		this.city= city;
		this.hotelName= hotelName;
		this.hotelType= hotelType;
		this.citypincode= citypincode;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getHotelName() {
		return hotelName;
	}

	public void setHotelName(String hotelName) {
		this.hotelName = hotelName;
	}

	public String getHotelType() {
		return hotelType;
	}

	public void setHotelType(String hotelType) {
		this.hotelType = hotelType;
	}

	public int getCitypincode() {
		return citypincode;
	}

	public void setCitypincode(int citypincode) {
		this.citypincode = citypincode;
	}
	
	public String displayHotelDetails() {
		return "city: " +city+ "hotelName: "+hotelName+ "hotelType: "+hotelType+ "citypincode: "+ citypincode;
	}
	
	@Override
	public boolean equals(Object Ob) {
		if (this == Ob) {
			return true;
		}
		if(!(Ob instanceof Hotel)) {
			return false;
		}
		Hotel other = (Hotel) Ob;
		return city.equals(other.city);
		}
	
		
	@Override
	public int hashCode() {
		return city.hashCode();
	}
	
	
}
