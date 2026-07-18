namespace acc.com.odataproj;

using {managed} from '@sap/cds/common';
entity Buisinesspartner : managed {
    key Id : Integer;
    suppliername : String;
    supplieraddress : String;
    deliverycustomername :  String;
    deliverycustomeraddress : String;

}
