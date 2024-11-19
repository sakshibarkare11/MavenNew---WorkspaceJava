package demo.CalculatorProject;

import java.util.Scanner;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
    	       Scanner sc = new Scanner(System.in);
    	       
    	       Calculator cal = new Calculator();
    	       System.out.println("Enter the first number");
    	       int a = sc.nextInt();
    	       
    	       System.out.println("Enter the second number");
    	       int b = sc.nextInt();
    	       
    	       System.out.println("Enter the operation you have to perform"
    	       		+ "1.Addition"
    	    		+ "2.Substraction"
    	       		+"3.Multiplication"
    	    		+"4.Division");
    	      
    	       int choise = sc.nextInt();
    	       if(choise<5) {
    	    	   switch(choise) {
    	    	   case 1: System.out.println("Addition of a and b is:" + cal.add(a, b));
    	    	   			break;
    	    		   
    	    	   case 2:System.out.println("Substraction is:" + cal.sub(a, b));
    	    	   			break;
    	    	   			
    	    	   case 3:System.out.println("Multiplication is:" + cal.mul(a, b));
    	    	   			break;
    	    	   			
    	    	   case 4:System.out.println("Division is:" + cal.div(a, b));
    	    	   			break;
    	    	   			
    	    	   default:
    	    		   System.out.println("wrong choise");
    	    		   
    	    	   
    	    	   }
    	       }
    	       else {
    	    	   System.out.println("Invalid Choise");
    	       }
    	       sc.close();
    	    
    }
}
