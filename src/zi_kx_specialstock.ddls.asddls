@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST, #UNION ]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite View - Special Stock'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #M,
    dataClass: #MIXED
}
@VDM.viewType: #COMPOSITE
define view entity ZI_KX_SpecialStock
  as select from ZI_SpecialStock
{
  key AccountNumberOfSupplier,
  key MaterialNumber,
  key SpecialStockIndicator,
  key Plant,
      StockInQualityInspection,
      ValuatedUnrestrictedUseStock
}
