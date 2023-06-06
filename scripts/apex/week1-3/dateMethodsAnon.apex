DatetimeMethodsDemo dm = new DatetimeMethodsDemo();
dm.offerEndDateTime();
dm.subscriptionEndDate();
dm.calculateAgeInDays();
dm.calculateAgeInMonths();




datetime viBirthDate = datetime.newInstance(1990, 10, 9); //is this valid?
long vitapLongBirthDate = viBirthDate.getTime(); //this returns LONG data which is milliseconds from 1 Jan 1970 
system.debug('my birthDate in milliseconds: ' + vitapLongBirthDate);

//external system will ASK for DATETIME in milliseconds.