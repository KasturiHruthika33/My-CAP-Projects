using acc from '../db/schema';

service BusinessPartnerService @(path:'/browse') {
    entity Suppliers as projection on acc.BuisnessPartner;
}