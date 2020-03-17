public class Pob {
    
    public static List<Integer> SortArray(List<Integer>intList){
         Integer Lee;
        boolean change =false;
        do{
            change = false;
        for (Integer i=0; i< intList.size(); i++){
            if(intList[i] > IntList[i+1]){
                change= true;
                Lee = intList[i+1];
                intList.set(intList[i+1],intList[i]);
                intList.set(intList[i],Lee);
            }
            }
        }while(change);
        return intList;
            
    }

}