namespace my.salesorder;

entity SalesOrders {
    key ID          : String(10);
    description : String(50) not null;
    salesOrg    : String(10);
    customerNo  : String(10);
    customer    : Association to Customers                //unmanaged association

                      on customer.customerNo = customerNo;

      items        : Composition of  many SalesOrderItems   //managed composition (to many)

                      on items.salesOrder = $self;

}
}

