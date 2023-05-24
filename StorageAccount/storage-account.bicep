resource storageaccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: 'kjhgfdsa'
  location: resourceGroup().location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}

// Storage account with condition
resource str 'Microsoft.Storage/storageAccounts@2022-09-01' = if (1==10) {
  kind: 'StorageV2'
  location: resourceGroup().location
  name: 'poiuytrewq'
  sku: {
    name: 'Standard_LRS'
  }
  // dependsOn: []
  properties: {
    accessTier: 'Hot'
    allowBlobPublicAccess: false
  }
}
