namespace my;

entity SalesOrders {
    key ID      : Integer;
    description : String;
    customerNo  : String;
    Items       : Association to many SalesOrderItems 
                    on Items.salesorder = $self;
}

entity SalesOrderItems {
    key ID     : UUID; 
    salesorder : Association to one SalesOrders;
    itemNo     : Integer;
    material   : String(10);
    quantity   : Decimal(10,2);
}