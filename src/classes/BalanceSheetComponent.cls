public class BalanceSheetComponent {
@AuraEnabled(cacheable=true)
    public static Map<String, String> getAssets(Id accountId){
        Map<String, String> yearAssetMap = new Map<String, String>();
        List<FinancialAssetStatement__c> assetList = [SELECT Id, Name, FinancialYear__c FROM FinancialAssetStatement__c where Account__c =: accountId ORDER BY FinancialYear__c DESC NULLS LAST];
        for(FinancialAssetStatement__c asset : assetList){
            yearAssetMap.put(asset.FinancialYear__c,asset.Id);
        }
        System.debug('yearAssetMap::' + yearAssetMap);
        return yearAssetMap;
    }
    
     @AuraEnabled(cacheable=true)
    public static Map<String, String> getdependencies(Id accountId){
        Map<String, String> yearLiablityMap = new Map<String, String>();
        List<FinancialLiabilityStatement__c> liablityList = [SELECT Id, Name, Account__c, FinancialYear__c FROM FinancialLiabilityStatement__c where Account__c =: accountId];
        for(FinancialLiabilityStatement__c lia : liablityList){
            yearLiablityMap.put(lia.FinancialYear__c,lia.Id);
        }
        System.debug('yearLiablityMap::' + yearLiablityMap);
        return yearLiablityMap;
    }
         @AuraEnabled(cacheable=true)
    public static Map<String, String> getAllDependencies(Id accountId){
        Map<String, String> yearLiablityMap = new Map<String, String>();
        List<FinancialLiabilityStatement__c> liablityList = [SELECT Id, Name, Account__c, FinancialYear__c FROM FinancialLiabilityStatement__c where Account__c =: accountId];
        for(FinancialLiabilityStatement__c lia : liablityList){
            yearLiablityMap.put(lia.FinancialYear__c,lia.Id);
        }
        System.debug('yearLiablityMap::' + yearLiablityMap);
        return yearLiablityMap;
    }
    @AuraEnabled(cacheable=true)
    public static Map<String, String> getLiablities(Id accountId){
        Map<String, String> yearLiablityMap = new Map<String, String>();
        List<FinancialLiabilityStatement__c> liablityList = [SELECT Id, Name, Account__c, FinancialYear__c FROM FinancialLiabilityStatement__c where Account__c =: accountId];
        for(FinancialLiabilityStatement__c lia : liablityList){
            yearLiablityMap.put(lia.FinancialYear__c,lia.Id);
        }
        System.debug('yearLiablityMap::' + yearLiablityMap);
        return yearLiablityMap;
    }
     @AuraEnabled(cacheable=true)
    public static Map<String, String> getAllLiablities(Id accountId){
        Map<String, String> yearLiablityMap = new Map<String, String>();
        List<FinancialLiabilityStatement__c> liablityList = [SELECT Id, Name, Account__c, FinancialYear__c FROM FinancialLiabilityStatement__c where Account__c =: accountId];
        for(FinancialLiabilityStatement__c lia : liablityList){
            yearLiablityMap.put(lia.FinancialYear__c,lia.Id);
        }
        System.debug('yearLiablityMap::' + yearLiablityMap);
        return yearLiablityMap;
    }
}