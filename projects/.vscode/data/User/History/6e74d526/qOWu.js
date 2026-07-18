const cds = require('@sap/cds');

module.exports = cds.service.impl(function () {
    const {Products} = this.entities;
    this.on('activateProduct','Pro')
})