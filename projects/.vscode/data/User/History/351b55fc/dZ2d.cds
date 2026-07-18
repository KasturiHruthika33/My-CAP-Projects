using {Northwind as external} from './external/NorthwindService';

service myservice {
    entity Products as projection on external.Products {
        key ProductID,
        ProductName
    };
}