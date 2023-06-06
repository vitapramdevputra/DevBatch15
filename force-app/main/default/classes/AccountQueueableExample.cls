public class AccountQueueableExample implements queueable {

    public list<account> accList;
    // //constructor, we are passing list of account
    // public AccountQueueableExample(List<account> accList) {
    //     this.accList = accList;
    // }

    //queueable must have execute method(queueablecontext parameter)
    public void execute(QueueableContext qc){
        for (account eachAcc : accList) {
            eachAcc.name+= ' --SI';
        }
        update accList;
    }
}