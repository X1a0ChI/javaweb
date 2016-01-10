package com.x1a0ch1.factory;

import com.x1a0ch1.dao.CommodityDAO;
import com.x1a0ch1.dao.CommodityDAOImpl;

public class CommodityDAOFactory {
	public static CommodityDAO getCommodityDAOInstance(){
		return new CommodityDAOImpl();
	}
}
