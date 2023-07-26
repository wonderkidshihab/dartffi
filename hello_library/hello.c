#include <stdio.h>
#include "hello.h"

int main()
{
    hello_world();
    add(1, 2);
    return 0;
}

// Note:
// ---only on Windows---
// Every function needs to be exported to be able to access the functions by dart.
void hello_world()
{
    printf("Hello World\n");
}

int add(int a, int b)
{
    return a + b;
}