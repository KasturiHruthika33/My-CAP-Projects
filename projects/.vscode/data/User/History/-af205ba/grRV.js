const cds = require('@sap/cds');
module.exports = function(srv) {
    srv.after('READ','Books',each => {
        if(each.stock<50){
            each.status = 'Stock less than 50';
        }

    });
    srv.before('CREATE','Books',async (req)=> {
        const {Book} = cds.entities;
        const {id, title} = req.data;
        const db = srv.transaction(req);
        let {Books} = srv.entities;
        results = await db.update(Books).set({title: title}).where({ID:id});
        console.log("")
    })
}