#import "nelson_help.typ": *

= delete <handle:delete>

Delete handle objects or files.

== Syntax

- #raw("delete(h)");
- #raw("delete filename");
- #raw("delete(filename)");
- #raw("delete(filename1, ..., filenameN)");
- #raw("delete(filenames)");

== Input argument

/ h: a handle object: scalar or matrix.
/ filename: a character vector or a string scalar: name of the file to remove. The wildcard \* is supported.
/ filenames: a string array or a cell array of character vectors: names of the files to remove. Each element can contain the wildcard \*.

== Description

#strong[delete(h)]; invalidates the handle objects referenced by h and releases their native resources.

 When deleted, all aliases to the same objects become invalid.

 For classdef handle objects, #strong[delete]; calls the class destructor method when it exists and notifies #strong[ObjectBeingDestroyed]; before the object becomes invalid.

 For handle arrays, each valid element is invalidated.

 To remove only a variable, use the clear function. Other aliases remain valid until delete is called.

 #strong[delete(filename)]; permanently removes the file #strong[filename]; from disk. Folders are not removed (see #strong[rmdir];).

 #strong[delete(filenames)]; removes several files given as a string array or a cell array of character vectors. Several filenames can also be given as separate arguments.

 Each filename can contain the wildcard #strong[\*];. When no file matches a filename, a warning (identifier #strong[Nelson:FileNotFound];) is displayed and the remaining files are still removed.


== Examples

Delete several files with a vector of filenames.

``````matlab
d = tempname();
mkdir(d);
filewrite(fullfile(d, 'a.txt'), 'a');
filewrite(fullfile(d, 'b.txt'), 'b');
filewrite(fullfile(d, 'c.dat'), 'c');
delete({fullfile(d, 'a.txt'), fullfile(d, 'b.txt')});
delete(string(fullfile(d, "*.dat")));
dir(d)
rmdir(d);
``````

Delete a classdef handle array.

``````matlab
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
``````


== See also

#nlink(<memory_manager:clear>)[clear];, #nlink(<interpreter:classdef>)[classdef];, #nlink(<handle:addlistener>)[addlistener];, #nlink(<files_folders_functions:rmfile>)[rmfile];, #nlink(<files_folders_functions:rmdir>)[rmdir];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [classdef handle destructor and handle array behavior documented],
  [2.0.0], [files can be removed with a string array or a cell array of filenames],
)

// Author: Allan CORNET
