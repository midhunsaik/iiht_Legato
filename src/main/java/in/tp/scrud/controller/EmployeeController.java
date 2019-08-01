package in.tp.scrud.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import in.tp.scrud.model.Employee;
import in.tp.scrud.service.IEmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	private IEmployeeService empService;

	@GetMapping("/listEmps")
	public ModelAndView listEmployee() {
		return new ModelAndView("empList", "emps", empService.listEmployees());
	}

	@GetMapping("/addEmp")
	public ModelAndView addEmployee() {
		return new ModelAndView("addEmp", "emp", new Employee());
	}

	@GetMapping("/get")
	public ModelAndView getById() {
		return new ModelAndView("getById");
	}

	@RequestMapping(value = "/getId", method = RequestMethod.GET)
	public ModelAndView getbyId(@RequestParam("id") long empid) {
		return new ModelAndView("getByList", "emp", empService.getEmployeeById(empid));
	}

	@PutMapping("/putEmp")
	public String updateEmployee(@RequestBody Employee empId) {
		empService.updateEmployee(empId);
		return "redirect:/listEmps";
	}

	@RequestMapping(value = "/updateEmp", method = RequestMethod.POST)
	public String updateEmp(@ModelAttribute("emp") Employee emp) {
		empService.updateEmployee(emp);
		return "redirect:/listEmps";
	}

	@GetMapping("/updateEmp")
	public ModelAndView updateEmploee() {
		return new ModelAndView("update", "emp", new Employee());
	}

	@PostMapping("/addEmp")
	public String doAddEmployee(@ModelAttribute Employee emp) {
		empService.addEmployee(emp);
		return "redirect:/listEmps";
	}

	@DeleteMapping("/delete/{id}")
	public String delete(@PathVariable(name = "id") long empId) {
		empService.deleteEmployee(empId);
		return "redirect:/listEmps";
	}

	@GetMapping("/deleteEmp")
	public ModelAndView delete() {
		return new ModelAndView("delete");
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String deleteEmp(@RequestParam("id") long empId) {
		empService.deleteEmployee(empId);
		return "redirect:/listEmps";
	}
}
