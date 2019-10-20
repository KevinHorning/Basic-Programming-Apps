// Gives statistical data on a list of numbers, either auto-generated or user-inputed 

import java.util.ArrayList;
import java.util.Scanner;
public class Statistics {

	public static void main(String[] args) { 
		int minimum = 999; 
		int maximum = 0;  
		int sum  = 0; 
		int average = 0 ; 
		
		ArrayList<Integer> list = new ArrayList<Integer>(); 
		Scanner scan = new Scanner(System.in); 
		System.out.println("Enter Generate to Generate random numbers or enter Scanner to use Scanner");
		String generateOrScan = scan.next();  
		System.out.println("Enter the number of numbers"); 
		int numberOfNumbers = scan.nextInt();
		
		if (generateOrScan.equals("Generate")) {  
			for (int i = 0; i < numberOfNumbers; i++){ 
				list.add(generateNumber()); 
			} 

			for (int i = 0; i < list.size(); i ++){ 
				System.out.print(list.get(i) + " ");  
				if (list.get(i)< minimum) 
					minimum = list.get(i);  
				if (list.get(i)> maximum) 
					maximum = list.get(i);   
				sum = sum + list.get(i); 
			} 
			average = sum /numberOfNumbers; 
			System.out.println();
			System.out.println("minimum = "+ minimum); 
			System.out.println("maximum = " + maximum); 
			System.out.println("sum = " + sum); 
			System.out.println("average = " + average);  
		} 
		
		if (generateOrScan.equals("Scanner")) { 	
			System.out.println("Enter numbers here "); 
			for ( int i =0; i < numberOfNumbers && scan.hasNextInt(); i ++){   
				int s = (scan.nextInt());
				list.add(s); 
			}	
			
			for (int i = 0; i < list.size(); i ++){ 
				System.out.print(list.get(i) + " ");  
				if (list.get(i)< minimum) 
					minimum = list.get(i);  
				if (list.get(i)> maximum) 
					maximum = list.get(i);   
				sum = sum + list.get(i); 
			} 
			average = sum /numberOfNumbers; 
			System.out.println();
			System.out.println("minimum = "+ minimum); 
			System.out.println("maximum = " + maximum); 
			System.out.println("sum = " + sum); 
			System.out.println("average = " + average);   
		}
	}
	public static int generateNumber(){ 
		return (int) (Math.random()*500); 
	}
}
