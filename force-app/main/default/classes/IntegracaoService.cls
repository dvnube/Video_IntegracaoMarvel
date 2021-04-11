public with sharing class IntegracaoService {

    static FINAL String METHOD_GET = 'GET';
    static IntegracaoService instance;
    static IntegracaoManager manager;
    static Map<String, String> endpoints = new Map<String, String> {
        'series' => 'http://gateway.marvel.com/v1/public/series'
    };

    public static IntegracaoService getInstance() {
        if (instance == null) {
            instance = new IntegracaoService();
        }

        return instance;
    }

    public MarvelResponseDataWrapper getResponse(String resource) {    
        manager = new IntegracaoManager();    
        manager.send(METHOD_GET, getEndpoint(resource));

        return (MarvelResponseDataWrapper) JSON.deserialize(manager.resp.getBody(), MarvelResponseDataWrapper.class);
    }

    private String getEndpoint(String resource) {
        String endpoint = endpoints.get(resource);
        endpoint += '?apikey=' + IntegracaoUtils.getInstance().getPublicKey();
        endpoint += '&ts='+ IntegracaoUtils.getInstance().getTimestamp();
        endpoint += '&hash=' + IntegracaoUtils.getInstance().getHash();

       return endpoint;
    }

}
