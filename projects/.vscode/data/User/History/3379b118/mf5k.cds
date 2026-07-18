namespace acc;

using {managed} from '@sap/cds/common';
entity CustomerEntity : managed {
    @odata.etag
    modifiedAt;
    key customerID : Integer;
    companyName : String;
    contactProperty : Integer;
    contacts : Association to ContactEntity;

    
}

entity ContactEntity {
    key contactID : Integer;
    contactName : String;
    contactPhone : String;
}


annotate ContactEntity with 
 ;
