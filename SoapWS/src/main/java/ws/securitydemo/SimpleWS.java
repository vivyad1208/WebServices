package ws.securitydemo;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebService;

@WebService
public class SimpleWS {

	@WebMethod(operationName="hello")
	public String hello(@WebParam(name="name") String txt) {
		return "Hello "+txt;
	}
}
