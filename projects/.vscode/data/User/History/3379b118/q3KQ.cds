namespace acc;

using {managed} from '@sap/cds/common';
entity CustomerEntity : managed {
    @odata.etag
    modifiedAt;
    key customerID : Integer;
    companyName : String;
    contactProperty : Integer;
    contacts : Association to ContactEntity;
    @odata.etag
    editedAt : Timestamp;
    
}

entity ContactEntity {
    key contactID : Integer;
    contactName : String;
    contactPhone : String;
}

