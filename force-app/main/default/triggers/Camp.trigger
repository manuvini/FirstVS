trigger Camp on Campaign (before delete,after delete) {

        if(Trigger.isDelete && Trigger.isBefore){
            CampaingClass.catchDelete(Trigger.old);
        
        }

}