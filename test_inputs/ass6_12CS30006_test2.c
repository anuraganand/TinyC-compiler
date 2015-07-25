// prints string of characters
int prints(char * a);

// prints an integer
int printi(int  a);

// reads an integer
int readi(int * a);

// a utility function to read a single character
void readChar(char * a);

int fib(int x);

int fib(int n) {
    if(n <= 1) {
        return n;
    }
    return fib(n - 1) + fib(n - 2);
}

int fact(int n) {
    if(n <= 1) {
        return 1;
    }
    return n * fact(n - 1);
}

int main() {
    prints("Fibonacci numbers (recursion)\n");
    int f[20], fac[20], i;
    prints("First 20 fibonacci numbers are:\n");
    for(i = 0; i < 20; ++i) f[i] = fib(i);
    for(i = 0; i < 20; ++i) {
        printi(f[i]);
        prints("\n");
    }
    prints("Factorials of first 15 numbers are:\n");
    for(i = 0; i < 15; ++i) fac[i] = fact(i);
    for(i = 0; i < 15; ++i) {
        printi(fac[i]);
        prints("\n");
    }
    return 0;
}