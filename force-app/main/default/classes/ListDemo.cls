public class ListDemo {
    public static void candidatesList(){
        List<string> listC = new list<string>();
        system.debug(listC);

        listC.add('Marc');
        listC.add('Bill');
        listC.add('Kunal');
        listC.add('Marc');
        system.debug('list of candidates ==> ' + listC);
    }
    //i is index 
    public static string candidateList(integer i){
        
        List<string> listC = new list<string>();
        system.debug(listC);

        listC.add('Marc'); //0
        listC.add('Bill'); //1
        listC.add('Kunal');//2
        listC.add('Marc'); //3
        system.debug('list of candidates ==> ' + listC);

        string returnValue = '';
        //size -> 4
        //maximum index? 3 (1 less than size OR  size - 1)
        integer size = listC.size(); //4
        system.debug('check i < size ==> ' + (i < size));
        system.debug('check (i >= 0 && i < size) ==> ' + (i >= 0 && i < size));
        if (i >= 0 && i < size) {
            returnValue = listC.get(i);//what will this return us?
        } else {
            returnValue = 'No such value exists';
        }

        return returnValue;
    }

    public static void randomIntegerList() {
        List<integer> intList = new list<integer>();
        intList.add(90);//0
        intList.add(15);//1
        intList.add(77);//2
        intList.add(21);//3
        intList.add(15);//4
        intList.add(15);//5
        system.debug('int list ==> ' + intList);
        integer size = intList.size();
        system.debug('size of list is ' + size);

        integer int3 = intList.get(3);
        //OR
        integer int31 = intList[3];
        system.debug('int3 is ' + int3);
        system.debug('int31 is ' + int31);
    }

    public static void friendList() {
        list<string> friends = new list<string>();
        friends.add('Sachin');
        friends.add('sachin');
        friends.add('Arpan');
        friends.add('arpan');
        friends.add('Erik');
        friends.add('Rhea');
        friends.add('Bro');
        system.debug('before ' + friends);

        friends.sort();//alphabetically order list elements
        system.debug('after ' + friends);
    }

    //check if list contains the checkFriend
    public static void friendList(string checkFriend) {
        list<string> friends = new list<string>();
        friends.add('Sachin');
        friends.add('sachin');
        friends.add('Arpan');
        friends.add('arpan');
        friends.add('Erik');
        friends.add('Rhea');
        friends.add('Bro');
        system.debug('before ' + friends);

        //how to check if list contains 'checkFriend' string?
            //A. use contains methdo
        
        boolean check = friends.contains(checkFriend);//contains method is case sensitive.

        system.debug(checkFriend + ' exists in list? ' + check);
        //friends.sort();//alphabetically order list elements
        //system.debug('after ' + friends);
    }

   
}