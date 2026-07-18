using my from '../db/schema';

service CatalogService @(path:'/browse',requires : 'authenticated-user') {
    @(restrict : [
        {gran}
    ])
}