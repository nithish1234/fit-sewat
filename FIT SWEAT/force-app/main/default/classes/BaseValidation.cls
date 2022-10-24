public class BaseValidation {
   public static void checkPackageValidations(Contact contactRecord){
        if(contactRecord.Member_Status__c == 'In Progress' && (contactRecord.Package_Start_Date__c == null ||contactRecord.Package_End_Date__c == null)){
            contactRecord.addError(ValidationConstants.PACKAGE_DATE_NULL);
        }
    }
       public static void checkPackageDateRangeValidations(Contact contactRecord){
       if ((contactRecord.Package_Start_Date__c > contactRecord.Package_End_Date__c) || (contactRecord.Package_End_Date__c < contactRecord.Package_Start_Date__c)){
            contactRecord.addError(ValidationConstants.PACKAGE_DATE_OUT_OF_RANGE);
        }
    }
}