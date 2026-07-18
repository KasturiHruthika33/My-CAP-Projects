using {acc.com.odataproj as my} from '../db/schema3';

service BuisinessService {
    entity Suppliers as projection on my.BuisinessPartner {
        excluding {
            
        }
    }

    

}