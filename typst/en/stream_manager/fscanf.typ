#import "nelson_help.typ": *

= fscanf <stream_manager:fscanf>

Reads data from a file.

== Syntax

- #raw("R = fscanf(fid, format)");
- #raw("[R, count] = fscanf(fid, format)");
- #raw("[R, count] = fscanf(fid, format, sizeR)");

== Input argument

/ fid: a file descriptor
/ format: a string describing the format to used function.
/ sizeR: desired dimensions of R.

== Output argument

/ R: matrix or character vector.

== Description

Read data in text from the file specified by the file descriptor fid.

 characters encoding uses #strong[fopen]; parameter.

 

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

== Example

``````matlab

M = rand(3, 2);
fw = fopen([tempdir, 'example_fscanf.txt'], 'wt');
fprintf(fw, "%f %f %f", M);
fclose(fw);

fd = fopen([tempdir, 'example_fscanf.txt'], 'r');
R = fscanf(fd, "%g %g %g");
fclose(fd);
R

``````


== See also

#nlink(<stream_manager:fopen>)[fopen];, #nlink(<stream_manager:fprintf>)[fprintf];, #nlink(<spreadsheet:dlmwrite>)[dlmwrite];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
