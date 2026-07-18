using acc from '../db/schema';

@require : 'any'
service BusinessPartnerService @(path:'/browse') {
    entity Suppliers as projection on acc.BuisnessPartner;
}