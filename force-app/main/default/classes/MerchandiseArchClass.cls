public class MerchandiseArchClass {
    public static void insertMerchArch(List<Merchandise__c> merch){
        
       Merchadise_Arch__c merchArch;
       List<Merchadise_Arch__c> mList = new List<Merchadise_Arch__c>();

       for(Merchandise__c m: merch){
            	merchArch = new Merchadise_Arch__c();
			    merchArch.name= m.name;
                merchArch.Merchandise_Arch_Desc__c	= m.Merchandise_Desc__c	;
                merchArch.M__c= m.Merchandise_Price__c	;
                merchArch.Merchandise_Arch_Stock__c	= m.Merchandise_Stock__c;
           		mList.add(merchArch);
        }
        
        
       
        insert(mlist);
    }

}