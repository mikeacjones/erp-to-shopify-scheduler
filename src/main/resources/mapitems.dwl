%dw 2.0
output application/json deferred=true
---
payload filter $.available? map {
    id: $.id,
    available: $.available,
    sku: $.item.sku
}