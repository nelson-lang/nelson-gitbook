#import "nelson_help.typ": *

= Files and folders functions

The File and Folder Functions module provides tools for managing files, directories, and paths in Nelson.

 This module supports navigation of the file system, creation and removal of files and directories, querying file and folder properties, building and resolving paths, and handling platform-specific separators.

 This module enables efficient and cross-platform file system operations within Nelson scripts and applications.

== Functions

- #nlink(<files_folders_functions:cd>)[cd]: Changes Nelson current directory.
- #nlink(<files_folders_functions:copyfile>)[copyfile]: Copy files or folder.
- #nlink(<files_folders_functions:diff_file>)[diff\_file]: diff two files or strings.
- #nlink(<files_folders_functions:dir>)[dir]: Returns file list.
- #nlink(<files_folders_functions:fileparts>)[fileparts]: Returns the path, filename and extension of a file path.
- #nlink(<files_folders_functions:filesep>)[filesep]: Return the file separator character for the current platform.
- #nlink(<files_folders_functions:fullfile>)[fullfile]: Build full file name from parts.
- #nlink(<files_folders_functions:fullpath>)[fullpath]: Returns canonical full path.
- #nlink(<files_folders_functions:genpath>)[genpath]: Generate a recursive path string.
- #nlink(<files_folders_functions:isdir>)[isdir]: Returns true is the input argument is an directory.
- #nlink(<files_folders_functions:isfile>)[isfile]: Returns true is the input argument is a file.
- #nlink(<files_folders_functions:isfolder>)[isfolder]: Returns true is the input argument is an directory.
- #nlink(<files_folders_functions:ls>)[ls]: List folder contents.
- #nlink(<files_folders_functions:mkdir>)[mkdir]: Creates a new directory.
- #nlink(<files_folders_functions:movefile>)[movefile]: Move a file or folder.
- #nlink(<files_folders_functions:pathsep>)[pathsep]: Return the search path separator character for the current platform.
- #nlink(<files_folders_functions:pwd>)[pwd]: Returns current directory.
- #nlink(<files_folders_functions:relativepath>)[relativepath]: Returns the relative path from an actual path to the target path.
- #nlink(<files_folders_functions:rmdir>)[rmdir]: Removes a directory.
- #nlink(<files_folders_functions:rmfile>)[rmfile]: Removes a file.
- #nlink(<files_folders_functions:tempdir>)[tempdir]: Returns the temporary directory path.
- #nlink(<files_folders_functions:tempname>)[tempname]: Returns an unique temporary filename.
- #nlink(<files_folders_functions:userdir>)[userdir]: Returns the current user's path.


#nested[
#pagebreak(weak: true)
#include "cd.typ"
#pagebreak(weak: true)
#include "copyfile.typ"
#pagebreak(weak: true)
#include "diff_file.typ"
#pagebreak(weak: true)
#include "dir.typ"
#pagebreak(weak: true)
#include "fileparts.typ"
#pagebreak(weak: true)
#include "filesep.typ"
#pagebreak(weak: true)
#include "fullfile.typ"
#pagebreak(weak: true)
#include "fullpath.typ"
#pagebreak(weak: true)
#include "genpath.typ"
#pagebreak(weak: true)
#include "isdir.typ"
#pagebreak(weak: true)
#include "isfile.typ"
#pagebreak(weak: true)
#include "isfolder.typ"
#pagebreak(weak: true)
#include "ls.typ"
#pagebreak(weak: true)
#include "mkdir.typ"
#pagebreak(weak: true)
#include "movefile.typ"
#pagebreak(weak: true)
#include "pathsep.typ"
#pagebreak(weak: true)
#include "pwd.typ"
#pagebreak(weak: true)
#include "relativepath.typ"
#pagebreak(weak: true)
#include "rmdir.typ"
#pagebreak(weak: true)
#include "rmfile.typ"
#pagebreak(weak: true)
#include "tempdir.typ"
#pagebreak(weak: true)
#include "tempname.typ"
#pagebreak(weak: true)
#include "userdir.typ"
]
