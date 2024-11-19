package demo.FirstProject;

import java.util.Scanner;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
    	Scanner sc= new Scanner(System.in);
    	
    	Calculator n= new Calculator();

        System.out.println("Enter a first number : ");
        int num1=sc.nextInt();        
        System.out.println("Enter a second number : ");
        int num2=sc.nextInt();        

        System.out.println("ENTER THE OPERATION YOU WANT TO PERFORM--->\n"+"Addition\n"+"Substraction\n"+"Multiplication\n"+"Division\n");
        
        
        int choice=sc.nextInt();
			switch (choice) {
			case 1:
				System.out.println("Addition is-->");
				n.Addition(num2, num2);
				break;
				
			case 2:
				System.out.println("Substraction is-->");
				n.Substraction(num1, num2);
				break;
				
			case 3:
				System.out.println("Multiplication is-->");
				n.Multiplication(num1, num2);
				break;
				
			case 4:
				System.out.println("Division is-->");
				n.Division(num1, num2);
				break;
				
			default:
				System.out.println("Invalid choice!!");
				
			
		}
    }
}
