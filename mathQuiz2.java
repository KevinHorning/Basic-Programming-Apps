// Creates a basic 6 question math quiz for users

import javax.swing.JOptionPane;

public class mathQuiz2 {
	public static void main(String[] args) { 
		JOptionPane.showMessageDialog(null, "Welcome to the Arithmetic Quiz");
		JOptionPane.showMessageDialog(null, "6 questions! First 5 you choose and we choose the last one");
		for (int i = 1; i < 7; i++){
			String Question1Choice = JOptionPane.showInputDialog("What operation for question" + i + " ? (1 for addition, 2 for subtraction, 3 for multipley, 4 for division, 5 for expontiation)");
			if (Question1Choice.equals("1")){
				double number1 = RandomNumber();
				double number2 = RandomNumber();
				String answer1 = JOptionPane.showInputDialog(null, "What is answer to " + number1 + " + " + number2, "Answer here");
				double num = (number1 + number2);
				num = Math.round(num * 100);
				num /= 100;
				if(num == Double.parseDouble(answer1)){ 
					JOptionPane.showConfirmDialog(null, "CORRREECCTTT", "Result", JOptionPane.YES_NO_OPTION);
				}
				else{
					JOptionPane.showMessageDialog(null, "WRONG,  Correct Answer: " + num,"Result", JOptionPane.YES_NO_OPTION);
				}
			}
			if (Question1Choice.equals("2")){
				double number1 = RandomNumber();
				double number2 = RandomNumber();
				String answer1 = JOptionPane.showInputDialog(null, "What is answer to " + number1 + " - " + number2, "Answer here");
				double num = (number1- number2);
				num = Math.round(num * 100);
				num /= 100;
				if(num == Double.parseDouble(answer1)){ 
					JOptionPane.showConfirmDialog(null, "CORRREECCTTT", "Result", JOptionPane.YES_NO_OPTION);
				}
				else{
					JOptionPane.showMessageDialog(null, "WRONG, Correct Answer: " + num, "Result", JOptionPane.YES_NO_OPTION);
				}
			}
			if (Question1Choice.equals("3")){
				double number1 = RandomNumber();
				double number2 = RandomNumber();
				String answer1 = JOptionPane.showInputDialog(null, "What is answer to " + number1 + " * " + number2, "Answer here");
				double num = (number1 * number2);
				num = Math.round(num * 100);
				num /= 100;
				if(num == Double.parseDouble(answer1)){ 
					JOptionPane.showConfirmDialog(null, "CORRREECCTTT", "Result", JOptionPane.YES_NO_OPTION);
				}
				else{
					JOptionPane.showMessageDialog(null, "WRONG, Correct Answer: " + num, "Result", JOptionPane.YES_NO_OPTION);
				}
			}
			if (Question1Choice.equals("4")){
				double number1 = RandomNumber();
				double number2 = RandomNumber();
				String answer1 = JOptionPane.showInputDialog(null, "What is answer to " + number1 + " / " + number2 + "round to 2 decimal places", "Answer here");
				double num = (number1/number2);
				num = Math.round(num * 100);
				num /= 100;
				if(num == Double.parseDouble(answer1)){ 
					JOptionPane.showConfirmDialog(null, "CORRREECCTTT", "Result", JOptionPane.YES_NO_OPTION);
				}
				else{
				JOptionPane.showMessageDialog(null, "WRONG, Correct Answer: " + num, "Result", JOptionPane.YES_NO_OPTION); 
				}
			}
			if (Question1Choice.equals("5")){
					double number1 = RandomNumber();
				
					String answer1 = JOptionPane.showInputDialog(null, "What is answer to 2 to the power of " + number1 + "round to two decimal places", "Answer here");
					double num = Math.pow(2,number1);
					num = Math.round(num * 100);
					num /= 100;
					if(num == Double.parseDouble(answer1)){ 
						JOptionPane.showConfirmDialog(null, "CORRREECCTTT", "Result", JOptionPane.YES_NO_OPTION);
					}
					else{
					JOptionPane.showMessageDialog(null, "WRONG, Correct Answer: " + num, "Result", JOptionPane.YES_NO_OPTION); 
					}
			}
		}
	}
	public static double RandomNumber(){ 
		double number = (Math.round(Math.random()*1000));
		return number/100; 
	}
}    

/* Pseudo-Code  
 * Create package and import JavaOptionPane;  
 * Create class and public static main method 
 * Use JOptionPane Message Dialog to Welcome user and give instuctions for the quiz 
 * Use for loop to run all 6 questions  
 * use if and else statements for correct and incorrect answers 
*/
