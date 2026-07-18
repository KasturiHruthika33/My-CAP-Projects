namespace my.salesorder;

entity SalesOrders {
    key ID : String(10);
    description : String(50) not null;
    salesOrg : String(10);
    customerNo : String(10);
    customer : Association to Customers  on customer.customerNo = customerNo;
    items : Composition of  many SalesOrderItems on items.salesOrder = $self; 
}

entity SalesOrderItems {
    key salesOrder : Association to one SalesOrders; 
    salesOrder : Association to SalesOrders;
    productNo : String(10);
    product : Association to Products on product.productNo = productNo;
    quantity : Integer;
    price : Decimal(9,2);
}
