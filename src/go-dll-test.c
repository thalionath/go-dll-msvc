

// some quick and nasty fixes to make the generated header compile with MSVC
#define __SIZE_TYPE__ size_t
#define _Complex

#include "..\foo.h"

int main()
{
    PrintHello();
    return 0;
}