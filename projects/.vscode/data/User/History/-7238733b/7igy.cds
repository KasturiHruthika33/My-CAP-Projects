namespace com.acc.customtype;

type priceDecimal : Decimal(9, 2);
type averageDecimal : Decimal(11, 1);
type limitDecimal : Decimal(9, 2);
type Address{
    city : String;
    street : String;
    streetNumber : String;
}

entity ProductEntity {
    key productID : String;
    productName : String;
    supplierCompanyName : String;
    supplierAddress : Address;
    
}
