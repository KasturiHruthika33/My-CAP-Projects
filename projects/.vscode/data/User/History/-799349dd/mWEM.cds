namespace demo;

using {cuid,managed} from '@sap/cds/common';

entity SalesOrders : cuid,managed {
    orderNumber   : String(10);
    customerName  : String(100);
    grossAmount   : Decimal(15, 2);
    currency      : String(3);
    lifecycleStatus: String(1);
}
