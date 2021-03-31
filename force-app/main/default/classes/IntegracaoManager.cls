public with sharing class IntegracaoManager {
    HttpRequest req;
    public HttpResponse resp {get; private set;}

    public IntegracaoManager() {
        req = new HttpRequest();
        req.setMethod('GET');        
    }

    public void send(String endpoint) {        
        try {
            req.setEndpoint(endpoint);
            resp = (new Http()).send(req); 
        } catch (Exception e) {
            throw e;
        }        
    }
}
