import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;

import com.example.AppleSearchResult;
import com.fasterxml.jackson.databind.ObjectMapper;


// 포스트맨에서 key value 값 처럼 웹에서 검색 한 것 요청 받아서 json으로 구현(GET방식으로 요청 보내기)
public class Main3 {
	public static void main(String[] args) throws UnsupportedEncodingException, MalformedURLException {
		String apiURL = "https://itunes.apple.com/search?term=";
		
		String requestURL = apiURL + URLEncoder.encode("아이유", "UTF-8");
		
		URL url = new URL(requestURL);
		HttpURLConnection conn = null;
		
		try {
			conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("GET");
			
			int responseCode = conn.getResponseCode();
			if (responseCode == HttpURLConnection.HTTP_OK) {	//응답이 요청되면 body를 살펴보면 된다.
				String respBody = readBody(conn.getInputStream());
				//System.out.println(respBody);
				
				ObjectMapper mapper = new ObjectMapper();
				AppleSearchResult apple = mapper.readValue(respBody, AppleSearchResult.class);
				System.out.println(apple.getResultCount());
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			conn.disconnect();
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
