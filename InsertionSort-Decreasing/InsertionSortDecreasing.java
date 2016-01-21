import java.io.*;

public class InsertionSortDecreasing{

	public static void main(String[] args) throws IOException{
		int[] arr1 = {4,1,5,7,2,3,9};
		InsertionSortDecreasing(arr1);
	}

	public static void InsertionSortDecreasing(int[] arr){
		int key = 0;
		int i = 0;
		for(int j=1; j <= arr.length-1; j++){
			key = arr[j];
			i = j - 1;
			while (i >= 0 && arr[i] < key) {
				arr[i+1] = arr[i];
				i = i - 1;
			}
			arr[i+1]=key;
		}
		System.out.print("{");
		for(int k=0; k<arr.length; k++){
			System.out.print(arr[k]);
			if (k<arr.length-1){
				System.out.print(",");
			}
		}
		System.out.print("}");
	}
}