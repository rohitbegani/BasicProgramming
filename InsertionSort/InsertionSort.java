import java.io.*;

public class InsertionSort{
    
    public static void main(String[] args) throws IOException{
        int[] arr1 = {4,1,5,7,2,3,9};
        InsertionSort(arr1);
    }
    
    public static void InsertionSort(int[] A){
        int key = 0;
        int i = 0;
        for(int j = 1; j < A.length-1; j++){
            key = A[j];
            i = j - 1;
            while (i >= 0 && A[i] > key){
                A[i+1] = A[i];
                i = i - 1;
            }
            A[i+1] = key;
        }
        System.out.print("{");
        for(int k=0; k<A.length; k++){
            System.out.print(A[k]);
            if (k<A.length-1){
                System.out.print(",");
            }
        }
        System.out.print("}");
    }
}

