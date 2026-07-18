const cds = require('@sap/cds');
module.exports = function(srv) {
    srv.after('READ','Books',each => {
        if(each.stock<50){
            
        }
    })
}