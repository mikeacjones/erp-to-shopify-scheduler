%dw 2.0
output application/json
---
{
    locationId: payload[0].locationId,
    inventoryItemAdjustments: payload map {
        inventoryItemId: $.inventoryItemId,
        availableDelta: lookup('get-availability-delta', $, 10000)
    } filter $.availableDelta != 0
}