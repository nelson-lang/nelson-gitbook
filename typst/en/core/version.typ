#import "nelson_help.typ": *

= version <core:version>

Return the version of Nelson.

== Syntax

- #raw("ver_str = version");
- #raw("ver_date = version('-date')");
- #raw("ver_desc = version('-description')");
- #raw("ver_comp = version('-compiler')");
- #raw("ver_hash = version('-commit_hash')");
- #raw("ver_number = version('-number')");
- #raw("ver_release = version('-release')");
- #raw("[ver_str, ver_release] = version()");

== Input argument

/ '-date': a string to get release date
/ '-description': a string to get release description
/ '-semantic': a string to get semantic version
/ '-release': a string to get release number
/ '-compiler': a string to get compiler used to build Nelson
/ '-number': a string to get semantic version
/ '-commit\_hash': a string to get commit hash

== Output argument

/ ver\_str: a string : version
/ ver\_date: a string: version date
/ ver\_desc: a string: version description
/ ver\_release: a string: release info
/ ver\_commit: a string: commit hash
/ ver\_compiler: a cell of string: {compiler used, arch}
/ ver\_number: a matrix of integer values: \[MAJOR, MINOR, MAINTENANCE, BUILD\]

== Description

#strong[version]; the version of Nelson.


== Examples

``````matlab
ver = version
``````

``````matlab
ver_date = version('-date')
``````

``````matlab
ver_date = version('-description')
``````

``````matlab
ver_date = version('-release')
``````

``````matlab
ver_version_vector] = version('-semantic')
``````

``````matlab
ver_version_vector = version('-number')
``````

``````matlab
compiler_info = version('-compiler')
``````

``````matlab
[ver, release] = version()
``````


== See also

#nlink(<os_functions:computer>)[computer];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [1.2.0], [\`-semantic\` option added.],
)

// Author: Allan CORNET
