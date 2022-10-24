trigger ContactTriggger on Contact (before insert,after insert,before update) {

    if(trigger.isInsert){
        if(trigger.isBefore){
            ContractTriggerHelper.contractBeforeInsertHelper(trigger.new);
        }
         if(trigger.isAfter){
            // In Future
        }
    }
     if(trigger.isUpdate){
        if(trigger.isBefore){
             ContractTriggerHelper.contractBeforeUpdateHelper(trigger.new,Trigger.oldMap);
        }
         if(trigger.isAfter){
            
        }
    }
   
}