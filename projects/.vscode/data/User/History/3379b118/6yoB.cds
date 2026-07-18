namespace acc;

entity CustomerEntity {
    key customerID : Integer;
    companyName : String;
    contactProperty : Integer;
    linkToContact : Association to ContactEntity 
        on linkToContact.contactID = contactProperty;
}

entity ContactEntity {
    key contactID : Integer;
    contactName : String;
    contactPhone : String;
}