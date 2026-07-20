const cds = require('@sap/cds');
module.exports = cds.service.impl(async function(){
    this.on('READ','Customers',async req=>{
        try {
            const service = await cds.connect.to('NorthWind');
            let result = await service.tx(req).run(req.query);
            return result;
        }
        catch(error){
            console.error(error);
            throw error;
        }
    });
});