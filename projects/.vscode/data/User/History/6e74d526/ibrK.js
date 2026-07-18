const cds = require('@sap/cds');
const { SELECT } = require('@sap/cds/lib/ql/cds-ql');

module.exports = cds.service.impl(function () {
    const {Products} = this.entities;
    this.on('activateProduct','Products',async (req)=> {
        const status = await SELECT.one.from(Products)
        .where ({ID:req.params[1].ID});
        status.Status = 'Active';
        await UPDATE(Products).set({Status:status.Status}).where({ID})

    })
})