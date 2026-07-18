using acc from '../db/schema';

service CatalogService {
  entity Customers as projection on acc.CustomerEntity;
  entity Contacts as projection on acc.ContactEntity;
}