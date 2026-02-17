sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"liyon/po/managepo/test/integration/pages/POsList",
	"liyon/po/managepo/test/integration/pages/POsObjectPage",
	"liyon/po/managepo/test/integration/pages/POItemsObjectPage"
], function (JourneyRunner, POsList, POsObjectPage, POItemsObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('liyon/po/managepo') + '/test/flp.html#app-preview',
        pages: {
			onThePOsList: POsList,
			onThePOsObjectPage: POsObjectPage,
			onThePOItemsObjectPage: POItemsObjectPage
        },
        async: true
    });

    return runner;
});

