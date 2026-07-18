using acc from '../db/schema';

service CatalogService {
  entity Customers as projection on acc.CustomerEntity{
    *,
    contacts.contactName as contactName,
    contacts.contactPhone as contactPhone
  }
  entity Contacts as projection on acc.ContactEntity;
}