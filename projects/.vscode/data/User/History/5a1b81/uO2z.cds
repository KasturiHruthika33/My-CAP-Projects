using {com.acc.selectincds as my} from '../db/schema2';

service PatnerService @(path:'/browse') {
    entity BuisinessPatner as projection on my.BuisinessPatner;
    entity Patners2 as projection on my.BuisinessPatner {
        ID,name,country
    };
    entity Patners1 as projection on my.BuisinessPatner {
        *
    };
    entity CustomersUSA as projection on my.BuisinessPatner {
        ID,
        name,
        country
    }
    where country = 'USA';
    entity Homeless as projection on my.BuisinessPatner {
        *
    }
    where country is null;
    entity Homeless1 as projection on my.BuisinessPatner {
        *
    }
    where country is null and name is not null;
    entity FirstTen as projection on my.BuisinessPatner {
        *
    }
    where ID between 100 and 300;
    entity CustomersUnknown as projection on my.BuisinessPatner {*}
    where country like '%know%';
    entity CustomersNotnull as projection on my.BuisinessPatner [country is not null]{
        *
    };
    

     

    }

