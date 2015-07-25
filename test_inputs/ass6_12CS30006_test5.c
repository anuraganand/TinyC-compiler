// prints string of characters
int prints(char * a);

// prints an integer
int printi(int  a);

// reads an integer
int readi(int * a);

// a utility function to read a single character
void readChar(char * a);

void printMat(int a[][2]) {
    int i, j;
    for(i = 0; i < 2; i++) {
        for(j = 0; j < 2; j++) {
            printi(a[i][j]);
            prints(" ");
        }
        prints("\n");
    }
    prints("\n");
}

void copy(int a[][2],int b[][2]) {
    int i, j;
    for(i=0;i < 2;i++) {
        for(j=0;j< 2;j++) {
          a[i][j] = b[i][j];
        }
    }
}

void mult(int a[][2], int b[][2]) {
    int c[2][2], i, j, k;
    for(i=0;i < 2;i++) {
        for(j=0;j < 2;j++) {
          c[i][j] = 0;
          for(k=0;k < 2;k++) {
            c[i][j] = (c[i][j] + a[i][k] * b[k][j]);
          }
        }
    }
    copy(a,c);
}

void power(int a[][2], int n) {
    int unit[2][2], i, j;
    for(i = 0; i < 2; i++)
        for(j = 0; j < 2; j++) {
            if(i == j) unit[i][j] = 1;
            else unit[i][j] = 0;
        }
    while(n > 0) {
        if(n % 2 == 1) {
            mult(unit, a);
        }
        mult(a, a);
        n = n / 2;
    }
    copy(a, unit);
}

int getFib(int n) {
    if(n <= 1) return n;
    int a[2][2];
    a[0][0] = 1; a[0][1] = 1;
    a[1][0] = 1; a[1][1] = 0;
    power(a, n - 1);
    return (a[0][0] + a[0][1]);
}

int main() {
    prints("Fibonacci Number using Matrix Multiplication O(logn)\n");
    int i;
    for(i = 0; i < 45; i++) {
        printi(i); prints(".\t"); 
        printi(getFib(i)); 
        prints("\n");
    }
    return 0;
}