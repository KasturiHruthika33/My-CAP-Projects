using my from '../db/schema';

service CatalogService @(path:'/browse',requires : 'authenticated-user') {
    @(restrict : [
        {grant : 'READ',to : ['SalesOrder1Viewer','SalesOrder1Admin']},
        {grant : ['CREATE','UPDATE','DELETE'], to : 'SalesOrder1Admin'}
    ])
    entity SalesOrders as projection on my.SalesOrders;
    entity SalesOrderItems as projection on my.SalesOrderItems;
    entity Customers as projection on my.Customers;
    entity Addresses as projection on my.Addresses;

}