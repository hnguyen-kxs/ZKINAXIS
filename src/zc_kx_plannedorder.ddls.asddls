@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST, #UNION ]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View - Planned Order'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@VDM.viewType: #CONSUMPTION
define view entity ZC_KX_PlannedOrder
  as select from ZI_KX_PlannedOrder
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
