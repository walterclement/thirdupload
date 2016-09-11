package com.bakeecom.services;

import java.util.List;

import com.bakeecom.model.Product;

public interface DataService 
{
 public int insertRow(Product product);

 public List getList();

 public Product getRowById(int pid);

 public int updateRow(Product product);

 public int deleteRow(int pid);

}