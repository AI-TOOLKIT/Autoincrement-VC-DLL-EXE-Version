//
// author Zoltan Somogyi, 2017
// license: you may use this script for any purpose as long as you keep this header intact!
// https://ai-toolkit.blogspot.be
//
#ifdef AUTOINCREMENTVERSION_EXPORTS
#define AUTOINCREMENTVERSION_API __declspec(dllexport)
#else
#define AUTOINCREMENTVERSION_API __declspec(dllimport)
#endif

// This class is exported from the AutoincrementVersion.dll
class AUTOINCREMENTVERSION_API CAutoincrementVersion {
public:
	CAutoincrementVersion(void);
	// TODO: add your methods here.

};
