@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST, #UNION ]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption  View of Allocation'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@VDM.viewType: #CONSUMPTION

define view entity ZC_KX_Allocation
  with parameters
    P_RequirementType : zbdart
  as select from ZI_KX_Allocation( P_RequirementType: $parameters.P_RequirementType  )
{
  key NumberOfReservation,
  key ItemNumberOfReservation,
  key RecordType,
      OrderNumber,
      HigherLevelAssemblyMaterial,
      RequirementType,
      RequirementQuantity,
      RequirementsDate,
      MovementType,
      DeliveryScheduleLineCounter,
      PurchasingDocumentNumber,
      ItemNumberOfPurchasingDocument,
      QuantityWithdrawn,
      StorageLocation,
      AccountNumberOfSupplier,
      ReservationMaterial,
      BOMItemNumber,
      DebitCreditIndicator,
      ReceivingStorageLocation,
      ReceivingPlant,
      ActivityNumber,
      Currency,
      ReservationPlant
}
