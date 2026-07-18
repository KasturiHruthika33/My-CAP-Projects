import { service } from '@sap/cds';
import { SELECT } from '@sap/cds/lib/ql/cds-ql';

export default service.impl(function () {
    const {Products} = this.entities;
    this.on('activateProduct','Products',async (req)=> {
        const status = await SELECT.one.from(Products)
        .where ({ID:req.params[1].ID});
        

    })
})