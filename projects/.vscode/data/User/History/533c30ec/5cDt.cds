using acc from '../db/schema';


service CatalogService @(path:'/SalesOrderService',requires:'authenticated-user') {
  @restrict:[
    {
      grant: 'READ',
      to : 'CustomerViewer'
    },
    {
      grant:[
        'READ',
        'CREATE',
        'UPDATE',
        'DELETE'
      ],
      to : 'SalesOrderAdmin',
      where : 'companyName = $user.companyName' 
    }
  ]
    entity CustomerEntity as projection on acc.CustomerEntity {
      *,
      contacts.contactName as contactName,
      contacts.contactPhone as contactPhone

    };
    entity ContactEntity as projection on acc.ContactEntity;
}