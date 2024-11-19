package demonew.PracticeMockito;

//import junit.framework.Test;
//import static org.mockito.Mockito.*;
import static org.junit.jupiter.api.Assertions.*;
//import org.junit.jupiter.api.BeforeEach;
//import org.junit.jupiter.api.Test;
//
//import junit.framework.TestCase;
//import junit.framework.TestSuite;
import static org.mockito.Mockito.when;

import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;

/**
 * Unit test for simple App.
 */
public class UserTest 
{
	private static UserRepository userRepository;
	private static NewService newService;
	
	@BeforeAll
	public static void setup(){
		userRepository= Mockito.mock(UserRepository.class);
		newService= new NewService(userRepository);
	}
	@Test
	void testgetUserNameById() {
		when(userRepository.findById(425002)).thenReturn("Jalgaon");
		when(userRepository.findById(400708)).thenReturn("Navi-Mumbai");
		when(userRepository.findById(411014)).thenReturn("Pune");
		String getName=newService.getUsernameById(400708);
		assertEquals("Navi-Mumbai", getName);
	}
	
    
}
	
	
	
	
	
	
	
//    /**
//     * Create the test case
//     *
//     * @param testName name of the test case
//     */
//    public AppTest( String testName )
//    {
//        super( testName );
//    }
//
//    /**
//     * @return the suite of tests being tested
//     */
//    public static Test suite()
//    {
//        return new TestSuite( AppTest.class );
//    }
//
//    /**
//     * Rigourous Test :-)
//     */
//    public void testApp()
//    {
//        assertTrue( true );
//    }
//}
