# delete

Delete handle objects or files.

## 📝 Syntax

- delete(h)
- delete filename
- delete(filename)
- delete(filename1, ..., filenameN)
- delete(filenames)

## 📥 Input argument

- h - a handle object: scalar or matrix.
- filename - a character vector or a string scalar: name of the file to remove. The wildcard \* is supported.
- filenames - a string array or a cell array of character vectors: names of the files to remove. Each element can contain the wildcard \*.

## 📄 Description


<b>delete(h)</b> invalidates the handle objects referenced by h and releases their native resources. 

When deleted, all aliases to the same objects become invalid. 

For classdef handle objects, <b>delete</b> calls the class destructor method when it exists and notifies <b>ObjectBeingDestroyed</b> before the object becomes invalid. 

For handle arrays, each valid element is invalidated. 

To remove only a variable, use the clear function. Other aliases remain valid until delete is called. 

<b>delete(filename)</b> permanently removes the file <b>filename</b> from disk. Folders are not removed (see <b>rmdir</b>). 

<b>delete(filenames)</b> removes several files given as a string array or a cell array of character vectors. Several filenames can also be given as separate arguments. 

Each filename can contain the wildcard <b>\*</b>. When no file matches a filename, a warning (identifier <b>Nelson:FileNotFound</b>) is displayed and the remaining files are still removed.

## 💡 Examples

Delete several files with a vector of filenames.

```matlab
d = tempname();
mkdir(d);
filewrite(fullfile(d, 'a.txt'), 'a');
filewrite(fullfile(d, 'b.txt'), 'b');
filewrite(fullfile(d, 'c.dat'), 'c');
delete({fullfile(d, 'a.txt'), fullfile(d, 'b.txt')});
delete(string(fullfile(d, "*.dat")));
dir(d)
rmdir(d);
```
Delete a classdef handle array.

```matlab
clear classes
d = [tempdir(), 'nelson_help_delete/'];
mkdir(d);
filewrite([d, '/NelsonHelpDeleteCounter.m'], ["classdef NelsonHelpDeleteCounter < handle"; "  properties"; "    Count = 0"; "  end"; "end"]);
addpath(d);
a = NelsonHelpDeleteCounter();
b = NelsonHelpDeleteCounter();
h = [a, b];
delete(h);
isvalid(a)
isvalid(b)
```


## 🔗 See also

[clear](../memory_manager/clear.md), [classdef](../interpreter/classdef.md), [addlistener](../handle/addlistener.md), [rmfile](../files_folders_functions/rmfile.md), [rmdir](../files_folders_functions/rmdir.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 2.0.0   | classdef handle destructor and handle array behavior documented |
| 2.0.0   | files can be removed with a string array or a cell array of filenames |

<!--
## 👤 Author

Allan CORNET
-->
