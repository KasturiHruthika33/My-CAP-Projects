using my from '../db/schema';

service CatalogService @(path:'/browse',requires : 'authenticated-user') {
    @(restrict : [
        {grant : 'READ',to : ['SalesOrder1Viewer','SalesOrderAdmin']},
        {grant : 'WRITE','UPDATE','DELETE', TO :}
    ])
}