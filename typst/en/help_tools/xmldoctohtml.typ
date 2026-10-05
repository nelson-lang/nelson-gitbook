#import "nelson_help.typ": *

= xmldoctohtml <help_tools:xmldoctohtml>

Converts xml Nelson help files to html.

== Syntax

- #raw("status = xmldoctohtml(source_dirs, destination_dir, main_title, overwrite)");
- #raw("status = xmldoctohtml(source_dirs, destination_dir, main_title, overwrite, index_dirs)");

== Input argument

/ source\_dirs: a cell of string: list of xml filenames.
/ destination\_dir: a string: directory destination.
/ main\_title: a string: title of main index.
/ overwrite: a logical: force overwrite if file destination already exists
/ index\_dirs: a cell of string (optional): XML help roots of the other modules whose pages may be linked, used to resolve \<link linkend\="\${module}name"\>.
/ html\_type: a string: 'web' default or 'html' (local)

== Output argument

/ status: a logical: files generated or not.

== Description

#strong[xmldoctohtml]; converts xml Nelson help files to html.

 Links declared with the link element in chapter\_description are retained in the generated chapter summary. A linkend such as guide or nested\/guide is relative to the module root; \${module}guide and {module}guide select a module explicitly. Targets are XML page paths without the extension, keywords or aliases: every link is resolved from the keyword index of source\_dirs and index\_dirs and points to the real page, even in a chapter sub-directory or when the file name differs from the keyword. Unresolved links are reported as warnings.


== See also

#nlink(<help_tools:xmldocbuild>)[xmldocbuild];, #nlink(<help_tools:buildhelp>)[buildhelp];, #nlink(<help_tools:buildhelpweb>)[buildhelpweb];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [index\_dirs input argument: links resolved from the keyword index.],
  [1.15.0], [html\_type input argument],
)

// Author: Allan CORNET
