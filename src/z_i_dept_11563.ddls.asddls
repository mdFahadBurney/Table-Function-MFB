@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Gender'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity Z_I_DEPT_11563 as select from 
DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name : 'ZDEPT_DT' )
{
    key domain_name,
    key value_position,
    @Semantics.language : true
    key language,
    value_low as value,
    @Semantics.text: true
    text as Description
}
