package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.Service.ContactService;
import com.example.Service.LeadService;
import com.example.entity.Contact;
import com.example.entity.Lead;

import sun.print.resources.serviceui;

@Controller
public class LeadController {
	@Autowired
	private ContactService contser;
	@Autowired
	private LeadService serv;
	@RequestMapping("/createlead")
	public String createlead() {
		return "createlead";
	}
	@RequestMapping("/savelead")
	public String savLead(@ModelAttribute("lead") Lead lead,ModelMap model) {
		serv.saveOneLead(lead);
		return "display_lead";
	}
	@RequestMapping("/covertlead")
	public String getOneLeadById(@RequestParam("id") long id,ModelMap model) {
		Lead lead = serv.getLeadById(id);
		Contact c=new Contact();
		c.setFirstName(lead.getFirstName());
		c.setLastName(lead.getLastName());
		c.setEmail(lead.getEmail());
		c.setMobile(lead.getMobile());
		contser.saveContact(c);
		serv.deleteById(id);
		List<Contact> leads = contser.listOfContactList();
		model.addAttribute("leads", leads);
		return "contact_list";
	}
	@RequestMapping("/listall")
	public String listData(ModelMap model) {
		List<Lead> lead = serv.listAll();
		model.addAttribute("lead", lead);
		return "search_data";
	}
	@RequestMapping("/display_lead")
	public String leadInfo(@RequestParam("id") long id,ModelMap model) {
		Lead lead = serv.getLeadById(id);
		model.addAttribute("lead", lead);
		return "display_lead";
	}
	@RequestMapping("contactlist")
	public String contactList(ModelMap model) {
		List<Contact> leads = contser.listOfContactList();
		model.addAttribute("leads", leads);
		return "contact_list";
		 
	}
	

}
