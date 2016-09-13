package com.bakeecom.dao;

import java.util.List;

import com.bakeecom.model.Supplier;;
public interface SupplierDao {
	public int insertRow(Supplier product);

	 public List getList();

	 public Supplier getRowById(int pid);

	 public int updateRow(Supplier product);

	 public int deleteRow(int pid);


}
