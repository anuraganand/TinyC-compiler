
// prints string of characters
int prints(char * a);

// prints an integer
int printi(int  a);

// reads an integer
int readi(int * a);

// a utility function to read a single character
void readChar(char * a);

void swap(int* a, int* b)
{
    int t = *a;
    *a = *b;
    *b = t;
}
 
/* This function takes last element as pivot, places the pivot element at its
   correct position in sorted array, and places all smaller (smaller than pivot)
   to left of pivot and all greater elements to right of pivot */
int partition (int arr[], int l, int h)
{
    int x = arr[h];    // pivot
    int i = (l - 1), j;  // Index of smaller element
 
    for (j = l; j <= h- 1; j++)
    {
        // If current element is smaller than or equal to pivot 
        if (arr[j] <= x)
        {
            i++;    // increment index of smaller element
            swap(&arr[i], &arr[j]);  // Swap current element with index
        }
    }
    swap(&arr[i + 1], &arr[h]);  
    return (i + 1);
}
 
/* arr[] --> Array to be sorted, l  --> Starting index, h  --> Ending index */
void quickSort(int arr[], int l, int h)
{
    if (l < h)
    {
        int p = partition(arr, l, h); /* Partitioning index */
        quickSort(arr, l, p - 1);
        quickSort(arr, p + 1, h);
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
    prints("Quick Sort Algorithm\n");
    int arr[50], n, i, err;
    prints("Enter n ( < 50) :\n");
    n = readi(&err);
    for(i = 0; i < n; i++) arr[i] = readi(&err);
    prints("Input array: \n");
    printArray(arr, n);    
    quickSort(arr, 0, n-1);
    prints("Sorted array: \n");
    printArray(arr, n);
    return 0;
}