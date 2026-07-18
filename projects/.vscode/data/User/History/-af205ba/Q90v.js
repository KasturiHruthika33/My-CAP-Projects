const cds = require('@sap/cds');
module.exports = function(srv) {
    srv.after('READ','Books',each => {
        if(each.stock<50){
            each.status = 'Stock less than 50';
        }

    });
    srv.before('CREATE','Books',async (req)=> {
        const {Books} = cds.entities;
        const (id,title)
    })
}