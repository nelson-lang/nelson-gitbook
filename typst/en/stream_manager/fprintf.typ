#import "nelson_help.typ": *

= fprintf <stream_manager:fprintf>

Writes data to a file.

== Syntax

- #raw("fprintf(format, v1, ... , vn)");
- #raw("fprintf(fid, format, v1, ... , vn)");
- #raw("R = fprintf(fid, format, v1, ... , vn)");

== Input argument

/ fid: a file descriptor
/ format: a string describing the format to used\_function.
/ v1, ... , vn: data to convert and print according to the previous format parameter.

== Output argument

/ R: an integer value: number of bytes written to a file, or number of visible characters displayed on screen.

== Description

Write data in text form to the file specified by the file descriptor fid.

 characters encoding uses #strong[fopen]; parameter.

 If fid equals 1 redirection in stdout.

 If fid equals 2 redirection in stderr.

 When output is sent to the screen, ANSI SGR escape sequences can style text with bold, italic, underline, strikethrough, foreground colors, and background colors. The escape sequences are interpreted for stdout and stderr display, but they are written unchanged when output is sent to a file.

 The #strong[format]; follows C fprintf syntax.

 

#table(
  columns: 3,
  [Value type], [format], [comment], 
  [Integer], [%i], [base 10], 
  [Integer signed], [%d], [base 10], 
  [Integer unsigned], [%u], [base 10], 
  [Integer], [%o], [Octal (base 8)], 
  [Integer], [%x], [Hexadecimal (lowercase)], 
  [Integer], [%X], [Hexadecimal (uppercase)], 
  [Floating-point number], [%f], [Fixed-point notation], 
  [Floating-point number], [%e], [Exponential notation (lowercase)], 
  [Floating-point number], [%E], [Exponential notation (uppercase)], 
  [Floating-point number], [%g], [Exponential notation (compact format, lowercase)], 
  [Floating-point number], [%G], [Exponential notation (compact format, uppercase)], 
  [Character], [%c], [Single character], 
  [String], [%s], [Character vector.], 
)
 To display a percent sign, you need to use a double percent sign (%%) in the format string.

 A percent sign at the end of the format string that is not doubled is ignored.


== Examples

``````matlab

fileID = fopen([tempdir(), 'fprintf.txt'],'wt');
fprintf(fileID, 'an example of %s.', 'text');
fclose(fileID);

R = fileread([tempdir(), 'fprintf.txt'])
``````

``````matlab
fprintf(1, 'an value %g.', pi);
fprintf(2, "an value %g.", pi);
``````

Display styled text with ANSI SGR escape sequences

``````matlab
esc = char(27);
fprintf([esc, '[1;34mBold blue text', esc, '[0m\n']);
``````

Display truecolor text with ANSI SGR escape sequences

``````matlab
esc = char(27);
fprintf([esc, '[38;2;80;120;220mTruecolor text', esc, '[0m\n']);
``````

How to use backspace

``````matlab
reverseStr = '';
for idx = 1 : 100
 percentDone = idx;
 msg = sprintf('Percent done: %3.1f', percentDone);
 fprintf([reverseStr, msg]);
 reverseStr = repmat(sprintf('\b'), 1, length(msg));
end

``````

Display a percent sign

``````matlab
fprintf(1, '%d%%.', 95)
``````

Trailing percent handling

``````matlab
fprintf(1, ' %d %', 10)
fprintf(1, ' %d %%', 10)
``````


== See also

#nlink(<stream_manager:fopen>)[fopen];, #nlink(<stream_manager:fclose>)[fclose];, #nlink(<stream_manager:fread>)[fread];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [ANSI SGR escape sequences are rendered for screen output.],
)

// Author: Allan CORNET
