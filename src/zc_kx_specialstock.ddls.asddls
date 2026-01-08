@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST, #UNION ]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View - Special Stock'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #M,
    dataClass: #MIXED
}
@VDM.viewType: #CONSUMPTION
define view entity ZC_KX_SpecialStock
  as select from ZI_KX_SpecialStock
{
  key AccountNumberOfSupplier,
  key MaterialNumber,
  key SpecialStockIndicator,
  key Plant,
      StockInQualityInspection,
      ValuatedUnrestrictedUseStock
}
