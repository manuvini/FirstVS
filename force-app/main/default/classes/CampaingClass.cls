public class CampaingClass {
    
    public static void catchDelete(List<Campaign> camp){
        
         Campaign_Arch__c campArch;
       List<Campaign_Arch__c> cList = new List<Campaign_Arch__c>();

       for(Campaign c: camp){
            	campArch = new Campaign_Arch__c();
			    campArch.name= c.name;
           		cList.add(campArch);
              
        }
              
        insert(clist);
        
        
    }

}