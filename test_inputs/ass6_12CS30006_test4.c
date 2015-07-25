

// prints string of characters
int prints(char * a);

// prints an integer
int printi(int  a);

// reads an integer
int readi(int * a);

// a utility function to read a single character
void readChar(char * a);

int lis( int arr[], int n )
{
   int dp[50], i, j, max = 0;
 
   /* Initialize LIS values for all indexes */
   for ( i = 0; i < n; i++ )
      dp[i] = 1;
    
   /* Compute optimized LIS values in bottom up manner */
   for ( i = 1; i < n; i++ )
      for ( j = 0; j < i; j++ )
         if ( arr[i] > arr[j] && dp[i] < dp[j] + 1)
            dp[i] = dp[j] + 1;
    
   /* Pick maximum of all LIS values */
   for ( i = 0; i < n; i++ )
      if ( max < dp[i] )
         max = dp[i];

   return max;
}
 
/* Driver program to test above function */
int main()
{
  int arr[50], n, i, err;
  prints("Longest Increasing Subsequence\n");
  prints("Enter number of elements ( < 50)\n");
  n = readi(&err);
  prints("Enter array elements\n");
  for(i = 0; i < n; i++) arr[i] = readi(&err);
  prints("Length of LIS is "); printi(lis( arr, n ) ); prints("\n");
  return 0;
}