package t.Mockito1;

////import junit.framework.Test;
//import junit.framework.TestCase;
//import junit.framework.TestSuite;
//package t.Mockito1;

import static org.mockito.Mockito.*;
import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.List;

public class AppTest {
    private UserRepository userRepository;
    private App app;

    @BeforeEach
    public void setUp() {
        userRepository = mock(UserRepository.class); // Create a mock UserRepository
        app = new App(userRepository); // Inject the mock into App
    }

    @Test
    public void testGetHotelByLocation() {
        Hotel hotel = new Hotel("New York", "Grand Hotel", "Luxury", 10001);
        
        
        when(userRepository.findByHotelname("New York")).thenReturn(hotel);
        
        // method call
        Hotel result = app.getHotelByLocation("New York");
        
        // result and interaction
        assertEquals(hotel, result);
        verify(userRepository).findByHotelname("New York");
    }


    @Test
    public void testAddHotel() {
        Hotel hotel = new Hotel("Miami", "Beach Resort", "Luxury", 33101);
        
        // method call
        app.addHotel(hotel);
        
        // Verify that the save method was called
        verify(userRepository).save(hotel);
    }
}













































/**
 * Unit test for simple App.
 *//*
public class AppTest 
    extends TestCase
{
    *//**
     * Create the test case
     *
     * @param testName name of the test case
     *//*
    public AppTest( String testName )
    {
        super( testName );
    }

    *//**
     * @return the suite of tests being tested
     *//*
    public static Test suite()
    {
        return new TestSuite( AppTest.class );
    }

    *//**
     * Rigourous Test :-)
     *//*
    public void testApp()
    {
        assertTrue( true );
    }*/
//}
