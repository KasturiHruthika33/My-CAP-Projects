namespace acc;

using {cuid,managed} from '@sap/cds/common';
entity CustomerEntity: cuid,managed {

    companyName : String(100);
    contactProperty : Integer;
    contacts : Association to ContactEntity;
}

entity ContactEntity {
    key contactId : Integer;
    contactName :String;
    contactPhone : String;
}
