# compiler\_embedded\_data\_tutorial

Tutorial: embed NH5 and MAT datasets in an executable.

## 📝 Syntax

- options = ncc('options', entry, 'AdditionalFiles', files)
- result = ncc(options)

## 📄 Description


Both .nh5 and .mat files can be embedded as binary resources in the executable. They are copied unchanged into the application archive, not compiled into bytecode or placed next to the executable as loose files. The runtime extracts them into the private ctfroot directory before the application reads them. 

Use AdditionalFiles or the nelsonc -a option for explicit inclusion. AutoDetectDataFiles also recognizes literal filenames passed to load, loadnh5 and loadmat. Computed filenames, including fullfile calls, require explicit inclusion. Disabling automatic detection does not remove explicitly included resources. 

The same AdditionalFiles option is available with compiler.build.standaloneApplication and compiler.build.standaloneWindowsApplication. Both embed the data in the executable; selecting an installed runtime does not leave application data outside the executable. 

For a literal load('measurements') or load measurements without an extension, automatic detection first looks for the exact filename, then measurements.nh5, then measurements.mat in each application lookup directory. An existing extension is not replaced. This fallback belongs to generic load, not to loadnh5, loadmat, fopen or fileread. Explicit filenames are preferable when several formats coexist. 

The example below creates a .nh5 file and a .mat v7.3 file containing the same matrix, then builds and runs both runtime modes. Execute the three blocks in order in the same session. Each execution prints EMBEDDED\_SUM=10. The original files are not required on the receiving machine. 

The supplied entry uses fullfile(fileparts(mfilename('fullpath')), filename) so resource lookup does not depend on the process working directory. Generic load also searches application paths and detects the format. The explicit loadnh5 and loadmat readers take a filesystem path. 

Binary data inclusion and runtime selection are separate. loadnh5 requires the hdf5 module; loadmat requires matio. Generic load retains available native format readers because its format is selected at execution time. Applications that do not load data do not acquire these modules solely because this feature exists. 

The current launcher extracts application resources on every launch, without a persistent extraction cache. Large data files therefore increase executable size and startup disk I/O. The numerical execution engine is unchanged. Keep very large or frequently updated datasets external when embedding is not required. Save application results outside ctfroot: the private extraction directory is temporary, not persistent storage. 

The normal readers retain their format and type support: .nh5, .mat v7 and .mat v7.3 are exercised in deployment tests. Packaging does not extend the readers' supported types. Serialized objects or function handles can need class or function code that cannot be inferred from the file extension; include that code explicitly with AdditionalFiles or a function dependency directive. 

Embedded data is not encrypted. SHA256 checks detect changed input bytes; they are not a confidentiality mechanism or a publisher signature. Larger data files increase executable size and extraction work at startup. No new checks are added to numerical dispatch or to individual load calls. 

Do not save persistent changes under ctfroot: that extraction directory is removed after normal shutdown. Save results to a user-chosen external path. Distribute result.Executable alone with a compatible installed runtime, or both bundled.Files entries when distributing the selected runtime.

## 💡 Examples

1. Create the source and datasets

```matlab
ncc('--help');
work = tempname();
mkdir(work);
source = fullfile(work, 'source');
mkdir(source);
example = fullfile(modulepath('compiler'), 'examples', 'embedded_data');
copyfile(fullfile(example, 'embedded_data_entry.m'), source);
A = [1, 2; 3, 4];
savenh5(fullfile(source, 'values.nh5'), 'A');
savemat(fullfile(source, 'values.mat'), '-v7.3', 'A');
```
2. Embed both files explicitly

```matlab
options = ncc('options', fullfile(source, 'embedded_data_entry.m'), ...
  'AdditionalFiles', {fullfile(source, 'values.nh5'), fullfile(source, 'values.mat')}, ...
  'OutputDir', fullfile(work, 'installed'), 'RuntimeMode', 'installed');
result = ncc(options);
disp(result.Files);
```
3. Run installed and bundled distributions

```matlab
previousRuntime = getenv('NELSONC_RUNTIME_ROOT');
restoreRuntime = onCleanup(@() setenv('NELSONC_RUNTIME_ROOT', previousRuntime));
setenv('NELSONC_RUNTIME_ROOT', nelsonroot());
[status, output] = system(['"', result.Executable, '"'], 60);
if status ~= 0
  error(output);
end
disp(output);
options.RuntimeMode = 'bundled';
options.OutputDir = fullfile(work, 'bundled');
bundled = ncc(options);
[status, output] = system(['"', bundled.Executable, '"'], 60);
if status ~= 0
  error(output);
end
disp(output);
clear restoreRuntime;
```


## 🔗 See also

[ncc](../modules_manager/ncc.md), [compiler_standalone_tutorial](../compiler/compiler_standalone_tutorial.md), [nelson.compiler.BuildOptions](../compiler/nelson.compiler.BuildOptions.md), [loadnh5](../hdf5/loadnh5.md), [loadmat](../matio/loadmat.md), [ctfroot](../interpreter/ctfroot.md).
<!--
## 👤 Author

Allan CORNET
-->
