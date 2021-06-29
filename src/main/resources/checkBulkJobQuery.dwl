output text/plain
---
"
{
    node(id: \"$(vars.bulkOperationID default "")\") {
      ... on BulkOperation {
            id
            status
            errorCode
            createdAt
            completedAt
            objectCount
            fileSize
            url
            partialDataUrl
        }
    }
}
"