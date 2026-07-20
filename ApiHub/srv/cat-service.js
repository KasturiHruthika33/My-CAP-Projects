const cds = require('@sap/cds');
const httpClient = require('@sap-cloud-sdk/http-client');

module.exports = cds.service.impl(async function () {

    this.on('getSalesOrders', async (req) => {

        try {

            const service = await cds.connect.to('APIHub_srv');

            const response = await httpClient.executeHttpRequest(
                { destinationName: service.destination },
                {
                    method: "GET",
                    url: "/A_SalesOrder?$top=10",
                    headers: {
                        DataServiceVersion: "2.0",
                        Accept: "application/json"
                    }
                }
            );

            if (response.status === 200) {

                const salesOrders = response.data.d.results.map(x => ({
                    SalesOrder: x.SalesOrder,
                    SalesOrderType: x.SalesOrderType,
                    SalesOrganization: x.SalesOrganization,
                    SoldToParty: x.SoldToParty
                }));

                return salesOrders;

            } else {

                req.reject(response.status, response.statusText);

            }

        } catch (error) {

            req.error(500, error.message);

        }

    });

});