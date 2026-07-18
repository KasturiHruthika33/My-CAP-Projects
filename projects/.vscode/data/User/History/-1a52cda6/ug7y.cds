namespace my.datamodel;

entity  SalesOrders {
    key ID : Integer;
    description : String(100);
    customerNo : String;
    items
}