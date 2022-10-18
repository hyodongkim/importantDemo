package com.example.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class MyController {

	@Autowired
	IHDHDDao dao;

	@RequestMapping("/")
	public String root() {

		return "NewFile";
	}

	@RequestMapping("/list")
	public String list(Model model) {
		model.addAttribute("list", dao.select());
		return "Test";
	}
	

	@RequestMapping(value = "/addMember", method = RequestMethod.GET)
	public String addMember(@ModelAttribute(name = "list") HDHDDto dto, Model model) throws Exception {
		
		dao.insert(dto);

		model.addAttribute("list",dao.select());

		return "Test";

	}

	@RequestMapping(value = "/updateMember", method = RequestMethod.GET)
	public String updateMember(@ModelAttribute(name = "list") HDHDDto dto, Model model, @RequestParam("id") String id) throws Exception {

		dao.update(dto);
		
		model.addAttribute("list",dao.select_one(id));

		return "Test";

	}

	@RequestMapping(value = "/deleteMember", method = RequestMethod.GET)
	public String deleteMember(@RequestParam("id") String id, Model model) throws Exception {

		dao.delete(id);

		model.addAttribute("list", dao.select_one(id));

		return "Test";

	}

	@RequestMapping("/insert")
	public String insert(Model model) {

		return "insert";
	}

	@RequestMapping("/delete")
	public String delete(@RequestParam("id") String id, Model model) {

		model.addAttribute("list", dao.select_one(id));

		return "delete";
	}

	@RequestMapping("/update")
	public String update(@RequestParam("id") String id, Model model) {

		model.addAttribute("list", dao.select_one(id));

		return "update";
	}
	

}
