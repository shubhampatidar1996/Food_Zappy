package beans;

public class ProductBean {
String category,productname,productprice,description,filename;
int pid,cid,price,oid,status,quantity;


String name,emailid,password,address;
String image,total,date;
public int getPrice() {
	return price;
}
public int getQuantity() {
	return quantity;
}

public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public int getStatus() {
	return status;
}

public void setStatus(int status) {
	this.status = status;
}

public void setPrice(int price) {
	this.price = price;
}

public int getOid() {
	return oid;
}

public void setOid(int oid) {
	this.oid = oid;
}

public String getDate() {
	return date;
}

public void setDate(String date) {
	this.date = date;
}

public int getCid() {
	return cid;
}

public String getTotal() {
	return total;
}

public void setTotal(String total) {
	this.total = total;
}

public void setCid(int cid) {
	this.cid = cid;
}

String user,mobileno;

public String getMobileno() {
	return mobileno;
}

public void setMobileno(String mobileno) {
	this.mobileno = mobileno;
}

public String getUser() {
	return user;
}

public void setUser(String user) {
	this.user = user;
}

public String getImage() {
	return image;
}

public void setImage(String image) {
	this.image = image;
}

public int getPid() {
	return pid;
}


public void setPid(int pid) {
	this.pid = pid;
}

public String getCategory() {
	return category;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getEmailid() {
	return emailid;
}

public void setEmailid(String emailid) {
	this.emailid = emailid;
}

public String getPassowrd() {
	return password;
}

public void setPassowrd(String passowrd) {
	this.password = passowrd;
}

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
}

public void setCategory(String category) {
	this.category = category;
}

public String getProductname() {
	return productname;
}

public void setProductname(String productname) {
	this.productname = productname;
}

public String getProductprice() {
	return productprice;
}

public void setProductprice(String productprice) {
	this.productprice = productprice;
}

public String getDescription() {
	return description;
}

public void setDescription(String description) {
	this.description = description;
}

public String getFilename() {
	return filename;
}

public void setFilename(String filename) {
	this.filename = filename;
}
}