using {NorthWind as external} from './external/NorthWind';

service projectService {
    entity Customers as projection on external.Customers{
        CustomerID,
        CompanyName,
        ContactName,
        Country
    }
}