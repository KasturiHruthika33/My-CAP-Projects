sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"manageordersui/test/integration/pages/SalesOrdersList.gen",
	"manageordersui/test/integration/pages/SalesOrdersObjectPage.gen"
], function (JourneyRunner, SalesOrdersListGenerated, SalesOrdersObjectPageGenerated) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('manageordersui') + '/test/flp.html#app-preview',
        pages: {
			onTheSalesOrdersListGenerated: SalesOrdersListGenerated,
			onTheSalesOrdersObjectPageGenerated: SalesOrdersObjectPageGenerated
        },
        async: true
    });

    return runner;
});

