@AbapCatalog.viewEnhancementCategory: [#PROJECTION_LIST, #UNION ]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Composite View for Supplier'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@VDM.viewType: #COMPOSITE

define view entity ZI_KX_Supplier
  as select from ZI_Supplier
{
  key AccountNumberofSupplier,
      Currency,
      CreditInformationNumber,
      Name,
      Region,
      Plant
}
