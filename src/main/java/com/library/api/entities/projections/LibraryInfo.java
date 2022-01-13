package com.library.api.entities.projections;

import com.library.api.entities.Horaires;
import com.library.api.entities.common.Adress;

public interface LibraryInfo {
	
	Integer getId();
	String getLibelle();
	Horaires getHoraires();
	Adress getAdress();

}
