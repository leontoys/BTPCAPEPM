sap.ui.define(['sap/fe/test/ListReport'], function(ListReport) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ListReport(
        {
            appId: 'liyon.po.managepo',
            componentId: 'POsList',
            contextPath: '/POs'
        },
        CustomPageDefinitions
    );
});