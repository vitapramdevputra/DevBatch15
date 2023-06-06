public class DatetimeMethodsDemo {
    public void calculateAgeInMonths(){
        date todayDate = date.today();
                                        //year, month, day
        date vitapBirthDate = date.newInstance(1990, 10, 9);

        integer ageInMonths = vitapBirthDate.monthsBetween(todayDate);
        system.debug('Vitap age in months is ' + ageInMonths);
    }

    public void calculateAgeInDays(){
        date todayDate = date.today();
                                        //year, month, day
        date vitapBirthDate = date.newInstance(1990, 10, 9);

        integer ageInDays = vitapBirthDate.daysBetween(todayDate);
        system.debug('Vitap age in days is ' + ageInDays);
    }

    public void subscriptionEndDate(){
        //first get today's date
        date todayDate = date.today();

        date endDate = todayDate.addDays(1000);
        system.debug('subscription end date : ' + endDate);

        //END date is today. 
        //subs was done for 1000 days
        //what is the start date?
        date newEndDate = date.today();

        date newStartDate = newEndDate.addDays(-1000);
        system.debug('new start date => ' + newStartDate);

        //to just get YEAR component from DATE
        integer newSDYear = newStartDate.year();
        //to get MONTH component from DATE use .month()
        integer newSDMOnth = newStartDate.month();
        system.debug('year of new start date is ' + newSDYear);
        system.debug('month of new start date is ' + newSDMOnth);
    }

    public void offerEndDateTime(){
        //current datetime
        datetime offerStart = datetime.now();

        datetime offerEnd = offerStart.addHours(51);
        system.debug('offer end datetime ' + offerEnd);
    }
}