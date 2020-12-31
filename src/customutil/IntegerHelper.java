package customutil;

import java.util.Random;

public class IntegerHelper {
	//2147483647
	public static int getRandomNumberUsingNextInt(int min, int max) {
	    Random random = new Random();
	    return random.nextInt(max - min) + min;
	}
}
