package common;

import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.http.HttpStatus;

@ResponseStatus(value = HttpStatus.NOT_FOUND, reason = "Entity Not Found")
public class EntityNotFoundException extends Exception {

	private static final long serialVersionUID = -7514614033108264175L;	
	
	public EntityNotFoundException() {
		// TODO Auto-generated constructor stub
	}

}
