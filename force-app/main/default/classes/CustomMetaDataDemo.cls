public class CustomMetaDataDemo {
    
    public static void getCustomMetaDataValue(){
        
        my_custom_metadata__mdt cmd = my_custom_metadata__mdt.getInstance('Update_Trigger_Status');
        System.debug('Value of Custom Meta Data '+ cmd);
        
        if(cmd.isActive__c == true){
            System.debug('TRue');
        }else{
            System.debug('False');
        }
    }

}