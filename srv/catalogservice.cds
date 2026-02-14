using { liyon.db.master, liyon.db.transaction } from '../db/datamodel';
using { cappo.cds.cdsviews } from '../db/cdsviews';

//by default the name comes up only till the next upper word
//so to give it exact name add annotation
service CatalogService @(path:'CatalogService') {

    entity EmployeeSet as projection on master.employees;

    entity AddressSet as projection on master.address;

    entity BusinessParnterSet as projection on master.businesspartner;

    //entity ProductSet as projection on master.product;- need to revist the error

    entity POs as projection on transaction.purchaseorder
    actions {
        //bound action as it bound to an instance of PO
        //we will get the IDs of the POs in our implementation
        action boost() returns POs
    }

    entity POItems as projection on transaction.poitems;

    entity ProductViewSet as projection on cdsviews.ProductView;

    //unbound function
    //to return multiple write array of
    function mostExpensiveOrder() returns POs

}

