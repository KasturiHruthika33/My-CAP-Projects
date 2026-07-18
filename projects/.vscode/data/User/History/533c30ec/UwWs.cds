using acc from '../db/schema';

@requires: 'any'
service CatalogService {
    entity CustomerEntity as projection on acc.CustomerEntity {
      *,
      contacts.contactName as contactName,
      contacts.contactPhone as contactPhone

    };
    entity ContactEn as projection on acc.ContactEntity;
}