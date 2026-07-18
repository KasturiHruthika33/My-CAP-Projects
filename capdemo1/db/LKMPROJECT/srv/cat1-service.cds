using {com.acc.customtype as  my} from '../db/schema1';

service ProductService @(path:'/browse') {
    entity ProductEntity as projection on my.ProductEntity;
    entity PharmProduct as projection on my.PharmProduct;
    entity Customer as projection on my.Customer;
}