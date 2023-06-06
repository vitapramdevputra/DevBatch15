public class MethodsDemo2 {
    //create method, which accepts string, and checks if that string contains a or A.
    //return true if contains, else false.
    public Boolean nameContainsA(string str){
        boolean containsA = str.containsIgnoreCase('a');
        return containsA;
    }
}