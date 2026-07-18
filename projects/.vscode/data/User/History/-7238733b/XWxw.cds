namespace com.acc.customtype;

type priceDecimal : Decimal(9, 2);
type averageDecimal : Decimal(11, 1);
type limitDecimal : Decimal(9, 2);
type Address {
    city : String;
    street : String;
    streetNumber : String;
}

entity ProductEntity {
    key productID : String;
    productName : String;
    supplierCompanyName : String;
    supplierAddress : Address;
    EmployeeName : String;
    EmployeeAddress : Address;
    deliveryCustomerName : String;
    deliveryCustomerAddress : Address;
}

entity PharmProduct {
    key ID : String;
    orderPrice : priceDecimal;
    sellingPrice : priceDecimal;
    averageCount : averageDecimal;
    toxLimit : limitDecimal;
}

entity Customer {
    key ID : String;
    name : String;
    contact : {
        homepage : String;
        email : String;
        address : Address;
    }
    company : String;
}
