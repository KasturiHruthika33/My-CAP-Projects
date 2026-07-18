using my.salesorder as my from '../db/schema';

service SalesOrderService @(
    path: '/SalesOrderService',
    requires: 'authenticated-user'
) {
    @restrict: [
        {
            grant: 'READ',
            to: 'ProductViewer'
        },
        {
            grant: [
                'READ',
                'CREATE',
                'UPDATE',
                'DELETE'
            ],
            to: 'ProductAdmin',
            where: 'product = $user.ProductAttribute'
        }
    ]
    entity SalesOrders as projection on my.SalesOrders;
    
    entity SalesOrderItems as projection on my.SalesOrderItems;
    entity Customers as projection on my.Customers;
    entity Addresses as projection on my.Addresses;
}