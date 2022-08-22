import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;

public class Main {
	public static void main(String[] args) throws JsonProcessingException {
		// 사람
		// 이름 = 홍길동
		// 나이 = 22
		ObjectMapper mapper = new ObjectMapper();	// jackson은 ObjcetMapper로 사용한다.
		ObjectNode node = mapper.createObjectNode();	// json 객체를 만든것
		
		node.put("name", "홍길동");
		node.put("age", 22);
		node.put("boolean", true);
		
		ObjectNode node2 = mapper.createObjectNode();
		node2.put("이름", "둘리");
		node2.put("나이", 23);

		node.set("bf", node2);
		
		
		String json = mapper.writeValueAsString(node);	// json을 문자열 객체로 바꿀 수 있다.
		System.out.println(json);
		
	}
}
