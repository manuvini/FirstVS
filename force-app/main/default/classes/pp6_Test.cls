@isTest
public class pp6_Test {
    
    
    public static testMethod void pp6Test(){
        pp6 p = new pp6();
        p.test();
        p.test2();
        Integer x = p.test3(10,20);
        System.assertEquals(30,x,'  hi ');
        
    }
    

}