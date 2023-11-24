trigger Opp on Opportunity (before insert,after insert,before update,after update,before delete,after delete,after undelete) {
     if(Trigger.isUpdate && Trigger.isBefore){
    //Call the class
    OppTriggerClass.checkStatus(Trigger.old,Trigger.new);
    
    }

}