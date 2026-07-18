namespace acc;

using {managed} from '@sap/cds/common';
entity CustomerEntity {
    key customerID : Integer;
    companyName : String;
    contactProperty : Integer;
    contacts : Association to ContactEntity;

    @odata.etag
}

entity ContactEntity {
    key contactID : Integer;
    contactName : String;
    contactPhone : String;
}