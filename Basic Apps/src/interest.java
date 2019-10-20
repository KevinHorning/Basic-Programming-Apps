// Interest Calculator App
// Asks user for input amount of money and monthly interest rate
// Prints the total after a certain number of months

import java.util.Scanner;    
public class interest {   
	// variables used in the program 
			static double monthone; 
			static double monthtwo;
			static double monththree;  
			static double monthfour;
			static double monthfive;
			static double x;
			static double annualinterestrate;
			static double monthlyinterestrate; 
			static double endingbalance;
			
			
			public static void main(String[] args) {
				Scanner input = new Scanner(System.in);
				for (int i = 0; i < 3; i++)
				{
				// TODO Auto-generated method stub
					System.out.println();
				 
				double monthlyDeposits;
				double initialAmount;
				System.out.println("Enter your initial amount");
				initialAmount = input.nextDouble();
				System.out.println("Enter your monthly savings amount"); 
				monthlyDeposits = input.nextDouble(); //Assign savings to input
				System.out.println("Enter your monthly interest rate %");
				Double rateInput = input.nextDouble();
				Double monthlyInterestRate = 1 + (rateInput / 100); 

				//Create formulas used in this program 
				monthlyinterestrate = (annualinterestrate / 100)/12;//monthly interest rate formula 
				x = (1 + monthlyinterestrate);// formula used on below equations 
				monthone = (monthlyDeposits + initialAmount) * monthlyInterestRate;
				monthtwo = (monthlyDeposits + monthone) * monthlyInterestRate;
				monththree = (monthlyDeposits + monthtwo) * monthlyInterestRate;
				monthfour = (monthlyDeposits + monththree) * monthlyInterestRate;
				monthfive = (monthlyDeposits + monthfour) * monthlyInterestRate;
				endingbalance = (monthlyDeposits + monthfive) * monthlyInterestRate;  
			
				System.out.println("Your Account Balance Is after 6 months will be " + endingbalance); 
				//input.close(); 
				}
			input.close();
			}//main

		}//class