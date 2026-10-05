#import "nelson_help.typ": *

= Spreadsheet

The Spreadsheet module provides functions for reading and writing tabular data from and to text-based spreadsheet formats, such as CSV and delimiter-separated files.

 It supports importing into various data types like numeric arrays, cell arrays, and tables, as well as exporting them back to files.

 This enables smooth interaction with spreadsheet software (Excel, LibreOffice Calc, etc.) and data exchange between applications.

== Functions

- #nlink(<spreadsheet:csvread>)[csvread]: Read comma-separated value (CSV) file.
- #nlink(<spreadsheet:csvwrite>)[csvwrite]: Write comma-separated value file.
- #nlink(<spreadsheet:delimitedTextImportOptions>)[delimitedTextImportOptions]: Create options for importing delimited text data.
- #nlink(<spreadsheet:detectImportOptions>)[detectImportOptions]: Create import options based on file content.
- #nlink(<spreadsheet:dlmread>)[dlmread]: Read an numeric matrix from a text file file using a delimiter.
- #nlink(<spreadsheet:dlmwrite>)[dlmwrite]: Write an numeric matrix to a text file file using a delimiter.
- #nlink(<spreadsheet:jsonImportOptions>)[jsonImportOptions]: Create options for importing JSON data.
- #nlink(<spreadsheet:readcell>)[readcell]: Create cell array from file.
- #nlink(<spreadsheet:readmatrix>)[readmatrix]: Create matrix array from file.
- #nlink(<spreadsheet:readtable>)[readtable]: Create table from file.
- #nlink(<spreadsheet:readtimetable>)[readtimetable]: Create timetable from file.
- #nlink(<spreadsheet:readvars>)[readvars]: Create variables by reading column-oriented data from a file.
- #nlink(<spreadsheet:writecell>)[writecell]: Write a cell to a file.
- #nlink(<spreadsheet:writematrix>)[writematrix]: Write a matrix to a file.
- #nlink(<spreadsheet:writetable>)[writetable]: Write table to file.
- #nlink(<spreadsheet:writetimetable>)[writetimetable]: Write timetable to file.
- #nlink(<spreadsheet:xlsfinfo>)[xlsfinfo]: Return information about an Open XML spreadsheet file.
- #nlink(<spreadsheet:xlsread>)[xlsread]: Read data from an Open XML spreadsheet file.
- #nlink(<spreadsheet:xlswrite>)[xlswrite]: Write data to an Open XML spreadsheet file.


#nested[
#pagebreak(weak: true)
#include "csvread.typ"
#pagebreak(weak: true)
#include "csvwrite.typ"
#pagebreak(weak: true)
#include "delimitedTextImportOptions.typ"
#pagebreak(weak: true)
#include "detectImportOptions.typ"
#pagebreak(weak: true)
#include "dlmread.typ"
#pagebreak(weak: true)
#include "dlmwrite.typ"
#pagebreak(weak: true)
#include "jsonImportOptions.typ"
#pagebreak(weak: true)
#include "readcell.typ"
#pagebreak(weak: true)
#include "readmatrix.typ"
#pagebreak(weak: true)
#include "readtable.typ"
#pagebreak(weak: true)
#include "readtimetable.typ"
#pagebreak(weak: true)
#include "readvars.typ"
#pagebreak(weak: true)
#include "writecell.typ"
#pagebreak(weak: true)
#include "writematrix.typ"
#pagebreak(weak: true)
#include "writetable.typ"
#pagebreak(weak: true)
#include "writetimetable.typ"
#pagebreak(weak: true)
#include "xlsfinfo.typ"
#pagebreak(weak: true)
#include "xlsread.typ"
#pagebreak(weak: true)
#include "xlswrite.typ"
]
