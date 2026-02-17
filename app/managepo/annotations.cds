using CatalogService as service from '../../srv/catalogservice';

annotate service.POs with @(
    UI.SelectionFields : [
        po_id,
        gross_amount,
        currency_code,
        overall_status
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : po_id
        },
        {
            $Type : 'UI.DataField',
            Value : partner_guid_node_key
        },
        {
            $Type : 'UI.DataField',
            Value : gross_amount
        },
        {
            $Type : 'UI.DataField',
            Value : currency_code
        },
        {
            $Type : 'UI.DataField',
            Value : overall_status
        }
    ]
);
