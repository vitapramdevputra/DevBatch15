string str_cron = '13 13 13 * * ?'; //class runs every day at 1:13:13 pm
AccountSchedulable acs = new AccountSchedulable();

system.schedule('account schedule 13 13', str_cron, acs);