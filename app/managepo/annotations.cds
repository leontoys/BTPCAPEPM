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
            $Type : 'UI.DataField',
            Value : currency_code
        },
        {
            $Type : 'UI.DataField',
            Value : overall_status
        }
    ],
    UI.HeaderInfo :
        { TypeName : 'Purchase Order',
            TypeNamePlural : 'Purchase Orders'
        }

);
