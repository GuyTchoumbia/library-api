package common;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value = HttpStatus.FORBIDDEN, reason = "can only extend once")
public class ForbiddenException extends Exception {
	
	private static final long serialVersionUID = 6321659984143596271L;
	
	public ForbiddenException() { }

}
