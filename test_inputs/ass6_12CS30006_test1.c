
// prints string of characters
int prints(char * a);

// prints an integer
int printi(int  a);

// reads an integer
int readi(int * a);

// a utility function to read a single character
void readChar(char * a);

void swap(int *xp, int *yp)
{
    int temp = *xp;
    *xp = *yp;
    *yp = temp;
}
 
// Bubble Sort
void bubbleSort(int arr[], int n)
{
   int i, j;
   for (i = 0; i < n; i++)
   {
     for (j = 0; j < n-i-1; j++)
     {
        if (arr[j] > arr[j+1])
        {
            swap(&arr[j], &arr[j+1]);
        }
     }
   }
}
 
/* Function to print an array */
void printArray(int arr[], int size)
{
    int i;
    for (i=0; i < size; i++) {
        printi(arr[i]);
        prints(" ");
    }
    prints("\n");
}
 
// Driver program to test above functions
int main()
{
    prints("Bubble Sort Algorithm\n");
    int arr[50], err = 3, n, i, j;
    prints("Enter number of elements : ");
    n = readi(&err);
    prints("Enter array elements : \n");
    for(i = 0; i < n; ++i) {
        arr[i] = readi(&err);
    }
    prints("Input array: \n");
    printArray(arr, n);
    bubbleSort(arr, n);
    prints("Sorted array: \n");
    printArray(arr, n);
    return 0;
}