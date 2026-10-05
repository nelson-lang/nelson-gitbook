# genpath

Generate a recursive path string.

## 📝 Syntax

- p = genpath(folder)

## 📄 Description


<b>genpath</b> returns a path string containing <b>folder</b> and its included subfolders separated by <b>pathsep</b>.

## 💡 Example



```matlab
p = genpath(tempdir())
```


## 🔗 See also

[pathsep](../files_folders_functions/pathsep.md), [fullfile](../files_folders_functions/fullfile.md).