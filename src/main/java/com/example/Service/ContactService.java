package com.example.Service;

import java.util.List;

import com.example.entity.Contact;

public interface ContactService {
	public void saveContact(Contact c);

	public List<Contact> listOfContactList();

}
