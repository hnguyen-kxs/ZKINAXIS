@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST, #UNION ]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View - Location Stock'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #L,
    dataClass: #MIXED
}
@VDM.viewType: #CONSUMPTION
define view entity ZC_KX_LocationStock
  as select from ZI_KX_LocationStock
{
  key StorageLocation,
  key MaterialNumber,
  key Plant,
      InventoryCorrectionFactor,
      StorageLocationMRPIndicator,
      TotalStockOfRestrictedBatches,
      StockInQualityInspection,
      ConsignmentStkQualityInsp,
      UnrestrictedConsignmentStock,
      BlockedConsignmentStock,
      ValuatedUnrestrictedStock,
      BlockedStock,
      StockInTransfer,
      StorageLocDescrip,
      StorageLocMRPInd
}
