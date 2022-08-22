import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;

import com.fasterxml.jackson.databind.ObjectMapper;

public class Main4 {
	public static void main(String[] args) throws MalformedURLException {
		String apiURL = "https://httpbin.org/post";
		URL url = new URL(apiURL);
		HttpURLConnection conn = null;
		try {
			conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");
			// request header 값 세팅
			conn.setRequestProperty("Content-Type", "application/json; charset=utf-8");
			conn.setRequestProperty("Accept", "application/json");
			conn.setDoOutput(true);	//request객체가 Body에 값을 담을 수 있게 하는 메소드.
			
			ObjectMapper mapper = new ObjectMapper();
			String json = mapper.writeValueAsString(new Person("홍길동", 22));
			
			byte[] body = json.getBytes();
			
			conn.getOutputStream().write(body, 0, body.length);
			if (conn.getResponseCode() == 200) {
				System.out.println(readBody(conn.getInputStream()));
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (conn != null) {
				conn.disconnect();
			}
		}
	}
	
	private static String readBody(InputStream inputStream) throws IOException {
		BufferedReader br = new BufferedReader(new InputStreamReader(inputStream));
		StringBuilder sb = new StringBuilder();
		
		String line;
		while ( (line = br.readLine()) != null) {
			sb.append(line);
		}
		return sb.toString();
	}
}
