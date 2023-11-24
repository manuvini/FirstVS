public class CustomSettingsDemo {
    
    public static void CustomsettingExample(){
        
        myDataset__c mds = myDataset__c.getInstance('mydataset');
        System.debug('Value of My Custom Setting = '+ mds);
        
        
        if(mds.isActive__c == true){
            System.debug('Please call my trigger');
        }else{
            System.debug('Sorry, I cannot');
        }
    }

}