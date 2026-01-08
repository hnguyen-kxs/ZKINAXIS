@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST, #UNION ]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite View - Planned Order'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@VDM.viewType: #COMPOSITE
define view entity ZI_KX_PlannedOrder
  as select from ZI_PlannedOrder
{
  key PlannedOrder,
      FirmingIndforPlannedOrder,
      IDCapacityRequirementsRecord,
      PlannedTotalOrderQuantity,
      SalesOrderNumber,
      ItemNumberSalesOrder,
      StorageLocation,
      PlanOrdLeadingSchedulingLevel,
      PlanningMaterial,
      BaseUnitOfMeasure,
      PlannedOrderType,
      PlannedOrderEndDate,
      PlanningPlant,
      PlannedOrderStartDate,
      ProductionPlant,
      NumberOfReservation,
      BOMExplosionNumber,
      SpecialProcurementType,
      GRProcessingDurationInDays
}
