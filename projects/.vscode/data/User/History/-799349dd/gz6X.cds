namespace my;

using { cuid, managed } from '@sap/cds/common';

entity SalesOrders : cuid, managed {
    orderNumber       : String(10);
    SalesOrgAttribute : String(10); 
    grossAmount       : Decimal(15, 2);
    currency          : String(3);
    lifecycleStatus   : String(1);
    customer          : Association to Customers;
    items             : Composition of many SalesOrderItems on items.parent = $self;
}

entity SalesOrderItems : cuid {
    parent            : Association to SalesOrders;
    itemPosition      : Integer;
    product           : String(50);
    quantity          : Integer;
    amount            : Decimal(15, 2);
}

entity Customers : cuid, managed {
    name              : String(100);
    email             : String(100);
    address           : Association to Addresses;
}

entity Addresses : cuid {
    street            : String(100);
    city              : String(50);
    postalCode        : String(10);
    country           : String(3);
}