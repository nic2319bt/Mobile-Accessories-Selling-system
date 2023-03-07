package com.example.mass_front.Controller;

import com.example.mass_front.global.GlobalData;
import com.example.mass_front.model.Order;
import com.example.mass_front.model.Product;
import com.example.mass_front.orderDTO.OrderDTO;
import com.example.mass_front.service.CategoryService;
import com.example.mass_front.service.OrderService;
import com.example.mass_front.service.ProductService;
import com.example.mass_front.service.SubCategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class HomeController {
    @Autowired
    ProductService productService;
    @Autowired
    CategoryService categoryService;
    @Autowired
    SubCategoryService subCategoryService;
    @Autowired
    OrderService orderService;

    @GetMapping("/")
    public String home(Model model){
        model.addAttribute("cartCount", GlobalData.cart.size());
        return "index";
    }
    @GetMapping("/s")
    public String shop(){

        return "shopview";
    }

    @GetMapping("/shop")
    public String shopBySubCategory(Model model){
       // model.addAttribute("categories",categoryService.getAllCategory());
        model.addAttribute("cartCount",GlobalData.cart.size());
        model.addAttribute("products",productService.getAllProduct());
        return "Shop";
    }
    @GetMapping("/shop/viewinvoice/{id}")
    public String viewInvoice(Model model,@PathVariable int id){
        model.addAttribute("product",productService.getProductById(id).get());


        return "Invoice";
    }
    @PostMapping("/shop/saveinvoice")
    public String addOrder(@ModelAttribute("order") Order order){
        orderService.addOrder(order);
        return "redirect:/Shop";
    }
    @GetMapping("/shop/viewproduct/{id}")
    public String viewProduct(Model model, @PathVariable int id){
        model.addAttribute("product",productService.getProductById(id).get());
        return "Product-Details";
    }
    @GetMapping("/myaccount")
    public String mySccount(Model model){
        return "My-Account";
    }
}
