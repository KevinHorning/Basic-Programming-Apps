// try me!!!

import javax.swing.JOptionPane;

public class mathQuiz {
	public static void main(String[] args) {
		JOptionPane.showMessageDialog(null, "Welcome to the Arithmetic Quiz");
		JOptionPane.showMessageDialog(null, "5 questions! First 4 you choose and we choose the last one");
		for (int i = 1; i < 6; i++){
			String Question1Choice = JOptionPane.showInputDialog("What operation for question" + i + " ? (1 for addition 2 for subtraction, 3 for multipley, 4 for division)");
			if (Question1Choice.equals("1")){
				int number1 = RandomNumber();
				int number2 = RandomNumber();
				String answer1 = JOptionPane.showInputDialog(null, "What is answer to " + number1 + " + " + number2, "Answer here");
				if(number1 + number2 == Integer.parseInt(answer1)){
					JOptionPane.showConfirmDialog(null, "CORRREECCTTT", "Result", JOptionPane.YES_NO_OPTION);
				}
				else{
					JOptionPane.showMessageDialog(null, "WRONG", "Result", JOptionPane.YES_NO_OPTION);
				}
			}
			if (Question1Choice.equals("2")){
				int number1 = RandomNumber();
				int number2 = RandomNumber();
				String answer1 = JOptionPane.showInputDialog(null, "What is answer to " + number1 + " - " + number2, "Answer here");
				if(number1 - number2 == Integer.parseInt(answer1)){
					JOptionPane.showConfirmDialog(null, "CORRREECCTTT", "Result", JOptionPane.YES_NO_OPTION);
				}
				else{
					JOptionPane.showMessageDialog(null, "WRONG", "Result", JOptionPane.YES_NO_OPTION);
				}
			}
			if (Question1Choice.equals("3")){
				int number1 = RandomNumber();
				int number2 = RandomNumber();
				String answer1 = JOptionPane.showInputDialog(null, "What is answer to " + number1 + " * " + number2, "Answer here");
				if(number1 * number2 == Integer.parseInt(answer1)){
					JOptionPane.showConfirmDialog(null, "CORRREECCTTT", "Result", JOptionPane.YES_NO_OPTION);
				}
				else{
					JOptionPane.showMessageDialog(null, "WRONG", "Result", JOptionPane.YES_NO_OPTION);
				}
			}
			if (Question1Choice.equals("4")){
				int number1 = RandomNumber();
				int number2 = RandomNumber();
				String answer1 = JOptionPane.showInputDialog(null, "What is answer to " + number1 + " / " + number2 + "enter only integers", "Answer here");
				if(number1 / number2 == Integer.parseInt(answer1)){
					JOptionPane.showConfirmDialog(null, "CORRREECCTTT", "Result", JOptionPane.YES_NO_OPTION);
				}
				else{
				JOptionPane.showMessageDialog(null, "WRONG", "Result", JOptionPane.YES_NO_OPTION);
				}
			}
		}
	}
	
	public static int RandomNumber(){
		return (int) (Math.random() * 10);
	}
}    

/* Pseudo-Code  
 * Create package and import JavaOptionPane;  
 * Create class and public static main method 
 * Use JOptionPane Message Dialog to Welcome user and give instuctions for the quiz 
 * Use for loop to run all 5 questions 
 * We use 
 */ 
