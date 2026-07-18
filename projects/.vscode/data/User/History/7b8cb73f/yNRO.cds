using {acc.com.odataproj as my} from '../db/schema3';

service BuisinessService @(path:'/browse') {
    entity Suppliers as projection on my.BuisinessPartner 
    excluding {
        managed

    entity Customers as projection on my.BuisinessPartner{
        Id,
        deliverycustomername as companyName,
        deliverycustomeraddress as companyAddress
    }
    
    

    

}