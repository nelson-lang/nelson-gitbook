# compiler_linux_installer_tutorial

Build, install and remove a Linux application.

## 📝 Syntax

- compiler.package.installer(result, 'Options', options)

## 📄 Description

Run the four blocks in one Linux Nelson session as an ordinary user. Generation requires Bash 4 or later, GNU tar, gzip and GNU core utilities. The resulting .install is self-contained: installation does not require Nelson on the destination machine. The application still requires a compatible Linux system and architecture.

The first block builds a console application. The second packages the application and its minimal runtime for offline delivery. The third installs into a private temporary directory, runs without an externally selected runtime and removes the installed application. Expected output is LINUX_INSTALLER_TUTORIAL_OK. No administrator privileges, global shortcuts or environment changes are needed.

For distribution, deliver the .install file and retain its executable permission. Run it with <b>-agreeToLicense yes</b> first and <b>-applicationFolder</b> followed by an absolute destination path. Its parent must already exist and be writable. <b>-outputFile</b> also saves console output to a new file. Interactive installation is not yet available.

Alternatively, use <b>-inputFile</b> followed by a UTF-8 control file containing one key=value pair per line. Start with agreeToLicense=yes, then applicationFolder=/absolute/path. Blank lines and lines beginning with # are ignored. These values are data and are never evaluated as shell commands.

RuntimeDelivery='installer' includes an application-private adjacent runtime by default; RuntimeDelivery='none' requires a compatible runtime already available to the launcher. The fourth block installs the same package with -runtimeFolder, then removes the application and runtime independently. The runtime occupies a subdirectory named by its engine fingerprint. -runtimeFolder can accompany -applicationFolder but conflicts with -destinationFolder. The two installed roots must not overlap.

Shared installation requires a current launcher and RuntimeDelivery='installer'. It records the runtime in the user's configuration directory. Compatible applications add only missing components to this runtime. Application removal never removes it. Reinstalling also verifies or resumes the shared runtime installation; changing between private and shared layouts requires removing the application first. Web delivery, ZIP packages and application installation upgrades are not yet supported on Linux.

The uninstaller is .nelson-install/uninstall.sh inside the destination. It removes only unchanged files from its manifest and empty directories. Changed files, symbolic-link replacements and newly created user files are preserved. When changed owned files remain, retain the manifest and uninstaller for a later retry. Do not manually edit the installation metadata.

## 💡 Examples

Step 1

```matlab
ncc('--help');
work = [tempname(), ' linux installer'];
mkdir(work);
entry = fullfile(work, 'hello_install.m');
filewrite(entry, 'function hello_install(); disp(''LINUX_INSTALLER_TUTORIAL_OK''); end');
result = compiler.build.standaloneApplication(entry, ...
  'OutputDir', fullfile(work, 'build'));
```

Step 2

```matlab
options = compiler.package.InstallerOptions(result, ...
  'RuntimeDelivery', 'installer', 'OptionalDependencies', 'none', ...
  'OutputDir', fullfile(work, 'distribution'));
compiler.package.installer(result, 'Options', options);
setup = fullfile(options.OutputDir, [options.InstallerName, '.install']);
report = jsondecode(fileread(fullfile(result.Options.OutputDir, 'buildresult.json')));
```

Step 3

```matlab
quote = @(text) [char(39), strrep(text, char(39), char([39 34 39 34 39])), char(39)];
target = fullfile(work, 'installed');
[status, output] = system([quote(setup), ...
  ' -agreeToLicense yes -applicationFolder ', quote(target)], 180);
if status ~= 0; error(output); end
[status, output] = system(['env -u NELSONC_RUNTIME_ROOT -u LD_LIBRARY_PATH ', ...
  quote(fullfile(target, 'hello_install'))], 60);
if status ~= 0; error(output); end
disp(output);
[status, output] = system(quote(fullfile(target, '.nelson-install', 'uninstall.sh')), 180);
if status ~= 0; error(output); end
```

Step 4: separate shared runtime

```matlab
[status, userId] = system('id -u');
if status ~= 0 || strcmp(strtrim(userId), '0'); error('Run this example as an ordinary user.'); end
runtimeParent = fullfile(work, 'shared runtimes');
runtime = fullfile(runtimeParent, report.engineFingerprint);
isolated = ['env -u NELSONC_RUNTIME_ROOT -u NELSON_RUNTIME_PATH -u LD_LIBRARY_PATH ', ...
  quote(['XDG_CONFIG_HOME=', fullfile(work, 'configuration')]), ' ', ...
  quote(['XDG_CONFIG_DIRS=', fullfile(work, 'empty-system')]), ' PATH=/usr/bin:/bin '];
[status, output] = system([isolated, quote(setup), ' -agreeToLicense yes -applicationFolder ', ...
  quote(target), ' -runtimeFolder ', quote(runtimeParent)], 180);
if status ~= 0; error(output); end
[status, output] = system([isolated, quote(fullfile(target, 'hello_install'))], 60);
if status ~= 0; error(output); end
disp(output);
[status, output] = system(quote(fullfile(target, '.nelson-install', 'uninstall.sh')), 180);
if status ~= 0; error(output); end
asserts.istrue(isfile(fullfile(runtime, 'runtime.json')));
[status, output] = system(quote(fullfile(runtime, '.nelson-runtime', 'uninstall')), 180);
if status ~= 0; error(output); end
```

## 🔗 See also

[compiler.package.installer](../compiler/compiler.package.installer.md), [compiler.package.InstallerOptions](../compiler/compiler.package.InstallerOptions.md), [compiler_installer_tutorial](../compiler/compiler_installer_tutorial.md).

<!--
## 👤 Author

Allan CORNET
-->
