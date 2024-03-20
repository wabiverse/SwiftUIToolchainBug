#ifndef __C_MODULE_H__
#define __C_MODULE_H__

#ifdef __cplusplus
extern "C" {
#endif // __cplusplus

struct CModule
{
  int id;
  void (*doSomething)(const struct CModule*);
};

void CModuleDoSomething(const struct CModule* C);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif // __C_MODULE_H__
