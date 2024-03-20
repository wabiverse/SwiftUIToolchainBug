#include "CModule/CModule.h"

#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void CModuleDoSomething(const struct CModule* C)
{
  printf("Called CModule.doSomething id=%d\n", C->id);
}
