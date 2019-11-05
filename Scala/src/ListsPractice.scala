object ListsPractice {
  val x = 1 :: 2 :: 3 :: 4 :: Nil

  def main(args: Array[String]) {   
    println("value of x: ")
    println(x)
  }
  
  // given an upper and lower boundm returns the list of primes within the bounds
  def listOfPrimes(lower: Int, upper: Int): List[Int] = {  
    def isPrime (num: Int, numHalved: Int): Boolean = {
      if (num < 2) false
      else if (numHalved == 1) true
      else if (num % numHalved == 0) false
      else isPrime(num, numHalved - 1)
    }
    
    if (lower > upper) List()
    else if (isPrime(lower, lower/2)) lower :: listOfPrimes(lower + 1, upper)
    else listOfPrimes(lower + 1, upper)    
  }
  
  // given a list, doubles each element in the list with foldLeft()
  def duplicate(list: List[Int]): List[Int] = {
    val reversed =  (list foldLeft List[Int] ())((list, x) => x :: list)
    var doubled = (reversed foldLeft List[Int] ())((reversed, x) => x :: x :: reversed)
    doubled
  }
  
  // doubles a list with foldRight()
  def duplicate2(list: List[Int]): List[Int] = 
    (list foldRight List[Int] ())((x, list) => x :: x :: list)    

  // given an index and a list, removes the element at the index
  def removeAt(index: Int, list: List[Int]): (List[Int], Int) = list match{
    case Nil => (Nil, index)
    case x :: xs => if (x == index + 1) (list.tail, index) else {
        var tuple = removeAt(index, list.tail)
        (x :: tuple._1, index)
      }
  }
  
  // counts the number of evens in a given list
  def countEvens(list: List[Int]): Int = {
    list.foldLeft(0)((count, x) => if (x % 2 == 0) count + 1 else count)
  }
  
  // removes every other element in a list
  def removeAlternating(list: List[String]): List[String] = list match{
    case Nil => Nil
    case x :: y :: list => x :: removeAlternating(list)
    case x :: list => x :: list
  }
  
  // returns boolean for if a given list is a palindrome or not
  def palindrome(list: List[Int]): Boolean = {
    if (list.length == 0 || list.length == 1) true 
    else{
      if (list.head == list.last) palindrome(list.tail.init)
      else false
    }
  }
  
  // given 2 lists, creates a new list from merging the 2, adding 1 from both at a time
  def alternate(list1: List[Int], list2: List[Int]): List[Int] = {
    if (list1.length == 0 && list2.length == 0) Nil
    else if (list1.length == 0) list2
    else if (list2.length == 0) list1
    else list1.head :: list2.head :: alternate(list1.tail, list2.tail)
  }
  
  // returns a list of the numbers in a range defined by given bounds
  def fromTo(from: Int, to: Int): List[Int] = {
    if (from < to) from :: fromTo(from + 1, to)
    else Nil
  } 
}

