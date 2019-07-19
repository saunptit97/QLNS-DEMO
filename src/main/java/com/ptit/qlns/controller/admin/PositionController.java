package com.ptit.qlns.controller.admin;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ptit.qlns.dao.PositionDAOImpl;
import com.ptit.qlns.model.Position;

@Controller 
@RequestMapping(value = "/admin/position")
public class PositionController {
	@RequestMapping(value = "/index", method = RequestMethod.GET)
	public ModelAndView index() throws ClassNotFoundException, SQLException {
		ArrayList<Position> positions = new ArrayList<Position>();
		PositionDAOImpl dao = new PositionDAOImpl();
		positions = dao.getAll();	
		ModelAndView mv = new ModelAndView("admin/pages/position/index");
		mv.addObject("positions", positions);
		for(Position position : positions) {
			System.out.println(position.getName());
		}
		return mv;
	}
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public ModelAndView create() {
		return new ModelAndView("admin/pages/position/create");
	}
	
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public ModelAndView edit(@PathVariable("id") int id, Model model) {
		ModelAndView mv = new ModelAndView("admin/pages/position/edit","position", new Position());
		Position pos = new Position();
		PositionDAOImpl dao = new PositionDAOImpl();
		try {
			pos = dao.getPositionById(id);
			mv.addObject("position", pos);
			return mv;
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	@RequestMapping(value = "/store", method = RequestMethod.POST)
	public @ResponseBody String addNew(HttpServletRequest request ,@Valid @ModelAttribute("position")Position position, BindingResult result) throws ClassNotFoundException, SQLException {
		if(result.hasErrors()) {
			return "false";
		}else {
			Position pos = new Position(position.getName(), position.getDescription());
			PositionDAOImpl dao = new PositionDAOImpl();
			dao.addPosition(pos);
			return "true";
		}
	}
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public @ResponseBody String delete(@PathVariable("id") int id) {
		PositionDAOImpl dao = new PositionDAOImpl();
		try {
			dao.deletePosition(id);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "true";
	}
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public @ResponseBody String update(HttpServletRequest request ,@Valid @ModelAttribute("position")Position position, BindingResult result) throws ClassNotFoundException, SQLException {
		if(result.hasErrors()) {
			return "false";
		}else {
			Position pos = new Position(position.getName(), position.getDescription());
			pos.setId(position.getId());
			PositionDAOImpl dao = new PositionDAOImpl();
			dao.updatePosition(pos);
			return "true";
		}
	}
	
}
