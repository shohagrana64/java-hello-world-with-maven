package hello;

import org.joda.time.LocalTime;

public class HelloWorld {
    public static void main(String[] args) {
      LocalTime currentTime = new LocalTime();
		  System.out.println("The current local time is: " + currentTime);
	          System.out.println("My name is Shohag Rana and this is my test application :)");
	          System.out.println("No more fear, Siaful bhai is here.");
	          System.out.println("Example Change");
	          System.out.println("arektu change korlam");

        Greeter greeter = new Greeter();
        System.out.println(greeter.sayHello());
    }
}
