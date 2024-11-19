package demo.CalculatorProject;

//import junit.framework.Test;
//import junit.framework.TestCase;
//import junit.framework.TestSuite;
//
///**
// * Unit test for simple App.
// */



import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;
 
public class AppTest {
 
    private final Calculator calculator = new Calculator();
 
    @Test
    public void testAdd() {
        assertEquals(5, calculator.add(2, 3)); 
        assertEquals(2, calculator.add(1, 1));
        assertEquals(23, calculator.add(2, 21));

    }
    @Test
    public void testSub() {
        assertEquals(1, calculator.sub(3, 2));
        assertEquals(-1, calculator.sub(2, 3));
        
        assertTrue(calculator.sub(3, 2) > 0);
    }
 
    @Test
    public void testMul() {
        assertEquals(6, calculator.mul(2,  3));
        assertEquals(0, calculator.mul(2, 0));
        
        assertFalse(calculator.mul(0, 5) > 0); 
        // this says multiplying by zero doesn't get a positive result

    }
 
    @Test
    public void testDiv() {
        assertEquals(2.0, calculator.div(4, 2));
 
    }
 
    @Test
    public void testDivByZero() {
        Exception exception = assertThrows(ArithmeticException.class, () -> {
            calculator.div(1, 0);
            fail("It is an divide by zero error");
        });
        assertEquals("/ by zero", exception.getMessage());
    }
 
    @Test
    public void testApp() {
        assertTrue(true);
    }
}







//public class AppTest 
//    extends TestCase
//{
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
