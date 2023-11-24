public class ConsumeRest {
    
    public void consumeWebServices(){
        
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST');
        request.setHeader('Content-Type','application/json;charset=UTF-8');

        request.setBody('{"name":"Tiger"}');
        
        HttpResponse response = http.send(request);

        if(response.getStatusCode() != 201){
            System.debug('The status code returned was not expected: '+ response.getStatusCOde() +' '+ response.getStatus());
        }else{
            System.debug(response.getBody());
        }


    }

}