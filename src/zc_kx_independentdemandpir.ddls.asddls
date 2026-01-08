@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST, #UNION ]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption View - Independent Demand'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #A,
    sizeCategory: #L,
    dataClass: #MIXED
}
@VDM.viewType: #CONSUMPTION
define view entity ZC_KX_IndependentDemandPIR
  as select from ZI_KX_IndependentDemandPIR
{
  key MaterialNumber,
  key Plant,
  key RequirementType,
  key VersionNumberForIndependentReq,
  key RequirementsPlanNumber,
      IndependentRequirementsPointer,
      WithNoMRP,
      IndicatorVersionActive,
      ConsumptionIndicator,
      DeliveryOrderFinishDate,
      PlannedQuantity
}
