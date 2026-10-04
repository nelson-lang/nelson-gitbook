# compiler_installer_tutorial

Build, install and run a Windows application.

## 📝 Syntax

- compiler.package.installer(result, 'Options', options)

## 📄 Description

This tutorial requires Windows and Inno Setup 6 on the build machine. Execute all three blocks in one session. They use a temporary destination without uninstall registration or global shortcuts.

The first block builds the application, the second creates an offline installer with its minimal runtime, and the third installs and runs it without an external runtime. Expected output is INSTALLER_TUTORIAL_OK. Rebuild applications with the current launchers to use adjacent-runtime discovery.

For normal distribution, deliver the generated .exe and run the installer interactively. Omit /PORTABLE=1 to register the application and its shortcut normally. Installation requests elevation by default; /CURRENTUSER selects per-user installation.

The last block uses the noninteractive deployment arguments and writes a new log. The alternative -inputFile accepts a UTF-8 file with agreeToLicense=yes first, then applicationFolder=absolute-path and outputFile=new-log-path on separate lines. desktopShortcut and startMenuShortcut can be set to true only through that file; both default to false. /PORTABLE=1 always disables global shortcuts.

RuntimeDelivery='none' delivers only the application when a compatible runtime is already available. RuntimeDelivery='web' is not yet available. Set PackageType='zip' for a ZIP containing the installer. Installer AdditionalFiles installs external files; use build AdditionalFiles to embed resources into the executable.

The installed directory contains an unins\*.exe uninstaller. Uninstallation removes distributed files but retains files subsequently created by the user. Generation does not modify the built executable or the source Nelson runtime.

To share a runtime, use the same offline installer with -applicationFolder "C:\\Apps\\Hello" -runtimeFolder "C:\\NelsonRuntimes" /CURRENTUSER, after -agreeToLicense yes. Do not use /PORTABLE=1 or -destinationFolder. The runtime is registered beneath C:\\NelsonRuntimes in its engine-fingerprint subdirectory. Other compatible applications can use that parent and extend its dependency inventory. Uninstall a previous private installation before switching; the shared runtime survives application removal and has its own unins\*.exe.

The second block also rebuilds the installer in a different output directory and compares its SHA-256 digest. With unchanged inputs and the same Inno Setup distribution, both unsigned installers are byte-identical. See the reproducibility conditions in [compiler.package.installer](../compiler/compiler.package.installer.md).

## 💡 Examples

Step 1

```matlab
ncc('--help');
work = tempname();
mkdir(work);
entry = fullfile(work, 'hello_install.m');
filewrite(entry, 'function hello_install(); disp(''INSTALLER_TUTORIAL_OK''); end');
result = compiler.build.standaloneApplication(entry, ...
  'OutputDir', fullfile(work, 'build'));
```

Step 2

```matlab
options = compiler.package.InstallerOptions(result, ...
  'RuntimeDelivery', 'installer', 'OptionalDependencies', 'none', ...
  'OutputDir', fullfile(work, 'distribution'));
brand = fullfile(modulepath('compiler'), 'examples', 'standalone', 'app_icon.png');
options.InstallerIcon = brand;
options.InstallerLogo = brand;
options.AddRemoveProgramsIcon = brand;
compiler.package.installer(result, 'Options', options);
setup = fullfile(options.OutputDir, [options.InstallerName, '.exe']);
options.OutputDir = fullfile(work, 'distribution_repeat');
compiler.package.installer(result, 'Options', options);
repeatedSetup = fullfile(options.OutputDir, [options.InstallerName, '.exe']);
asserts.isequal(sha256(setup, '-file'), sha256(repeatedSetup, '-file'));
```

Step 3

```matlab
target = fullfile(work, 'installed');
[status, output] = system(['"', setup, ...
  '" -agreeToLicense yes -applicationFolder "', target, ...
  '" -outputFile "', fullfile(work, 'installation.log'), '" /CURRENTUSER /PORTABLE=1'], 120);
if status ~= 0
  error(output);
end
oldRuntime = getenv('NELSONC_RUNTIME_ROOT');
restoreRuntime = onCleanup(@() setenv('NELSONC_RUNTIME_ROOT', oldRuntime));
setenv('NELSONC_RUNTIME_ROOT', '');
[status, output] = system(['"', fullfile(target, 'hello_install.exe'), '"'], 60);
clear restoreRuntime;
if status ~= 0
  error(output);
end
disp(output);
```

## 🔗 See also

[compiler.package.installer](../compiler/compiler.package.installer.md), [compiler.package.InstallerOptions](../compiler/compiler.package.InstallerOptions.md).

<!--
## 👤 Author

Allan CORNET
-->
