using {north as external} from './external/north';
service CatalogService{
    entity Employees as projection on external.Employees{
        EmployeeID,
        FirstName,
        LastName,
        Title,
        City
    };
}