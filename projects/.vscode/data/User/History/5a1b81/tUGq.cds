using {com.acc.selectincds as my} from '../db/schema2';

service PatnerService @(path:'/browse') {
    entity BuisinessPatner as projection on my.BuisinessPatner;
    entity Patners2 as projection on my.BuisinessPatner {
        ID,name,country
    };
    entity Patners

    }

