package com.ecp.entity;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class ShopCart {
	//key proudct_id   value orderline
	private Map items = new HashMap();	
	public void add(OrderLine line) {
		//根据商品orderline得到商品的id
		Integer product_id = line.getProduct().getId();
		//在map集合中通过商品的id去value
		OrderLine orderLine = (OrderLine) items.get(product_id);
		if (orderLine == null) {
			items.put(product_id, line);
		} else {
			orderLine.setAmount(orderLine.getAmount() + line.getAmount());
			items.put(product_id, orderLine);
		}
	}

	/**
	 * 购物车中删除一件商品
	 */
	public void remove(OrderLine line) {
		Integer product_id = line.getProduct().getId();
		items.remove(product_id);
	}
	public void remove(Integer id) {
		items.remove(id);
	}
	/**
	 * 修改购物车中商品数量
	 */
	public void   modify(OrderLine line) {
		Integer product_id = line.getProduct().getId();
		items.put(product_id , line );
	}
     /**
      * 购物车中总价格
      */
	public  double   getTotal(){
		double total = 0;
		Set  set = items.keySet();
		Iterator it = set.iterator();
		while(it.hasNext()){
			Integer id =(Integer)it.next();
			OrderLine line = (OrderLine) items.get(id);
			total += line.getProduct().getBasePrice() * line.getAmount();
		}
		return  total;
	}
	/**
     * 购物车中商品总件数
     */
	public  int   getCount(){
		int count = 0;
		Set  set = items.keySet();
		Iterator it = set.iterator();
		while(it.hasNext()){
			Integer id =(Integer)it.next();
			OrderLine line = (OrderLine) items.get(id);
			count +=  line.getAmount();
		}
		return  count;
	}
	/**
	 * 购物车中的种类的数量
	 */
	public int getSize() {
		return items.size();
	}
	/**
	 * 购物车转化成一张订单
	 */
	public Order getOrder(){
		Order order = new Order();
		Set set = new HashSet();
		Collection list = items.values();
		set.addAll(list);
		order.setOrderlines(set);
		return order;
	}
	/**
	 * 此方法用于清空购物车
	 */
	public  void  clearCart(){
		items.clear();
	}

	public Map getItems() {
		return items;
	}

	public void setItems(Map items) {
		this.items = items;
	}
	
}
