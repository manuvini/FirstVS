public class AllArtimetaic {
	Integer a=10;
	Integer b=10;

    public void doAll(Integer a, Integer b){
        Integer res = a+b;
        System.debug('Result sum -'+ res);
        res = a-b;
        System.debug('Result sub-'+ res);
        res = a*b;
        System.debug('Result multi-'+ res);
        res = a/b;
        System.debug('Result div-'+ res);


    }

}