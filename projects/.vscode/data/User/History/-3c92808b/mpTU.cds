namespace my.salesorder;

entity SalesOrders {
    key ID : String(10);
    description : String(50) not null;
    salesOrg : String(10);
    customerNo : String(10);
    customer : Association to Customers  on customer.customerNo = customerNo;
    items : Composition of  many SalesOrderItems 
}

