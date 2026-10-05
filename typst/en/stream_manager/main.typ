#import "nelson_help.typ": *

= Stream manager

The Stream Manager module provides tools for managing input and output streams in Nelson.

 It supports reading and writing text and binary data to files, handling file positions, detecting end-of-file conditions, and managing file errors.

 The module also supports session logging and workspace load\/save operations for controlled file I\/O in scripts and applications.

== Functions

- #nlink(<stream_manager:cprintf>)[cprintf]: Writes styled formatted text to stdout.
- #nlink(<stream_manager:diary>)[diary]: Diary of a session.
- #nlink(<stream_manager:fclose>)[fclose]: Close an opened file.
- #nlink(<stream_manager:feof>)[feof]: Checks end of file.
- #nlink(<stream_manager:ferror>)[ferror]: Test for i\/o read\/write errors.
- #nlink(<stream_manager:fgetl>)[fgetl]: Read string from a file without newline.
- #nlink(<stream_manager:fgets>)[fgets]: Read string from a file, stopping after a newline, or EOF, or n characters have been read.
- #nlink(<stream_manager:fileread>)[fileread]: Read contents of file as text.
- #nlink(<stream_manager:filewrite>)[filewrite]: Write text to a file.
- #nlink(<stream_manager:fopen>)[fopen]: Open a file in Nelson.
- #nlink(<stream_manager:fprintf>)[fprintf]: Writes data to a file.
- #nlink(<stream_manager:fread>)[fread]: Read data in binary form to the file specified by the file descriptor fid.
- #nlink(<stream_manager:frewind>)[frewind]: Set position of stream to the beginning.
- #nlink(<stream_manager:fscanf>)[fscanf]: Reads data from a file.
- #nlink(<stream_manager:fseek>)[fseek]: Set the file pointer to a location.
- #nlink(<stream_manager:fsize>)[fsize]: Returns size of an opened file.
- #nlink(<stream_manager:ftell>)[ftell]: Returns the offset of the current byte relative to the beginning of a file.
- #nlink(<stream_manager:fwrite>)[fwrite]: Write data in binary form to the file specified by the file descriptor fid.
- #nlink(<stream_manager:load>)[load]: load data from .nh5 or .mat file into Nelson's workspace.
- #nlink(<stream_manager:readlines>)[readlines]: Read lines of a text file as a string array.
- #nlink(<stream_manager:save>)[save]: save workspace variables to .nh5 or .mat file
- #nlink(<stream_manager:sscanf>)[sscanf]: Read formatted data from strings.
- #nlink(<stream_manager:textscan>)[textscan]: Read formatted data from a character vector, string or file.


#nested[
#pagebreak(weak: true)
#include "cprintf.typ"
#pagebreak(weak: true)
#include "diary.typ"
#pagebreak(weak: true)
#include "fclose.typ"
#pagebreak(weak: true)
#include "feof.typ"
#pagebreak(weak: true)
#include "ferror.typ"
#pagebreak(weak: true)
#include "fgetl.typ"
#pagebreak(weak: true)
#include "fgets.typ"
#pagebreak(weak: true)
#include "fileread.typ"
#pagebreak(weak: true)
#include "filewrite.typ"
#pagebreak(weak: true)
#include "fopen.typ"
#pagebreak(weak: true)
#include "fprintf.typ"
#pagebreak(weak: true)
#include "fread.typ"
#pagebreak(weak: true)
#include "frewind.typ"
#pagebreak(weak: true)
#include "fscanf.typ"
#pagebreak(weak: true)
#include "fseek.typ"
#pagebreak(weak: true)
#include "fsize.typ"
#pagebreak(weak: true)
#include "ftell.typ"
#pagebreak(weak: true)
#include "fwrite.typ"
#pagebreak(weak: true)
#include "load.typ"
#pagebreak(weak: true)
#include "readlines.typ"
#pagebreak(weak: true)
#include "save.typ"
#pagebreak(weak: true)
#include "sscanf.typ"
#pagebreak(weak: true)
#include "textscan.typ"
]
