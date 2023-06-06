Candidate.companyName = 'SOFTINNOVAS';

system.debug('0. candidate count -> ' + candidate.count);
Candidate c1 = new Candidate();
c1.name = 'Jerry';
c1.gender = 'Male';
c1.details();
system.debug('1. candidate count -> ' + candidate.count);

Candidate c2 = new Candidate();
c2.name = 'George';
c2.gender = 'Male';
c2.details();

Candidate c3 = new Candidate();
c3.name = 'Elaine';
c3.gender = 'Female';
c3.details();
system.debug('2. candidate count -> ' + candidate.count);

Candidate.companyName = 'Salesforce';
c1.details();
c2.details();
c3.details();





Candidate c4 = new candidate();

system.debug('final. candidate count -> ' + candidate.count);