@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST, #UNION ]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View Product UoM'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@VDM.viewType: #CONSUMPTION

define view entity ZC_KX_ProdUoM
  as select from ZI_KX_ProdUoM
{

  key MaterialNumber,
  key Plant,
  key AlternativeUnitOfMeasure,
      GrossWeight,
      IntArticleNum,
      WeightUnit,
      NumeratorForUnitConversion,
      DenominatorForUnitConversion,
      DecimalPlRounding,
      Dimension,
      Exponent,
      ISOCode,
      CommercialMeasUnit,
      Denominator,
      PrimaryCode,
      Numerator
}
