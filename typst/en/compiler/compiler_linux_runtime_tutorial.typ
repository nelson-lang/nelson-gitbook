#import "nelson_help.typ": *

= compiler\_linux\_runtime\_tutorial <compiler:compiler_linux_runtime_tutorial>

Tutorial: a shared minimal runtime on Linux.

== Syntax

- #raw("compiler.runtime.customInstaller(name, [first, second], 'RuntimeDelivery', 'installer')");

== Description

Run these blocks in order on Linux with the optional compiler module installed. The .install contains only the common runtime, not the applications. This walkthrough uses a private configuration directory and a writable temporary destination; no administrator privileges or global PATH changes are needed.

 Both executables discover the installed runtime through their interpreter fingerprint registration. The example then removes the shared runtime with its independent uninstaller, leaving the application executables. Operation locks, a completion receipt and any user files remain in the destination.

 After an interrupted installation, rerun the same installer command with the same destination and XDG configuration. Do not delete .nelson-runtime\/update.json to bypass recovery. See compiler.runtime.customInstaller for validation limits and retained temporary files.

 After an interrupted uninstallation, run .nelson-runtime\/uninstall again. Its separate remove.json journal supports repeated recovery. A complete receipt means removal finished; the uninstaller removes itself after recording that state. Do not edit or delete the journal. A new installer can reuse the directory only when it contains no preserved user files or unrecognized leftovers.


== Examples

1. Build two applications

``````matlab
ncc('--help');
work = tempname();
mkdir(work);
entryA = fullfile(work, 'shared_one.m');
entryB = fullfile(work, 'shared_two.m');
filewrite(entryA, 'function shared_one(); disp(''SHARED_ONE_OK''); disp(nelsonroot()); end');
filewrite(entryB, 'function shared_two(); disp(sin(0)); disp(''SHARED_TWO_OK''); disp(nelsonroot()); end');
first = compiler.build.standaloneApplication(entryA, 'OutputDir', fullfile(work, 'one'));
second = compiler.build.standaloneApplication(entryB, 'OutputDir', fullfile(work, 'two'));
``````

2. Package the shared runtime and retain the applications

``````matlab
compiler.runtime.customInstaller('SharedRuntime', [first, second], ...
  'RuntimeDelivery', 'installer', 'OptionalDependencies', 'none', ...
  'OutputDir', fullfile(work, 'installer'));
installer = fullfile(work, 'installer', 'SharedRuntime.install');
applications = fullfile(work, 'applications');
mkdir(applications);
copyfile(first.Files{1}, applications);
copyfile(second.Files{1}, applications);
applicationA = fullfile(applications, 'shared_one');
applicationB = fullfile(applications, 'shared_two');
``````

3. Install, discover, run and uninstall

``````matlab
target = fullfile(work, 'runtime');
oldConfig = getenv('XDG_CONFIG_HOME');
oldRoot = getenv('NELSONC_RUNTIME_ROOT');
oldPath = getenv('NELSON_RUNTIME_PATH');
oldLibraries = getenv('LD_LIBRARY_PATH');
restoreConfig = onCleanup(@() setenv('XDG_CONFIG_HOME', oldConfig));
restoreRoot = onCleanup(@() setenv('NELSONC_RUNTIME_ROOT', oldRoot));
restorePath = onCleanup(@() setenv('NELSON_RUNTIME_PATH', oldPath));
restoreLibraries = onCleanup(@() setenv('LD_LIBRARY_PATH', oldLibraries));
setenv('XDG_CONFIG_HOME', fullfile(work, 'configuration'));
setenv('NELSONC_RUNTIME_ROOT', '');
setenv('NELSON_RUNTIME_PATH', '');
setenv('LD_LIBRARY_PATH', '');
quote = char(39);
quoted = @(text) [quote, strrep(text, quote, char([39 34 39 34 39])), quote];
[status, output] = system([quoted(installer), ' -agreeToLicense yes -destinationFolder ', quoted(target)], 180);
asserts.istrue(status == 0, output);
[status, output] = system(quoted(applicationA), 60);
asserts.istrue(status == 0 && contains(output, 'SHARED_ONE_OK') && contains(output, target), output);
[status, output] = system(quoted(applicationB), 60);
asserts.istrue(status == 0 && contains(output, 'SHARED_TWO_OK') && contains(output, target), output);
[status, output] = system(quoted(fullfile(target, '.nelson-runtime', 'uninstall')), 60);
asserts.istrue(status == 0, output);
asserts.isfalse(isfile(fullfile(target, 'runtime.json')));
receipt = jsondecode(fileread(fullfile(target, '.nelson-runtime', 'remove.json')));
asserts.isequal(receipt.phase, 'complete');
asserts.isfalse(isfile(fullfile(target, '.nelson-runtime', 'uninstall')));
asserts.istrue(isfile(applicationA) && isfile(applicationB));
clear restoreConfig restoreRoot restorePath restoreLibraries;
disp('LINUX_SHARED_RUNTIME_TUTORIAL_OK');
``````


== See also

#nlink(<compiler:compiler.runtime.customInstaller>)[compiler.runtime.customInstaller];, #nlink(<compiler:compiler_linux_installer_tutorial>)[compiler\_linux\_installer\_tutorial];.

// Author: Allan CORNET
