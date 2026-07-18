namespace acc;

entity CustomerEntity {
    key customerId : Integer;
    companyName : String(100);
    contactProperty : Integer;
    contacts : Association to ContactEntity on contacts.contactId = contactProperty;
}

entity ContactEntity {
    key contactId : Integer;
    contactName :String;
    contactPhone : String;
}
