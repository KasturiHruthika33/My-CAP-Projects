namespace acc;


entity BuisnessPartner {
    key id : Integer;
    name : String;
    species : String;
    food : String;
    @odata.etag
    version : Integer;
}