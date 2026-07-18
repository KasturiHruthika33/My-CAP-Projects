using acc from '../db/schema';


service CatalogService @(path:'/SalesOrderService',requires:'authenticated-u') {
    entity CustomerEntity as projection on acc.CustomerEntity {
      *,
      contacts.contactName as contactName,
      contacts.contactPhone as contactPhone

    };
    entity ContactEntity as projection on acc.ContactEntity;
}