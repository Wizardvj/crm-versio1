package com.example.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.entity.Contact;
import com.example.repository.ContactRepository;
@Service
public class ContactServiceImpl implements ContactService {
	@Autowired
	private ContactRepository contactRepo;

	@Override
	public void saveContact(Contact c) {
		contactRepo.save(c);
		
	}

	@Override
	public List<Contact> listOfContactList() {
List<Contact> lead = contactRepo.findAll();
return lead;
		
	}

}
