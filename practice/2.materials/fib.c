unsigned fib(unsigned n) {
    unsigned answ;
    if (n <= 1)
        answ = n;
    else
        answ = fib(n - 1) + fib(n - 2);
    return answ;
}
