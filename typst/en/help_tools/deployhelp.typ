#import "nelson_help.typ": *

= deployhelp <help_tools:deployhelp>

Install, uninstall and manage the local Nelson help system and module help files.

== Syntax

- #raw("deployhelp('install')");
- #raw("deployhelp('install', verbose)");
- #raw("deployhelp('add', module_name, module_help_dir)");
- #raw("deployhelp('remove', module_name)");
- #raw("[status, message] = deployhelp('uninstall')");
- #raw("status = deployhelp('status')");
- #raw("[status, message] = deployhelp('refresh')");

== Input argument

/ 'install': Install the local help system (all modules, all languages). Optional second argument verbose (logical) controls verbosity; default is true.
/ module\_name: Name of the module to add or remove from the local help tree.
/ module\_help\_dir: Directory containing the module's help archive(s).
/ verbose: logical scalar (true\/false). When provided to 'install' it controls whether install steps show verbose output.

== Description

The function manages a local, versioned help directory under userdir()\/Nelson\/\<version\>\/help\/.

 Actions:

 #strong[install];: creates and installs the local help system (calls docroot('.') and install locally). Use the optional verbose boolean to toggle output.

 #strong[add];: extracts per-language .nhz help archives found in module\_help\_dir\/help\/ into the versioned help\/lang\/\<module\_name\> directories.

 #strong[remove];: removes the module help directory for each language.

 #strong[refresh];, #strong[uninstall];, #strong[status];: respectively refresh the help database, uninstall the local help system, or return whether the local help folder exists. Actions that can fail return \[status, message\].


== See also

#nlink(<help_tools:doc>)[doc];, #nlink(<help_tools:docroot>)[docroot];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.15.0], [initial version],
)

// Author: Allan CORNET
