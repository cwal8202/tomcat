import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

public class Main2 {
	public static void main(String[] args) throws JsonProcessingException {
		Person hong = new Person("홍길동", 22);
		
		ObjectMapper mapper = new ObjectMapper();
		String json = mapper.writeValueAsString(hong);
		
		System.out.println(json);
		
		String jsonString = "{\"name\":\"둘리\",\"age\":23}";
		Person dooli = mapper.readValue(jsonString, Person.class);
		// mapper.readValue();는 String형을 Person객체로 변환한 것. 
		// key값과 value값이 일치해야한다. 아니면 예외발생한다.
		
		System.out.println(dooli.getName());
		System.out.println(dooli.getAge());
		
	}
}
