using LKM from '../db/schema';

service CatalogService {
  entity Orders as projection on LKM.Orders;
  
}