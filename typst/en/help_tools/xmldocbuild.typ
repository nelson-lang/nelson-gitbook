#import "nelson_help.typ": *

= xmldocbuild <help_tools:xmldocbuild>

Internal function to convert xml document files to html.

== Syntax

- #raw("status = xmldocbuild(source_dirs, destination_dir, main_title, export_format, overwrite)");
- #raw("[status, msg, warnings] = xmldocbuild(source_dirs, destination_dir, main_title, export_format, overwrite, index_dirs)");

== Input argument

/ source\_dirs: a cell of string: list of xml filenames.
/ destination\_dir: a string: directory destination.
/ main\_title: a string: title of main index.
/ export\_format: a string: 'html', 'md' or 'typ'.
/ overwrite: a logical: force overwrite if file destination already exists
/ index\_dirs: a cell of string (optional): XML help roots of the other modules whose pages may be linked, used to resolve \<link linkend\="\${module}name"\>.

== Output argument

/ status: a logical: files generated or not.
/ msg: a string: error message, empty on success.
/ warnings: a cell of string: links that could not be resolved. Without this output, each one is raised as a warning.

== Description

#strong[xmldocbuild]; convert xml document files to html.

 internal function

 Links (\<link linkend\="..."\>) are resolved from the keyword index of source\_dirs and index\_dirs: the target may be a keyword, an alias or a page path relative to the module root, optionally prefixed by \${module} or {module}. A resolved link points to the real page, even when it lives in a chapter sub-directory or when its file name differs from its keyword. An unresolved link keeps the legacy path "\<module\>\/\<name\>" and is reported.


== See also

#nlink(<help_tools:buildhelp>)[buildhelp];, #nlink(<help_tools:buildhelpweb>)[buildhelpweb];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.15.0], ['qt' input parameter removed.],
  [2.0.0], [index\_dirs input and warnings output: links resolved from the keyword index.],
)

// Author: Allan CORNET
