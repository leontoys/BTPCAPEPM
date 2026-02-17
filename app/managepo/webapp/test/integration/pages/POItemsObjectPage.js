sap.ui.define(['sap/fe/test/ObjectPage'], function(ObjectPage) {
    'use strict';

    var CustomPageDefinitions = {
        actions: {},
        assertions: {}
    };

    return new ObjectPage(
        {
            appId: 'liyon.po.managepo',
            componentId: 'POItemsObjectPage',
            contextPath: '/POs/items'
        },
        CustomPageDefinitions
    );
});