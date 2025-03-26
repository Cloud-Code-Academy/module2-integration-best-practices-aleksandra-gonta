/**
 * @description Scheduler class to run the exchange rate update on a schedule.
 * Scheduling should be done in Salesforce Setup Apex Classes -> Schedule Apex.
 */
global class ExchangeRateScheduler implements Schedulable {
    
    /**
     * @description Executes the scheduled job to update exchange rates.
     * @param context The SchedulableContext.
     */
    global void execute(SchedulableContext context) {
        try {
            ExchangeRateService.updateExchangeRates();
        } catch (Exception ex) {
            ErrorLogger.logError('ExchangeRateScheduler', ex);
        }
    }
}
