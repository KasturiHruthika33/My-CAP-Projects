namespace my.salesorder;

using { cuid, managed } from '@sap/cds/common';

entity SalesOrders : cuid, managed {
    salesOrg      : String(4); // Required for your row-level security restriction
    note          : String(100);
    customer      : Association to Customers;
    items         : Composition of many SalesOrderItems on items.parent = $self;
}

entity SalesOrderItems : cuid {
    parent        : Association to SalesOrders;
    product       : String(50);
    quantity      : Integer;
    price         : Decimal(10,2);
}

entity Customers : cuid, managed {
    name          : String(100);
    email         : String(100);
    address       : Association to Addresses;
}

entity Addresses : cuid {
    city          : String(50);
    postalCode    : String(10);
    street        : String(100);
    country       : String(3);
}