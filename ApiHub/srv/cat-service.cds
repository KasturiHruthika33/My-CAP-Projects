service CatalogService {
    type salesOrder {
        SalesOrder:String(10);
        SalesOrderType:String(2);
        SalesOrganization:String(4);
        SoldToParty:String(10);

    }

    function getSalesOrders() returns array of salesOrder;
    

}