# compiler\_standalone\_tutorial

Tutorial: distribute an application with multiple source files and data.

## 📝 Syntax

- ncc('options', AppFile, Name, Value, ...)
- result = ncc(options)

## 📄 Description


This tutorial uses the available ncc and nelson.compiler interfaces. The optional compiler module and its precompiled launchers must be installed. No C++ toolchain is needed. Run the following four examples in order in the same Nelson session. 

The supplied example has three files under <b>modules/compiler/examples/standalone</b>: <b>app\_entry.m</b> accepts a command-line argument, explicitly converts it with str2double, reads factor.txt and calls <b>helper\_value.m</b>. The helper multiplies by two and factor.txt contains three. Input 5 therefore produces <b>TUTORIAL\_RESULT=30</b>. 

The first example makes a private working copy. The second explicitly includes factor.txt because its path is computed relative to mfilename('fullpath'). Static analysis selects the helper function. The executable contains the application bytecode (.nbc) and resource, so the original .m files are not needed at run time. 

The installed build produces an executable without a runtime directory. The third example selects the current compatible Nelson installation with NELSONC\_RUNTIME\_ROOT, runs the application and restores the previous environment variable. The required architecture and engine fingerprint must match; the version number alone is insufficient. 

The fourth example changes a copy of the options to bundled mode. Distribute both paths in bundledResult.Files: the executable and its adjacent .runtime directory, preserving their names. This is a portable application distribution, not an application installer. Keep runtime license notices with the distribution. 

Inspect plan.runtime.modules and result.RuntimePlan to understand size. Bundled mode copies selected dependencies. Graphics and unresolved dynamic call patterns can require larger module sets. Removing dependencies without analysis can break deployed applications. 

For a Windows application without a console, set <b>NoConsole=true</b> and use a new OutputDir or ExecutableName. Use <b>Mode='gui'</b> when graphics are required; NoConsole and graphics support are independent. Figure and uicontrol callbacks keep the graphical event loop alive while application windows remain. 

Build on each target platform: Windows produces .exe, other supported platforms use their native executable format. Packaging uses the normal execution engine and does not guarantee faster calculations or a particular first-start time. 

Use isdeployed to distinguish packaged execution. ctfroot is a temporary extraction directory, removed after normal shutdown. Store persistent results outside it. The tutorial keeps the work directory available for inspection; do not delete or move unrelated installation files.

## 💡 Examples

1. Prepare the example

```matlab
ncc('--help');
work = tempname();
mkdir(work);
source = fullfile(work, 'source');
mkdir(source);
example = fullfile(modulepath('compiler'), 'examples', 'standalone');
for file = {'app_entry.m', 'helper_value.m', 'factor.txt'}
  copyfile(fullfile(example, file{1}), fullfile(source, file{1}));
end
```
2. Analyze and build with an installed runtime

```matlab
options = ncc('options', fullfile(source, 'app_entry.m'), ...
  'ExecutableName', 'application', 'ExecutableVersion', '2.0', ...
  'OutputDir', fullfile(work, 'installed'), 'RuntimeMode', 'installed', ...
  'AdditionalFiles', fullfile(source, 'factor.txt'));
plan = nelson.compiler.analyze(options);
disp(plan.runtime.modules);
result = ncc(options);
disp(result.Files);
```
3. Run the installed-runtime application

```matlab
previousRuntime = getenv('NELSONC_RUNTIME_ROOT');
restoreRuntime = onCleanup(@() setenv('NELSONC_RUNTIME_ROOT', previousRuntime));
setenv('NELSONC_RUNTIME_ROOT', nelsonroot());
[status, output] = system(['"', result.Executable, '" 5'], 60);
clear restoreRuntime;
if status ~= 0
  error(output);
end
disp(output);
```
4. Build and run with a bundled runtime

```matlab
bundledOptions = options;
bundledOptions.RuntimeMode = 'bundled';
bundledOptions.OutputDir = fullfile(work, 'bundled');
bundledResult = ncc(bundledOptions);
disp(bundledResult.Files);
[status, output] = system(['"', bundledResult.Executable, '" 5'], 60);
if status ~= 0
  error(output);
end
disp(output);
```


## 🔗 See also

[ncc](../modules_manager/ncc.md), [nelson.compiler.BuildOptions](../compiler/nelson.compiler.BuildOptions.md), [nelson.compiler.BuildResult](../compiler/nelson.compiler.BuildResult.md), [nelson.compiler.build](../compiler/nelson.compiler.build.md), [nelson.compiler.analyze](../compiler/nelson.compiler.analyze.md), [isdeployed](../interpreter/isdeployed.md), [ctfroot](../interpreter/ctfroot.md).
<!--
## 👤 Author

Allan CORNET
-->
