const cds = require('@sap/cds');
module.exports = cds.service.impl(function () {
    const {Products} = this.entities;
    this.on('activateProduct','Products',async (req) => {
        const status = await SELECT.one.from(Products).where({ID: req.params[0].ID});

        if (!status) {
            return req.error(404, "Product Not found");
        }
        status.Status = 'Active';
        status.Price = Number(status.Price) + 1000;

        await UPDATE(Products).set({Status: status.Status, Price: status.Price}).where({ID: status.ID});
        return "Status of Product with ID: "+status.ID+" has been changed to "+status.Status+" and Price has been increased to "+status.Price;

    });
});