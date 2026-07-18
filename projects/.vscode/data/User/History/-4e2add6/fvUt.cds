namespace LKM;

entity Orders {
    OrderNo : String(10);
    CustomerNo : String(20);
    Channel : String(10);
    OrderQuantity : Integer;
    GroupNo : Integer;

}

entity Products {
    ProductId : Integer;
    ProductName : String(20);
    Price : Decimal;
    Reviews : Integer;
    Stock : Integer;
    o
}