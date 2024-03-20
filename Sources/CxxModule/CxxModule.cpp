#include "CxxModule/CxxModule.h"

#include <iostream>

CxxModule::CxxModule() 
{}

void CxxModule::doSomething()
{
  std::cout << "Called CxxModule::doSomething()" << std::endl;
}
