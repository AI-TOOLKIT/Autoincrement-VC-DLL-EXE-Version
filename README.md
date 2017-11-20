# Easy Pre-Build Automatic increment Version number in Visual Studio C++ project (DLL/EXE)

Follow the next steps to add an automatic pre-build increment to your DLL or EXE C++ project:

1. Add a version resource.

2. Add the following files (included in the repository) to your project: FindAndReplace.ps1, version.ps1 and version_define.ps1

3. Edit the version_define.ps1 file and change the version number to the minor current version of your DLL or EXE. Do not add extra spaces or characters on the version line!

4. Add a pre-build event to your VS project (Release and any other configuration) with the following script: 
  
  powershell.exe -ExecutionPolicy Bypass -File  $(ProjectDir)version.ps1 $(ProjectDir)AutoincrementVersion.rc $(ProjectDir)version_define.ps1 $(ProjectDir)FindAndReplace.ps1

5. In the above script change the file name 'AutoincrementVersion.rc' to your resource file name.

6. If you recompile your project the minor version number will be incremented. There will also be a dialog box reminding you that the resource (and version_define.ps1) file is changed and must be reloaded.

Possible Improvements:

- You may easily add the auto-increment of e.g. the major version.

Easy Pre-Build Automatic increment Version number in Visual Studio C++ project (DLL/EXE).

AI-TOOLKIT: https://ai-toolkit.blogspot.be

