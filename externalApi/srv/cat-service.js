const cds = require("@sap/cds");
module.exports = cds.service.impl(async function(){
    const service = await cds.connect.to('north');
    this.on(['READ','CREATE','UPDATE','DELETE'],'Employees',async (req)=>{
        try{
            return await service.tx(req).run(req.query);
        }
        catch(error){
            console.error(500,error);
            throw error;
        }
        
    });
});