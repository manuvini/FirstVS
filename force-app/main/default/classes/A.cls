public class A {
	@future
    public  static void test(){
        System.debug('I am Class A');
        System.enqueueJob(new B());
    }
}