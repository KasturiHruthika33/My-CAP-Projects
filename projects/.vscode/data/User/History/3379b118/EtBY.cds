namespace acc;

using {managed} from '@sap/cds/common';
entity CustomerEntity : managed {
    key customerID : Integer;
    companyName : String;
    contactProperty : Integer;
    contacts : Association to ContactEntity on contacts.contactID = contactProperty; 

    
}

entity ContactEntity {
    key contactID : Integer;
    contactName : String;
    contactPhone : String;
}


annotate CustomerEntity with {
    modifiedAt @odata.etag;
}
