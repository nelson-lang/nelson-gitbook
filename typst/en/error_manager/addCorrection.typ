#import "nelson_help.typ": *

= addCorrection <error_manager:addCorrection>

Add correction to MException.

== Syntax

- #raw("ME = addCorrection(ME, correction)");
- #raw("ME = ME.addCorrection(correction)");

== Input argument

/ ME: a scalar MException object.
/ correction: a nelson.lang.correction.AppendArgumentsCorrection, nelson.lang.correction.ConvertToFunctionNotationCorrection, or nelson.lang.correction.ReplaceIdentifierCorrection object.

== Output argument

/ ME: a new MException object containing the correction.

== Description

#strong[addCorrection]; returns a new MException object with the #strong[Correction]; property set to #strong[correction];.

 Nelson correction objects are #strong[nelson.lang.correction.AppendArgumentsCorrection];, #strong[nelson.lang.correction.ConvertToFunctionNotationCorrection];, and #strong[nelson.lang.correction.ReplaceIdentifierCorrection];.


== Example

``````matlab
ME = MException('nelson:missingArgument', 'Missing argument.');
correction = nelson.lang.correction.AppendArgumentsCorrection('value');
ME = addCorrection(ME, correction)
ME.Correction
``````


== See also

#nlink(<error_manager:MException>)[MException];, #nlink(<error_manager:addCause>)[addCause];, #nlink(<error_manager:getReport>)[getReport];, #nlink(<error_manager:nelson.lang.correction.AppendArgumentsCorrection>)[nelson.lang.correction.AppendArgumentsCorrection];, #nlink(<error_manager:nelson.lang.correction.ConvertToFunctionNotationCorrection>)[nelson.lang.correction.ConvertToFunctionNotationCorrection];, #nlink(<error_manager:nelson.lang.correction.ReplaceIdentifierCorrection>)[nelson.lang.correction.ReplaceIdentifierCorrection];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
