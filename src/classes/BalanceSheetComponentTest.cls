/*
* @Description : A Test class for OptConfigController class
* @Reference   : 
* @CreatedDate  : 23 Nov, 2018
* @ModifiedDate : 
*/
@isTest
public with sharing class BalanceSheetComponentTest {
    
    static testmethod void  test_getAssets(){
        Account a = new Account();
        a.name = 'Test Account';
       // a.Business_Tax_ID__c = 'PSDFG4567';
        insert a;
        
        List<FinancialAssetStatement__c> fasList = new List<FinancialAssetStatement__c>();
        for(Integer i=0; i<5; i++) {
            FinancialAssetStatement__c fas = new FinancialAssetStatement__c();
            fas.FinancialYear__c = String.valueof(2010+(i+1));
            fas.Cash__c = 20.00;
            fas.AccountsReceivable__c = 20.00;
            fas.Inventory__c = 20.00;
            fas.Other_Assets__c = 20.00;
            fas.fixtures_and_equipment__c = 20.00;
            fas.Other_Current_Assets__c = 20.00;
            fas.Account__c = a.Id;
            fasList.add(fas);
        }
        
        insert fasList;
        
        Test.startTest();        
        BalanceSheetComponent.getAssets(a.Id);
        Test.stopTest();
    }
    
    static testmethod void  test_getLiablities(){
        Account a = new Account();
        a.name = 'Test Account';
       // a.Business_Tax_ID__c = 'PSDFG4567';
        insert a;
        
        List<FinancialLiabilityStatement__c> fasList = new List<FinancialLiabilityStatement__c>();
        for(Integer i=0; i<5; i++) {
            FinancialLiabilityStatement__c fas = new FinancialLiabilityStatement__c();
            fas.FinancialYear__c = String.valueof(2010+(i+1));
            fas.Account__c = a.Id;
            fas.AccountsPayable__c = 20.00;
            fas.Notes_payable__c = 20.00;
            fas.Long_term_liability__c = 20.00;
            fas.Other_Current_Liabilities__c = 20.00;
            fas.OtherLongtermliability__c = 20.00;
            fas.COMMON_STOCK__c = 20.00;
            fas.Retained_Earning__c = 20.00;
            fasList.add(fas);
        }
        
        insert fasList;
        
        Test.startTest();        
        BalanceSheetComponent.getLiablities(a.Id);
        Test.stopTest();
    }
}