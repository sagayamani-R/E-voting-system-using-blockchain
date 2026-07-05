package application;

import java.util.Random;

public class randomstringgener {

	public String getSaltString() {
        String SALTCHARS = "1234567890";
        StringBuilder salt = new StringBuilder();
        Random rnd = new Random();
        while (salt.length() < 5) { // length of the random string.
            int index = (int) (rnd.nextFloat() * SALTCHARS.length());
            salt.append(SALTCHARS.charAt(index));
        }
        String saltStr = salt.toString();
        return saltStr;

    }
public static void main(String[]args) {
	
	randomstringgener s=new randomstringgener();
String random= s.getSaltString();

System.out.println(random);
}




}
