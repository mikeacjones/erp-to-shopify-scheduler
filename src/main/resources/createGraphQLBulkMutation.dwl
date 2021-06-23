%dw 2.0
output application/json
---
{
	query: "mutation inventoryBulkAdjustQuantityAtLocation(\$inventoryItemAdjustments: [InventoryAdjustItemInput!]!, \$locationId: ID!) {
			  inventoryBulkAdjustQuantityAtLocation(
			    inventoryItemAdjustments: \$inventoryItemAdjustments
			    locationId: \$locationId
			  ) {
			    inventoryLevels {
			      id
			    }
			    userErrors {
			      field
			      message
			    }
			  }
			}",
	variables: payload
}