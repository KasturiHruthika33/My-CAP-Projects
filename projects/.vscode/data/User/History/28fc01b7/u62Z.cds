using my from '../db/schema';

service CatalogService @(path:'/browse',requires : 'authenticated-user') {
    @(restrict : [
        {grant : 'READ',to : ['SalesOrder1Viewer','SalesOrder1Admin']},
        {grant : 'CREATE','UPDATE','DELETE', to : 'SalesOrder1Admin'}
    ])
}