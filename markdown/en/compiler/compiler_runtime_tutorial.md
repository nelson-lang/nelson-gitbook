# compiler\_runtime\_tutorial

Tutorial: one runtime for multiple applications.

## 📝 Syntax

- compiler.runtime.customInstaller(name, [first, second], 'RuntimeDelivery', 'installer')

## 📄 Description


Run these three blocks in order on Windows with Inno Setup 6 installed on the build machine. The generated installer contains the runtime required by both applications, not the applications themselves. Distribute their Results.Files separately. 

This example installs into a private temporary directory using /PORTABLE=1 and selects it explicitly through NELSONC\_RUNTIME\_ROOT. A normal registered installation is found automatically by current launchers. The local uninstaller in target removes the shared runtime; it leaves the application executables in place. 

Block 3 uses the noninteractive runtime arguments. To use a response file instead, write agreeToLicense=yes, destinationFolder=the absolute target and outputFile=a new log path on separate lines, then invoke the installer with -inputfile followed by that file's path. Retain /CURRENTUSER /PORTABLE=1 for this isolated example; omit /PORTABLE=1 for a registered shared installation. 

If the installer process is interrupted, run the installation command from block 3 again with the same installer and target. Do not delete .nelson-runtime-update. The installer checks its recovery journal and completes the installation before the applications are run. A different package is refused while an incomplete update remains. Modified files or damaged recovery data require inspection rather than forced replacement; see compiler.runtime.customInstaller for limits and retained recovery directories.

## 💡 Examples

1. Build two applications

```matlab
ncc('--help');
work = tempname();
mkdir(work);
entryA = fullfile(work, 'shared_one.m');
entryB = fullfile(work, 'shared_two.m');
filewrite(entryA, 'function shared_one(); disp(''SHARED_ONE_OK''); end');
filewrite(entryB, 'function shared_two(); disp(sin(0)); disp(''SHARED_TWO_OK''); end');
first = compiler.build.standaloneApplication(entryA, 'OutputDir', fullfile(work, 'one'));
second = compiler.build.standaloneApplication(entryB, 'OutputDir', fullfile(work, 'two'));
```
2. Package their shared runtime

```matlab
compiler.runtime.customInstaller('SharedRuntime', [first, second], ...
  'RuntimeDelivery', 'installer', 'OptionalDependencies', 'none', ...
  'OutputDir', fullfile(work, 'installer'));
installer = fullfile(work, 'installer', 'SharedRuntime.exe');
```
3. Install and run both applications

```matlab
target = fullfile(work, 'runtime');
[status, output] = system(['"', installer, ...
  '" -agreeToLicense yes -destinationFolder "', target, '" /CURRENTUSER /PORTABLE=1'], 90);
asserts.istrue(status == 0, output);
previous = getenv('NELSONC_RUNTIME_ROOT');
restore = onCleanup(@() setenv('NELSONC_RUNTIME_ROOT', previous));
setenv('NELSONC_RUNTIME_ROOT', target);
[status, output] = system(['"', first.Files{1}, '"'], 60);
asserts.istrue(status == 0 && contains(output, 'SHARED_ONE_OK'), output);
disp(output);
[status, output] = system(['"', second.Files{1}, '"'], 60);
asserts.istrue(status == 0 && contains(output, 'SHARED_TWO_OK'), output);
disp(output);
clear restore;
```


## 🔗 See also

[compiler.runtime.customInstaller](../compiler/compiler.runtime.customInstaller.md), [compiler_installer_tutorial](../compiler/compiler_installer_tutorial.md).
<!--
## 👤 Author

Allan CORNET
-->
