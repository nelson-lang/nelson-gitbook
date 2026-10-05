#import "nelson_help.typ": *

= nelson.lang.correction.ReplaceIdentifierCorrection <error_manager:nelson.lang.correction.ReplaceIdentifierCorrection>

Correct error by replacing identifier in function call.

== Syntax

- #raw("correction = nelson.lang.correction.ReplaceIdentifierCorrection(identifier, replacement)");

== Input argument

/ identifier: incorrect identifier in the function call.
/ replacement: replacement identifier.

== Output argument

/ correction: a nelson.lang.correction.ReplaceIdentifierCorrection object.

== Description

Use #strong[nelson.lang.correction.ReplaceIdentifierCorrection]; objects in functions that throw a MException object.

 #strong[correction \= nelson.lang.correction.ReplaceIdentifierCorrection(identifier, replacement)]; creates a correction that suggests replacing #strong[identifier]; with #strong[replacement]; in the function call that threw the MException object.

 The read-only #strong[Identifier]; and #strong[Replacement]; properties contain the incorrect identifier and replacement identifier.


== Example

``````matlab
ME = MException('nelson:unknownName', 'Unknown identifier.');
correction = nelson.lang.correction.ReplaceIdentifierCorrection('oldName', 'newName');
ME = addCorrection(ME, correction)
ME.Correction.Replacement
``````


== See also

#nlink(<error_manager:addCorrection>)[addCorrection];, #nlink(<error_manager:nelson.lang.correction.AppendArgumentsCorrection>)[nelson.lang.correction.AppendArgumentsCorrection];, #nlink(<error_manager:nelson.lang.correction.ConvertToFunctionNotationCorrection>)[nelson.lang.correction.ConvertToFunctionNotationCorrection];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
