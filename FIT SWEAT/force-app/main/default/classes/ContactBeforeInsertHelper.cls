public class ContactBeforeInsertHelper {
    // field updates updates
    public static void populateContactFields(Contact con){
        con.Member_ID__c = getMemberId(con);
    }
    
    public static String getMemberId(Contact con){
        
        String memberIdPrefix = getmemberPrefix(con);
        system.debug('memberIdPrefix'+memberIdPrefix);
        return memberIdPrefix + String.valueOf(ContactQueryHelperDAO.getTotalContactCount()+1);
    }
    public static String getmemberPrefix(Contact con){
       	return ((con.FirstName).substring(0,1) + (con.LastName).substring(0,1)).toUpperCase();
    }
}