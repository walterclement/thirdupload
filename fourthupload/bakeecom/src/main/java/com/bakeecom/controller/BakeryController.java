package com.bakeecom.controller;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bakeecom.model.Product;
import com.bakeecom.services.ProductService;
import com.bakeecom.model.Supplier;
import com.bakeecom.services.SupplierService;


@Controller
public class BakeryController {

	public BakeryController() {
		// super();
		// TODO Auto-generated constructor stub
		System.out.println("inside bakery controller");
	}
	
	@Autowired
	ProductService productService;
	SupplierService supplierService;

	@RequestMapping("/")
	public String homePage() {
		return "front";
	}
	@RequestMapping("/form")
	public ModelAndView gotoProduct(@ModelAttribute("prod")Product prod)
	{
	return new ModelAndView("form");
	}
	@RequestMapping(value="addProduct",method=RequestMethod.POST)
	public ModelAndView saveProduct(@ModelAttribute("prod")Product prod)
	{
	productService.insertRow(prod);
	return new ModelAndView("form").addObject("command", new Product());
	}
	
	@RequestMapping("/gridlis")
	public ModelAndView listProduct(ModelMap m)
	{
	List<Product> productList=productService.getList();
	m.addAttribute("chkMsg", "hello");
	return new ModelAndView("gridlis","productList", productList);
	}
	
	@RequestMapping("/supplier")
	public ModelAndView gotoSupplier(@ModelAttribute("supp")Supplier supp)
	{
	return new ModelAndView("supplier");
	}
	@RequestMapping(value="addSupplier",method=RequestMethod.POST)
	public ModelAndView saveProduct(@ModelAttribute("supp")Supplier supp)
	{
	supplierService.insertRow(supp);
	return new ModelAndView("supplier").addObject("command", new Supplier());
	}
	
	@RequestMapping("/supplierlist")
	public ModelAndView listSupplier(ModelMap m)
	{
	List<Supplier> supplierList=supplierService.getList();
	m.addAttribute("chkMsg", "hello");
	return new ModelAndView("gridlis","supplierList", supplierList);
	}
	
	@RequestMapping("/aboutus")
	public String gotoindex() {
		return "aboutus";
	}
	

	
	@RequestMapping("/home1")
	public String gotohome1() {
		return "home1";
	}
	@RequestMapping("/login2")
	public String gotologin() {
		return "login2";
	}
	@RequestMapping("/regis2")
	public String gotoregis() {
		return "regis2";
	}
	
	@RequestMapping("/edit")
	public ModelAndView editProd(@ModelAttribute("prod")Product prod,@RequestParam int id)
	{
		prod=productService.getRowById(id);
		ModelAndView mv=new ModelAndView("edit","prdList",prod);
		mv.setViewName("edit");
		
		return mv.addObject("command", prod);
	}
	
	@RequestMapping(value="updateProduct",method=RequestMethod.POST)
	public ModelAndView updateProd(@ModelAttribute("prod")Product prod)
	{
//	prod=dataService.getRowById(id);
	productService.updateRow(prod);
	return new ModelAndView("redirect:gridlis");
//		return new ModelAndView("list","prod");
	}
	
@RequestMapping("/deleteProduct")
	public ModelAndView deleteProd(@RequestParam int id)
	{
	productService.deleteRow(id);
		return new ModelAndView("redirect:gridlis");
	}

@RequestMapping("/supplier")
public ModelAndView editSupp(@ModelAttribute("supp")Supplier supp,@RequestParam int id)
{
	supp=supplierService.getRowById(id);
	ModelAndView mv=new ModelAndView("supplieredit","supList",supp);
	mv.setViewName("supplieredit");
	
	return mv.addObject("command", supp);
}

@RequestMapping(value="updateSupplier",method=RequestMethod.POST)
public ModelAndView updateSupp(@ModelAttribute("supp")Supplier supp)
{
//prod=dataService.getRowById(id);
supplierService.updateRow(supp);
return new ModelAndView("redirect:supplierlist");
//	return new ModelAndView("list","supp");
}

@RequestMapping("/deleteSupplier")
public ModelAndView deleteSupp(@RequestParam int id)
{
supplierService.deleteRow(id);
	return new ModelAndView("redirect:supplierlist");
}

	
}
