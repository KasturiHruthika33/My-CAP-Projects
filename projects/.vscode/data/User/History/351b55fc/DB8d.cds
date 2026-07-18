using {Northwind as external} from './externa'

service myservice {
    entity Products as projection on external.Products {
        key ProductID,
        ProductName
    };
}