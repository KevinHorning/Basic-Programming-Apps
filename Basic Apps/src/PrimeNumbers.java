// Prints a list of all the prime numbers up to a given number

import java.util.ArrayList;

public class PrimeNumbers {
	static ArrayList<Integer> list = new ArrayList<Integer>(); 
	static int Start;
	static int End;
	public static ArrayList<Integer> allPrimes(int start, int end){
		Start = start;
		End = end;
		for (int i = start; i <= end; i++){
			if (isPrime(i, i/2)){
				list.add(i);
			}
		}
		return list;
	}
	public static boolean isPrime(int num, int divisor){
		if (num == 1)
			return false;
		else if (divisor <= 1){
			return true;
		}
		else{
			if ((num % divisor) == 0)
				return false;
			else{
				return (isPrime(num, divisor - 1));
			}
		}
	}
	
	public static void main (String[] args){
		long startTime = System.currentTimeMillis();
		allPrimes(1, 5848);
		System.out.print("The prime numbers between " + Start + " and " + End + " are: ");
		for (int i = 0; i < list.size(); i++){
			System.out.print(list.get(i) + " ");
		}
		long endTime = System.currentTimeMillis();
		double totalTime = ((double)(endTime - startTime))/1000;
		System.out.println();
		System.out.println(totalTime);
	}
}
