namespace acc;

entity CustomerEntity {
    key customerID : Integer;
    companyName : String;
    contactProperty : Integer;
    contacts : Association to ContactEntity on contacts.contactID = $self
}

entity ContactEntity {
    key contactID : Integer;
    contactName : String;
    contactPhone : String;
}