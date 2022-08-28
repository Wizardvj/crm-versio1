package com.example.Service;

import java.util.List;

import com.example.entity.Lead;

public interface LeadService {
	public void saveOneLead(Lead lead);

	public Lead getLeadById(long id);

	public void deleteById(long id);
	
	public List<Lead> listAll();

}
