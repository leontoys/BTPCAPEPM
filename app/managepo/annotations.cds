using CatalogService as service from '../../srv/catalogservice';

annotate service.POs with @(
    UI.SelectionFields : [
        po_id,
        gross_amount,
        currency_code,
        overall_status,
        partner_guid.address_guid.country,
        partner_guid.company_name
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : po_id
        },
        {
            $Type : 'UI.DataField',
            Value : partner_guid.company_name
        },
        {
            $Type : 'UI.DataField',
            Value : partner_guid.address_guid.country
        },
        {
            $Type : 'UI.DataField',
            Value : gross_amount
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'CatalogService.boost',
            Label : 'boost',
            Inline : true
        },
        {
            $Type : 'UI.DataField',
            Value : currency_code
        },
        {
            $Type : 'UI.DataField',
            Value : overall_status_text,
            Criticality : overall_status_icon
        }
    ],
    UI.HeaderInfo :
        { 
            TypeName : 'Purchase Order',
            TypeNamePlural : 'Purchase Orders',
            Title : { Value : po_id },
            Description : { Value :  partner_guid.company_name},
            ImageUrl : 'data:image/png;base64,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'
        }
);
