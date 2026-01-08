@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST, #UNION ]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite View Product UoM'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@VDM.viewType: #COMPOSITE

define view entity ZI_KX_ProdUoM
  as select from ZI_ProdUOM               as _ProdUoM
    inner join   ZI_InScopePlantMaterials as _InScopePlantMat on _ProdUoM.MaterialNumber = _InScopePlantMat.MaterialNumber
    inner join   ZI_UoM                   as _UoM             on _ProdUoM.AlternativeUnitOfMeasure = _UoM.IntMeasUnit
{

  key _ProdUoM.MaterialNumber,
  key _InScopePlantMat.Plant,
  key _ProdUoM.AlternativeUnitOfMeasure,
      _ProdUoM.GrossWeight,
      _ProdUoM.IntArticleNum,
      _ProdUoM.WeightUnit,
      _ProdUoM.NumeratorForUnitConversion,
      _ProdUoM.DenominatorForUnitConversion,
      _UoM.DecimalPlRounding,
      _UoM.Dimension,
      _UoM.Exponent,
      _UoM.ISOCode,
      _UoM.CommercialMeasUnit,
      _UoM.Denominator,
      _UoM.PrimaryCode,
      _UoM.Numerator
}
