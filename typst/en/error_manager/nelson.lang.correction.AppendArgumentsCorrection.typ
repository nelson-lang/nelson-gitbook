#import "nelson_help.typ": *

= nelson.lang.correction.AppendArgumentsCorrection <error_manager:nelson.lang.correction.AppendArgumentsCorrection>

Correct error by appending missing input arguments.

== Syntax

- #raw("correction = nelson.lang.correction.AppendArgumentsCorrection(arguments)");

== Input argument

/ arguments: suggested arguments, specified as a string, a character vector, or a cell array of character vectors.

== Output argument

/ correction: a nelson.lang.correction.AppendArgumentsCorrection object.

== Description

Use #strong[nelson.lang.correction.AppendArgumentsCorrection]; objects in functions that throw a MException object.

 #strong[correction \= nelson.lang.correction.AppendArgumentsCorrection(arguments)]; creates a correction that suggests appending input #strong[arguments]; to the function call that threw the MException object.

 The read-only #strong[Arguments]; property contains the suggested arguments.


== Example

``````matlab
ME = MException('nelson:notEnoughInputs', 'Not enough input arguments.');
correction = nelson.lang.correction.AppendArgumentsCorrection('"world"');
ME = addCorrection(ME, correction)
ME.Correction.Arguments
``````


== See also

#nlink(<error_manager:addCorrection>)[addCorrection];, #nlink(<error_manager:nelson.lang.correction.ConvertToFunctionNotationCorrection>)[nelson.lang.correction.ConvertToFunctionNotationCorrection];, #nlink(<error_manager:nelson.lang.correction.ReplaceIdentifierCorrection>)[nelson.lang.correction.ReplaceIdentifierCorrection];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
