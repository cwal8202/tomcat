package tesetDadddd;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Main3 {
	public static void main(String[] args) {
		String line = "123 He234llo. 39 Wor4ld! 57";
		Pattern p = Pattern.compile("[0-9]{2,3}");
		Matcher m = p.matcher(line);
		
		m.find();
		System.out.println(m.start());
		System.out.println(m.end());
		
		m.find();
		System.out.println(m.start());
		System.out.println(m.end());
		
		m.find();
		System.out.println(m.start());
		System.out.println(m.end());
		
		
	}
}
