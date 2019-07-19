package com.ptit.qlns.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class Position {
	
	private int id;
	
	@NotNull
	@Size(min=2 , max = 50, message="Size must be between 2 and 50 letters")
	private String name;
	
	private String description;

	public Position() {
		super();
	}

	public Position(String name, String description) {
		super();
		this.name = name;
		this.description = description;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}
