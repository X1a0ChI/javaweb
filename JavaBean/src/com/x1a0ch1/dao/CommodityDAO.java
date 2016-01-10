package com.x1a0ch1.dao;

import java.util.List;
import com.x1a0ch1.bean.Commodity;

public interface CommodityDAO {
	public void addCommodity(Commodity commodity);
	public void updateCommodity(Commodity commodity);
	public void deleteCommodity(int id);
	public List<Commodity>findAllCommodity();
	public Commodity findCommodityById(int id);
}
