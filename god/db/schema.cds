namespace demo;

entity Books{
    key ID : Integer;
    title:String;
    author : Association to one Author;
}

entity Author{
    key ID : Integer;
    name: String;
    books : Association to many Books on books.author = $self;
}


