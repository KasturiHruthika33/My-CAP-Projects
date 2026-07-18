const cds   = require ('@sap/cds') ;
const log   = cds.log('cat-service'); // Tip: Pass a string to name your logger module

module.exports   = cds.service.impl (function () { 
    const { Products } = this.entities; 
    
    this.on ('activateProduct' , 'Products' , async (req) => { 
        log.info('Received request to activate product ID:', req.params[0]?.ID);

        const status = await SELECT.one.from(Products).where({ ID: req.params[0].ID }); 
        
        if (!status) { 
            log.error(`Product with ID ${req.params[0].ID} not found.`);
            return req.error(404, "Product Not found"); 
        } 
        
        status.Status = 'Active'; 
        status.Price = Number(status.Price) + 1000; 
        
        await UPDATE(Products).set({ Status: status.Status, Price: status.Price }).where({ ID: status.ID }); 
        
        log.info(`Successfully activated product ID: ${status.ID}. New Price: ${status.Price}`);

        return "Status of Product with ID: " + status.ID + " has been changed to " + status.Status + " and Price has been increased to " + status.Price; 
    });
});