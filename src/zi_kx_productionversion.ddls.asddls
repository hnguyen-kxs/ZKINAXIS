@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST, #UNION ]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite view - Production Version'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #M,
    dataClass: #MIXED
}
@VDM.viewType: #COMPOSITE
define view entity ZI_KX_ProductionVersion
  as select from ZI_ProductionVersion
{
  key MaterialNumber,
  key Plant,
  key ProductionVersion,
      MaxLotSizeQty,
      MinLotSizeQty,
      EffectiveIndate,
      EffectiveOutdate,
      KeyForTaskListGroup,
      BOMAlternate,
      ProductionVersionLock,
      ProdVersionProcurementType,
      GroupCounter,
      TaskListType,
      SpecialProcurementType,
      BOMUsage,
      DistKeyForQtyProduced,
      TransferPlant,
      ProcurementSubType,
      StandardPrice,
      LotSizingProcedure,
      FixedLotSizeQuantity,
      LotSizeRoundingQuantity,
      BaseUnit,
      GoodsReceiptDuration,
      PlannedDeliveryDurationInDay,
      PlanningTimeFence,
      AssemblyScrapPercent,
      ProcurementType,
      MaximumLotSizeQuantity,
      MinimumLotSizeQuantity,
      InHouseProductionTime,
      HasProductionVersion,
      SpecialProcurementIndicator,
      FactoryCalendar
      
}
