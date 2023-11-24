public class ExceptionHandling {
    public void getdivide(Integer a, Integer b){
        try{
            
            Integer res = a/b;
            System.debug('Result '+res);
			//Collection c;
            //c.getnames();
			List<String> name = new List<String>();
            name.get(5);
        }catch(MathException e){
            System.debug('Please donot divide by zero');
        }catch(NullPointerException e){
            System.debug('Please do not call a method with null');
        }catch(Exception e){
            System.debug('There is an exception' +e);
        }
    }
}