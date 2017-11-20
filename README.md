# Easy Pre-Build Automatic increment Version number in Visual Studio C++ project (DLL/EXE)

It is important to increment the version number of a DLL because upon installation the DLL will in most of the cases not be installed/updated if the version number is not incremented. There is no immediate solution for this in MS Visual Studio and you must edit the resource file every time before your build the project. If you forget to do this then your software will not function properly after the new version is installed. This repository contains an example project with a PowerShell scrip solution to this problem. A pre-build event and the PowerShell script will auto-increment the version number every time you build the project. The script will work in Windows 7, 8 and 10. In Windows 7 and 8 you may have to update your PowerShell version.

Follow the next steps to add an automatic pre-build version increment to your DLL or EXE C++ project:

1. Add a version resource.

2. Add the following files (included in the repository) to your project's root folder: FindAndReplace.ps1, version.ps1 and version_define.ps1

3. Edit the version_define.ps1 file and change the version number to the minor current version of your DLL or EXE. Do not add extra spaces or characters on the version line!

4. Add a pre-build event to your VS project (Release and any other configuration) with the following script (see the example project in the repository): 
  
  powershell.exe -ExecutionPolicy Bypass -File $(ProjectDir)version.ps1 $(ProjectDir)AutoincrementVersion.rc $(ProjectDir)version_define.ps1 $(ProjectDir)FindAndReplace.ps1

5. In the above script change the file name 'AutoincrementVersion.rc' to your resource file name.

6. If you recompile your project the minor version number will be incremented. There will also be a dialog box reminding you that the resource (and version_define.ps1) file is changed and must be reloaded.

Possible Improvements:

- You may easily add the auto-increment of e.g. the major version.

Easy Pre-Build Automatic increment Version number in Visual Studio C++ project (DLL/EXE).

AI-TOOLKIT: https://ai-toolkit.blogspot.be

