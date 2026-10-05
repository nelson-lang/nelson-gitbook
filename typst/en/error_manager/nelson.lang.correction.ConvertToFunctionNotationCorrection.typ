#import "nelson_help.typ": *

= nelson.lang.correction.ConvertToFunctionNotationCorrection <error_manager:nelson.lang.correction.ConvertToFunctionNotationCorrection>

Correct error by converting to function notation.

== Syntax

- #raw("correction = nelson.lang.correction.ConvertToFunctionNotationCorrection(method)");

== Input argument

/ method: method name that should be called using function notation.

== Output argument

/ correction: a nelson.lang.correction.ConvertToFunctionNotationCorrection object.

== Description

Use #strong[nelson.lang.correction.ConvertToFunctionNotationCorrection]; objects in classes whose methods should not be called using dot notation.

 #strong[correction \= nelson.lang.correction.ConvertToFunctionNotationCorrection(method)]; creates a correction that suggests converting dot notation to function notation syntax for calling #strong[method];.

 The read-only #strong[Method]; property contains the method name.


== Example

``````matlab
ME = MException('nelson:useFunctionForm', 'Use function syntax to call this method.');
correction = nelson.lang.correction.ConvertToFunctionNotationCorrection('isvalid');
ME = addCorrection(ME, correction)
ME.Correction.Method
``````


== See also

#nlink(<error_manager:addCorrection>)[addCorrection];, #nlink(<error_manager:nelson.lang.correction.AppendArgumentsCorrection>)[nelson.lang.correction.AppendArgumentsCorrection];, #nlink(<error_manager:nelson.lang.correction.ReplaceIdentifierCorrection>)[nelson.lang.correction.ReplaceIdentifierCorrection];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
