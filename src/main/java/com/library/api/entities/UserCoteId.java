package com.library.api.entities;

import java.io.Serializable;

public class UserCoteId implements Serializable {
	private static final long serialVersionUID = 5926317029343534422L;
	
	private Integer user;
	private Integer cote;
	
	public UserCoteId() {}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((cote == null) ? 0 : cote.hashCode());
		result = prime * result + ((user == null) ? 0 : user.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UserCoteId other = (UserCoteId) obj;
		if (cote == null) {
			if (other.cote != null)
				return false;
		} else if (!cote.equals(other.cote))
			return false;
		if (user == null) {
			if (other.user != null)
				return false;
		} else if (!user.equals(other.user))
			return false;
		return true;
	}
	
	@Override
	public String toString() {
		return "UserDocumentId [user=" + user + ", cote=" + cote + "]";
	}	

}
