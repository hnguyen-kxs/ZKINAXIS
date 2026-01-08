@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST, #UNION ]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite View Allocation with Param'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@VDM.viewType: #COMPOSITE

define view entity ZI_KX_AllocationParam
  with parameters
    P_RequirementType : zbdart
  as select from ZI_Allocation
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
      ReservationPlant,
      case  $parameters.P_RequirementType
                when '**' then '  '
                else $parameters.P_RequirementType  end as RequirementTypeParam
}
