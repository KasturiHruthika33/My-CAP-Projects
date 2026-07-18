using CatalogService as service from '../../srv/cat-service';
annotate service.SalesOrders with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ID',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'description',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : 'customerNo',
                Value : customerNo,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ID',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'description',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Label : 'customerNo',
            Value : customerNo,
        },
        {
            $Type : 'UI.DataField',
            Value : Items.itemNo,
            Label : 'itemNo',
        },
        {
            $Type : 'UI.DataField',
            Value : Items.material,
            Label : 'material',
        },
        {
            $Type : 'UI.DataField',
            Value : Items.quantity,
            Label : 'quantity',
        },
        {
            $Type : 'UI.DataField',
            Value : Items.ID,
            Label : 'ID',
        },
    ],
);

