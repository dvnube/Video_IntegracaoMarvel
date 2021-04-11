public with sharing class IntegracaoManager {
    HttpRequest req;
    public HttpResponse resp {get; private set;}


    public IntegracaoManager() {
        req = new HttpRequest();
    }

    public void send(String method, String endpoint) {
        req.setMethod(method); 
        req.setEndpoint(endpoint);
        try {
            resp = (new Http()).send(req); 
        } catch (Exception e) {
            throw e;
        }        
    }
}
