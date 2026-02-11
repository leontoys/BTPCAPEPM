namespace cappo.cds;

//creates alias from the last dot ie, master and transaction
using { liyon.db.master, liyon.db.transaction  } from './datamodel';

context cdsviews {
    
    define view POWorklist as 
        select from transaction.purchaseorder {
            key po_id as PurchaseOrderId,
            key items.po_item_pos as ItemPosition,
            partner_guid.bp_id as ParnterId,
            partner_guid.company_name as CompanyName,
            gross_amount as GrossAmount,
            net_amount as NetAmount,
            tax_amount as TaxAmount,
            currency as CurrencyCode,
            overall_status as Status,
            items.product_guid.product_id as ProductId,
            items.product_guid.description as ProductName,
            partner_guid.address_guid.city as City,
            partner_guid.address_guid.country as Country
        }

}
