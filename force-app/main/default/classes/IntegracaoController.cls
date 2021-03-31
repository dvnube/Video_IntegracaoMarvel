public with sharing class IntegracaoController {
    @AuraEnabled
    public static MarvelResponseDataWrapper getSeries() {
        try {
            return IntegracaoService.getInstance().getResponse('series');
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}
