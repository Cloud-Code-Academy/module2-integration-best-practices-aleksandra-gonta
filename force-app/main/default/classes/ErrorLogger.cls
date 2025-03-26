public class ErrorLogger {
    public static void logError(String errorSource, Exception ex) {
        Error_Log__c errorLog = new Error_Log__c(
            Error_Source__c = errorSource,
            Error_Message__c = ex.getMessage(),
            Timestamp__c = System.now()
        );
       
        
        try {
            insert errorLog;
        } catch (Exception loggingException) {
            System.debug('Error logging failed: ' + loggingException.getMessage());
        }
    }

    public static void logError(String errorSource, String customErrorMessage) {
        Error_Log__c errorLog = new Error_Log__c(
            Error_Source__c = errorSource,
            Error_Message__c = customErrorMessage,
            Timestamp__c = System.now()
        );
        
        try {
            insert errorLog;
        } catch (Exception loggingException) {
            System.debug('Error logging failed: ' + loggingException.getMessage());
        }
    }
}
