#import "nelson_help.typ": *

= fseek <stream_manager:fseek>

Set the file pointer to a location.

== Syntax

- #raw("fseek(fid, offset, origin)");
- #raw("status = fseek(fid, offset, origin)");

== Input argument

/ fid: an integer value: file descriptor
/ offset: an integer value: number of bytes to move from origin.
/ origin: an integer value or a string: location in the file.

== Output argument

/ status: an integer value: 0 or -1 if there is an error.

== Description

#strong[fseek]; moves the file pointer to the location#strong[offset]; within the file #strong[fid];.

 origin can take as value:

 'bof' or -1 : beginning of file.

 'cof' or 0 : current position in file.

 'eof' or 1 : end of file.

 #strong[offset]; may be one of the predefined variables#strong[SEEK\_CUR]; (current position, or 0),#strong[SEEK\_SET]; (beginning, or -1), or#strong[SEEK\_END]; (end of file, or 1).


== Example

``````matlab

fileID = fopen([tempdir(), 'fseek.txt'],'wt');
fprintf(fileID, 'son is beautiful.');
fseek(fileID, SEEK_CUR, 'bof');
fprintf(fileID, 'sun');
fclose(fileID);
R = fileread([tempdir(), 'fseek.txt'])
``````


== See also

#nlink(<stream_manager:frewind>)[frewind];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
