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
    key item : Integer;
    material : String(18);
    quantity : Decimal(10, 2);
}

entity Customers {

