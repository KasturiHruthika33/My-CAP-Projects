namespace acc;

entity CustomerEntity {
    key customerId : Integer;
    companyName : String(100);
    contactProperty : Integer;
    contacts : Association to ContactEntity on contacts.contactId = contactProperty;
}

entity ContactEntity {
    key contactId : Integer;
    firstName : String(50);
    lastName : String(50);
    email : String(100);
    phone : String(20);
}
