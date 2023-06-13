package ProdTrackr.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import ProdTrackr.model.Product;

@Component
public class ProductDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	// add product to the db
	@Transactional
	public void addProduct(Product product) {
		this.hibernateTemplate.saveOrUpdate(product);
	}
	
	// get all the products from the db
	public List<Product> getProducts(){
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
	}
	
	// delete a product from the db
	@Transactional
	public void deleteProduct(int product_id) {
		Product p = this.hibernateTemplate.load(Product.class, product_id);
		this.hibernateTemplate.delete(p);
	}
	
	// get a single product from the db
	public Product getProduct(int product_id) {
		return this.hibernateTemplate.get(Product.class, product_id);
	}
}
