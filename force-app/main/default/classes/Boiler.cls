public class Boiler {

    public void getBoiled(Integer speed){
        try{
            if(speed<=100){
                System.debug('boiling sir');
            }else{
                throw new BoilerException();
            }
        
        }catch(BoilerException e){
            speed =0;
            System.debug('Boiler Reset');
        }
    }

}