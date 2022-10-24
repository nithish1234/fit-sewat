public class ContractTriggerHelper {
    public static void contractBeforeInsertHelper(list<Contact> contactRecords){
        for(Contact thisContact:contactRecords){
             ContactBeforeInsertHelper.populateContactFields(thisContact);
             BaseValidation.checkPackageValidations(thisContact);
             BaseValidation.checkPackageDateRangeValidations(thisContact);
        }
    }
    public static void contractBeforeUpdateHelper(list<Contact> contactRecords,Map<Id,Contact> oldContactMap){
        for(Contact thisContact:contactRecords){
            if(oldContactMap.get(thisContact.Id).Package_Start_Date__c != thisContact.Package_Start_Date__c || oldContactMap.get(thisContact.Id).Package_End_Date__c != thisContact.Package_End_Date__c){
             	BaseValidation.checkPackageDateRangeValidations(thisContact);
            }
            
            if(thisContact.Active_Days__c == 0){
                thisContact.Member_Status__c = 'Package Expired';
            }
        }
    }
  
}