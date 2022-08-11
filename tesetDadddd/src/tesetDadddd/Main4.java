package tesetDadddd;

import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Main4 {

	public static void main(String[] args) {
		String line1 = "lowercaes";
		String line2 = "UPPERCASE";
		String line3 = "1q2w3e";
		
//		Pattern p = Pattern.compile("[A-Z]{9}");
//		Matcher m = p.matcher(line2);
//		
//		System.out.println(m.matches());
//		System.out.println(line1.matches("[a-z]{9}"));
				
/*		Pattern p = Pattern.compile("[0-9a-z]{6}");
		Matcher m = p.matcher(line3);
		System.out.println(m.matches());*/
		
			// 아이디는 영소문자와 숫자로만 이루어져야하고 최소 6자 최대 10자임, (영문자로 시작해야합니다.)
		Scanner scan = new Scanner(System.in);
		System.out.println("아이디 생성해봐");
		String id = scan.nextLine();
		Pattern p = Pattern.compile("[a-z][0-9a-z]{6,10}");
		Matcher m = p.matcher(id);
		if(m.matches()) {
			System.out.println("생성되었습니다.");
		}	 else {
			System.out.println("다시생성");
		};
		
		
		// 올바른 전화번호
		String regex = "010-[0-9]{4}-[0-9]{4}";
		Pattern p1 = Pattern.compile(regex);
		System.out.println(p.matcher("010-1234-5678").matches());
		
	}
}