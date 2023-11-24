public class Calsi {
    
    public void refer(Integer a, Integer b){
        Addition add = new Addition();
		add.doSum(a,b);
        Subt sub = new Subt();
		sub.doSub();
		Multi mul = new Multi();
        mul.doMulti();
		Div div = new Div();
        div.doDiv();
		

    }

}