output application/json deferred=true
---
payload filter ($.item? and $.item.variant.product.status == "ACTIVE") map  {
	sku: $.item.sku,
	locationId: ($.location.id splitBy '/')[-1],
	inventoryLevelId: (($.id splitBy '/')[-1] splitBy '?')[0],
	available: $.available,
	inventoryItemID: ($["__parentId"] splitBy '/')[-1],
	status: $.item.variant.product.status
}