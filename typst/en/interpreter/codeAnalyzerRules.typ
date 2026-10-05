#import "nelson_help.typ": *

= codeAnalyzerRules <interpreter:codeAnalyzerRules>

Code analyzer diagnostic identifiers.

== Description

This page lists the diagnostic identifiers reported by #strong[checkcode];, #strong[codeIssues];, and #strong[nelson-lint];.

 Each identifier is stable and can be used in configuration files or in local suppressions such as #strong[%\#ok\<NLS0004\>];.

 

#table(
  columns: 4,
  [ID], [Default level], [Category], [Description], 
  [NLS0001], [error], [Syntax], [Syntax, lexical, input, or read error. The source file cannot be parsed or cannot be read.], 
  [NLS0002], [warning], [Naming], [The main function or class name differs from the source file name.], 
  [NLS0003], [warning], [Flow], [Code after #strong[return];, #strong[break];, or #strong[continue]; is unreachable in the current block.], 
  [NLS0004], [info], [Dataflow], [A local variable is assigned but is never used afterwards. The analyzer ignores text inside comments and character vectors, does not count the left side of an assignment as a use, and skips this rule when dynamic assignment patterns make the local dataflow ambiguous.], 
  [NLS0005], [warning], [Dataflow], [A local variable is used before its first local assignment in a conservative, simple dataflow case.], 
  [NLS0006], [warning], [Dataflow], [A declared output argument is not assigned by the function body.], 
  [NLS0007], [info], [Dataflow], [An input argument is never used by the function body.], 
  [NLS0008], [warning], [Flow], [A block is empty in a way that is likely accidental.], 
  [NLS0009], [warning], [Flow], [A condition is a trivial constant value such as #strong[true];, #strong[false];, #strong[1];, or #strong[0];.], 
  [NLS0010], [warning], [Style], [A line ends with trailing whitespace. This diagnostic is trivially fixable.], 
  [NLS0011], [warning], [Style], [The file does not end with a newline. This diagnostic is trivially fixable.], 
  [NLS0012], [warning], [Style], [A line is longer than the configured maximum length.], 
  [NLS0013], [error], [Repository], [A forbidden project term appears in source or help text.], 
  [NLS0014], [warning or error], [Metrics], [Cyclomatic complexity is above the configured threshold.], 
  [NLS0015], [warning or error], [Metrics], [Modified cyclomatic complexity is above the configured threshold.], 
  [NLS0016], [error], [Security], [The source line contains an invisible directional formatting character.], 
  [NLS0017], [info], [Readability], [An output display call wraps #strong[sprintf];. Prefer direct formatted output for clearer code.], 
  [NLS0018], [info], [Readability], [A diagnostic call wraps #strong[sprintf];. Prefer passing formatted arguments directly.], 
  [NLS0019], [error], [Config], [The code analyzer configuration file is invalid.], 
  [NLS0020], [warning], [Metrics], [A file is longer than the configured maximum number of lines.], 
  [NLS0021], [warning], [Metrics], [A function is longer than the configured maximum number of lines.], 
  [NLS0022], [warning], [Security], [A dynamic code call or unsafe workspace mutation call is used. Simple command-form #strong[load]; calls can expose an unsafe suggestion to capture loaded data in a struct.], 
  [NLS0023], [info], [Dataflow], [A local function is never called inside its file.], 
  [NLS0024], [warning], [Dataflow], [A local variable shadows a local function in the same file.], 
  [NLS0025], [warning], [Numeric], [A floating-point literal is compared with exact equality.], 
  [NLS0026], [warning or error], [Metrics], [Cognitive complexity is above the configured threshold.], 
  [NLS0027], [allow by default], [Documentation], [A public function or class has no help comment. This diagnostic can insert a help comment skeleton.], 
  [NLS0028], [warning], [Dataflow], [A nested function variable shadows a symbol from a parent scope.], 
  [NLS0029], [warning], [Dataflow], [A local variable shadows an imported symbol.], 
  [NLS0030], [info], [Dataflow], [An imported symbol is never used.], 
  [NLS0031], [warning], [Classdef], [A class property is declared more than once in the same class.], 
  [NLS0032], [warning], [Classdef], [A class method is declared more than once in the same class.], 
  [NLS0033], [warning], [Classdef], [A class event is declared more than once in the same class.], 
  [NLS0034], [warning], [Dataflow], [A local variable or argument shadows a builtin function name.], 
  [NLS0035], [warning], [Classdef], [A method variable or argument shadows a class property name.], 
  [NLS0036], [info], [Dataflow], [A local assignment shadows an input argument name.], 
  [NLS0037], [warning], [Classdef], [A class superclass is listed more than once in the same class.], 
  [NLS0038], [warning], [Classdef], [A class attribute is listed more than once in the same class.], 
)
 Rule levels can be changed with the #strong[rules]; object in #strong[nelson-lint.json];. Version 2 configuration files must declare #strong["version": 2];. Accepted levels are #strong[allow];, #strong[info];, #strong[warning];, and #strong[error];.


== Used function(s)

checkcode, codeIssues, nelson-lint

== Example

Suppress an intentionally unused local variable.

``````matlab
%#ok<NLS0004>
temporaryValue = computeExpensiveValue();
``````


== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
