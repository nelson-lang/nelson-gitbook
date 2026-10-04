# compiler_build_tutorial

Tutorial: build console and no-console applications.

## 📝 Syntax

- result = compiler.build.standaloneApplication(options)
- result = compiler.build.standaloneWindowsApplication(options)

## 📄 Description

Execute the three blocks in order in one session. This example builds a multi-file application and embeds its factor.txt data file. Each executable prints TUTORIAL_RESULT=30 for the input 5.

The console application is native to the current platform. On Windows, the second build creates a separate Windows-subsystem executable without requesting graphical services for this numerical example.

Each output directory contains an executable, readme.txt and the build-time report buildresult.json, not a runtime or an installer. Results.Files contains the executable and readme.txt, plus the .nca for the external variant. Distribute that archive beside its executable, with the same base name. The last block selects the currently running Nelson installation as the compatible runtime. On another machine, install a compatible runtime and set NELSONC_RUNTIME_ROOT to its root.

RuntimeDependencies.Required is the captured runtime file inventory; inspecting it does not copy these files. The selected application code and factor.txt are already inside the executable or its external archive, so the copied source directory is not needed at execution time.

Additional option effects remain separate implementation work. Windows application installers and shared minimal-runtime installers are described in compiler_installer_tutorial and compiler_runtime_tutorial. The ncc bundled-runtime path is described in compiler_standalone_tutorial.

TreatInputsAsNumeric passes the input 5 as a double to app_entry. The supplied example also accepts character input when the option is false. Invalid numeric text becomes NaN; applications must validate input before calculation.

SupportPackages filters installed nmm dependencies; this example uses none because its sources do not need an external package.

## 💡 Examples

1. Prepare the source files

```matlab
ncc('--help');
work = tempname();
mkdir(work);
source = fullfile(work, 'source');
mkdir(source);
example = fullfile(modulepath('compiler'), 'examples', 'standalone');
for name = {'app_entry.m', 'helper_value.m', 'factor.txt', 'app_icon.png'}
  copyfile(fullfile(example, name{1}), source);
end
```

2. Build and inspect the results

```matlab
options = compiler.build.StandaloneApplicationOptions(fullfile(source, 'app_entry.m'), ...
  'AdditionalFiles', fullfile(source, 'factor.txt'), ...
  'RuntimeLogFile', 'application.log', ...
  'TreatInputsAsNumeric', true, ...
  'SupportPackages', 'none', ...
  'OutputDir', fullfile(work, 'console'));
if ispc()
  options.ExecutableIcon = fullfile(source, 'app_icon.png');
end
result = compiler.build.standaloneApplication(options);
disp(result.Files);
disp(height(result.RuntimeDependencies.Required));
reportPath = fullfile(result.Options.OutputDir, 'buildresult.json');
report = jsondecode(fileread(reportPath));
disp(report.applicationName);
options.EmbedArchive = false;
options.OutputDir = fullfile(work, 'external');
external = compiler.build.standaloneApplication(options);
disp(external.Files);
options.EmbedArchive = true;
windowed = [];
if ispc()
  options.OutputDir = fullfile(work, 'windowed');
  windowed = compiler.build.standaloneWindowsApplication(options);
end
```

3. Run with an installed runtime

```matlab
previousRuntime = getenv('NELSONC_RUNTIME_ROOT');
restoreRuntime = onCleanup(@() setenv('NELSONC_RUNTIME_ROOT', previousRuntime));
setenv('NELSONC_RUNTIME_ROOT', nelsonroot());
applications = {result, external};
if ispc()
  applications{end + 1} = windowed;
end
for k = 1:numel(applications)
  executable = applications{k}.Files{1};
  [status, output] = system(['"', executable, '" 5'], 60);
  if status ~= 0
    error(output);
  end
  disp(output);
  logText = fileread(fullfile(applications{k}.Options.OutputDir, 'application.log'));
  asserts.istrue(contains(logText, 'TUTORIAL_RESULT=30'));
  disp(logText);
end
clear restoreRuntime;
```

## 🔗 See also

[compiler.build.StandaloneApplicationOptions](../compiler/compiler.build.StandaloneApplicationOptions.md), [compiler.build.Results](../compiler/compiler.build.Results.md), [compiler.runtime.Dependencies](../compiler/compiler.runtime.Dependencies.md), [compiler_standalone_tutorial](../compiler/compiler_standalone_tutorial.md).

<!--
## 👤 Author

Allan CORNET
-->
