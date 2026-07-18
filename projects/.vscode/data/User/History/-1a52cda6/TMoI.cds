namespace my.datamodel;

entity  SalesOrders {
    key ID : Integer;
    description : String(100);
    customerNo : String;
    items : Association to many SalesOrderItems on items.salesOrder = $self;
}
entity SalesOrderItems {
    key ID : Integer;
    salesOrder : Association to one SalesOrders;
    productNo : String;
    quantity : Integer;
}