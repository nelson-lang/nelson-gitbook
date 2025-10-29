# deployhelp

Install, uninstall and manage the local Nelson help system and module help files.

## 📝 Syntax

- deployhelp('install')
- deployhelp('install', verbose)
- deployhelp('add', module_name, module_help_dir)
- deployhelp('remove', module_name)
- [status, message] = deployhelp('uninstall')
- status = deployhelp('status')
- [status, message] = deployhelp('refresh')

## 📥 Input argument

- 'install' - Install the local help system (all modules, all languages). Optional second argument verbose (logical) controls verbosity; default is true.
- module_name - Name of the module to add or remove from the local help tree.
- module_help_dir - Directory containing the module's help archive(s).
- verbose - logical scalar (true/false). When provided to 'install' it controls whether install steps show verbose output.

## 📄 Description

The function manages a local, versioned help directory under userdir()/Nelson/<version>/help/.

Actions:

<b>install</b>: creates and installs the local help system (calls docroot('.') and install locally). Use the optional verbose boolean to toggle output.

<b>add</b>: extracts per-language .nhz help archives found in module_help_dir/help/ into the versioned help/lang/<module_name> directories.

<b>remove</b>: removes the module help directory for each language.

<b>refresh</b>, <b>uninstall</b>, <b>status</b>: respectively refresh the help database, uninstall the local help system, or return whether the local help folder exists. Actions that can fail return [status, message].

## 🔗 See also

[doc](../help_tools/doc.md), [docroot](../help_tools/docroot.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.15.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
