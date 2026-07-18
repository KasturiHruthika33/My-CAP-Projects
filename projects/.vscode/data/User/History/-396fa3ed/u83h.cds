namespace acc.com.odataproj;

using {managed} from '@sap/cds/common';
entity BuisinessPartner : managed {
    key Id : Integer;
    suppliername : String;
    supplieraddress : String;
    deliverycustomername :  String;
    deliverycustomeraddress : String;

}
