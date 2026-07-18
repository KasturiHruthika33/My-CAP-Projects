namespace demo;

entity user{
    key ID : Integer;
    name : String(100);
    email : String(100);
    phone : String(15);
    gender : String(10);
}

entity projects {
    key ID : Integer;
    name : String(100);
    description : String(255);

}