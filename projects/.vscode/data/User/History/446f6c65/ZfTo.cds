using my.salesorder as my from '../db/schema';
using {Northwind as external} from './external/Northwind';

service SalesOrderService @(
    path: '/SalesOrderService',
    requires: 'authenticated-user'
) {
    @restrict: [
        {
            grant: 'READ',
            to: 'SalesOrderViewer'
        },
        {
            grant: [
                'READ',
                'CREATE',
                'UPDATE',
                'DELETE'
            ],
            to: 'SalesOrderAdmin',
            where: 'salesOrg = $user.SalesOrgAttribute'
        }
    ]
    entity SalesOrders as projection on external.SalesOrders;
    
    entity SalesOrderItems as projection on external.SalesOrderItems;
    entity Customers as projection on external.Customers;
    entity Addresses as projection on external.Addresses;
}