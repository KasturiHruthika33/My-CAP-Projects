using LKM from '../db/schema';

service CatalogService {
  entity Orders as projection on LKM.Orders;
  entity Products as projection on LKM.Products;
}