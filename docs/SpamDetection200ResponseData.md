# SpamDetection200ResponseData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**classification** | **String** | Normalized classification returned by the LLM. | 
**confidence** | **Double** | Normalized confidence from 0 to 100. | 
**reason** | **String** | Short explanation in Slovak. | 
**signals** | **[String]** | Most important signals used for the classification. | 
**error** | **Bool** | True when the LLM call or response validation failed. | 
**errorMessage** | **String** | Short technical error reason. Raw LLM response is never returned here. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


