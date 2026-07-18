namespace my.datamodel;

entity SalesOrders {
    key ID          : Integer;
    description     : String(100);
    customerNo      : String;

    items : Association to many SalesOrderItems
            on items.salesOrder = $self;
}

entity SalesOrderItems {
    key itemNO : Integer;
    salesOrder : Association to one SalesOrders;
    material   : String;
    quantity   : Decimal(10,2);
}
