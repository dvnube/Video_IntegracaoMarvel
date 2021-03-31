public with sharing class IntegracaoUtils {

    static IntegracaoUtils instance = null;

    public static IntegracaoUtils getInstance() {
        if (instance == null) {
            instance = new IntegracaoUtils();
        }

        return instance;
    }

    public String getTimestamp() {
        return String.valueOf(System.now().getTime()/1000);
    }

    public String getPrivateKey() {
        return MarvelAPIKeys__c.getOrgDefaults().PrivateKey__c;
    }

    public String getPublicKey() {
        return MarvelAPIKeys__c.getOrgDefaults().PublicKey__c;
    }

    public String getHash() {
        return 
        EncodingUtil.convertToHex(
            Crypto.generateDigest(
                'MD5',
                Blob.valueOf(getTimestamp() + getPrivateKey() + getPublicKey())
            )
        );
    }
}

