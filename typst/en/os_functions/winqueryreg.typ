#import "nelson_help.typ": *

= winqueryreg <os_functions:winqueryreg>

Read the Windows registry (Windows only).

== Syntax

- #raw("c = winqueryreg ('name', rootkey, subkey)");
- #raw("v = winqueryreg (rootkey, subkey, value_name)");
- #raw("v = winqueryreg (rootkey, subkey)");

== Input argument

/ rootkey: a string: root key.
/ subkey: a string: subkey path.
/ value\_name: a string: name of value.

== Output argument

/ c: a cell of strings.
/ v: a string or int32.

== Description

#strong[c \= winqueryreg ('name', rootkey, subkey)]; returns a cell of strings with key names in rootkey\\subkey.

 #strong[v \= winqueryreg (rootkey, subkey, value\_name)]; returns the value associated to value\_name in rootkey\\subkey.

 If the value is a 32-bit integer,#strong[winqueryreg]; returns the value as int32. If this value is a string, it is a string.

 #strong[v \= winqueryreg (rootkey, subkey)]; returns value in rootkey\\subkey that has no value name property.

 Supported root keys:

 'HKEY\_CLASSES\_ROOT', 'HKCR',

 'HKEY\_CURRENT\_USER', 'HKCU',

 'HKEY\_LOCAL\_MACHINE', 'HKLM',

 'HKEY\_USERS', 'HKU',

 'HKEY\_CURRENT\_CONFIG', 'HKCC'


== Example

``````matlab
winqueryreg('name', 'HKEY_LOCAL_MACHINE', 'HARDWARE\DESCRIPTION\System')
winqueryreg('HKLM', 'HARDWARE\DESCRIPTION\System\CentralProcessor\1\', 'ProcessorNameString')
``````


== See also

#nlink(<os_functions:winopen>)[winopen];, #nlink(<os_functions:searchenv>)[searchenv];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
