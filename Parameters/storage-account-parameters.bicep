// parameters
@description('Specify SKU')
@allowed([
  'Standard_LRS'
  'Standard_GLS'
])
@minLength(3)
@maxLength(24)
param sku string

param storageAccountName string = concat('storage', uniqueString(resourceGroup().id))

param allowBlobPublicAccess bool = false

@allowed([
  'North Europe'
  'West Europe'
])
param location string

// resources
resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storageAccountName
  location: resourceGroup().location
  kind: 'StorageV2'
  sku: {
    name: sku
  }
  properties: {
    accessTier: 'Hot'
    allowBlobPublicAccess: allowBlobPublicAccess
  }
}

