namespace acc;

using {managed} from '@sap/cds/common';
entity CustomerEntity : managed {
    key customerID : Integer;
    companyName : String;
    contactProperty : Integer;
    contacts : Association to ContactEntity;

    @odata.etag
    modifiedAt
}

entity ContactEntity {
    key contactID : Integer;
    contactName : String;
    contactPhone : String;
}