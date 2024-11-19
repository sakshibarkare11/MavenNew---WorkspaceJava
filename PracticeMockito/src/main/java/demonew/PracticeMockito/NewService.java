package demonew.PracticeMockito;

public class NewService {
	private final UserRepository userRepository;
	
	public NewService( UserRepository userRepository) {
		this.userRepository = userRepository;
		
	}
	
	public String getUsernameById(int id) {
		String user= userRepository.findById(id);
		return user;
	}
}
