#import "nelson_help.typ": *

= Interpreter functions

The Interpreter Functions module provides the core language constructs and control mechanisms that define the execution flow in Nelson.

 It includes essential elements such as loops, conditional branching, error handling, and function declarations.

 The module also offers tools for parsing and analyzing code, working with keywords, and managing recursion limits.

 Together, these features establish the fundamental syntax and semantics of the Nelson language, enabling users to write structured, dynamic, and reliable programs.

== Functions

- #nlink(<interpreter:abort>)[abort]: stop evaluation.
- #nlink(<interpreter:abort>)[return]: stop evaluation.
- #nlink(<interpreter:arguments>)[arguments]: function argument validation block.
- #nlink(<interpreter:break>)[break]: exit evaluation loop.
- #nlink(<interpreter:checkcode>)[checkcode]: Analyze Nelson source files and report code issues.
- #nlink(<interpreter:classdef>)[classdef]: Class definition
- #nlink(<interpreter:classdef_tutorial>)[classdef tutorial]: Step-by-step classdef tutorial.
- #nlink(<interpreter:codeAnalyzerRules>)[codeAnalyzerRules]: Code analyzer diagnostic identifiers.
- #nlink(<interpreter:codeIssues>)[codeIssues]: Collect Nelson code analyzer issues as tables.
- #nlink(<interpreter:comments>)[comments]: Add comments to Nelson code.
- #nlink(<interpreter:continue>)[continue]: continue evaluation in loop.
- #nlink(<interpreter:ctfroot>)[ctfroot]: Root of the extracted application archive.
- #nlink(<interpreter:for>)[for]: for loop.
- #nlink(<interpreter:for>)[parfor]: for loop.
- #nlink(<interpreter:function>)[function]: function declaration.
- #nlink(<interpreter:if>)[if]: conditional statement.
- #nlink(<interpreter:ignore_outputs_function>)[tilde]: Ignore outputs function.
- #nlink(<interpreter:isdeployed>)[isdeployed]: Determine whether code runs in a deployed application.
- #nlink(<interpreter:iskeyword>)[iskeyword]: Returns all Nelson keywords.
- #nlink(<interpreter:keyboard>)[keyboard]: Stops script execution and enter in debug mode.
- #nlink(<interpreter:max_recursion_depth>)[max\_recursion\_depth]: Internal limit on the number of times a function may be called recursively.
- #nlink(<interpreter:name_value_syntax>)[name\=value]: Name\=value syntax for name-value arguments.
- #nlink(<interpreter:nelson_format>)[nelson-format]: Command-line Nelson source formatter.
- #nlink(<interpreter:nelson_lint>)[nelson-lint]: Command-line Nelson code analyzer.
- #nlink(<interpreter:nelson_lsp>)[nelson-lsp]: Language Server Protocol endpoint for Nelson code diagnostics.
- #nlink(<interpreter:numeric_types>)[numeric types]: About integer and floating-point data.
- #nlink(<interpreter:onCleanup>)[onCleanup]: Cleanup tasks upon function completion
- #nlink(<interpreter:parsefile>)[parsefile]: Parse a Nelson file.
- #nlink(<interpreter:parsestring>)[parsestring]: Parse a string.
- #nlink(<interpreter:smartindent>)[smartindent]: Format and indent a Nelson file
- #nlink(<interpreter:switch>)[switch]: switch statement.
- #nlink(<interpreter:temporary_result_indexing>)[temporary result indexing]: index into the result of a function call or expression.
- #nlink(<interpreter:temporary_result_indexing>)[function result indexing]: index into the result of a function call or expression.
- #nlink(<interpreter:try>)[try]: try\/catch statement.
- #nlink(<interpreter:try>)[catch]: try\/catch statement.
- #nlink(<interpreter:while>)[while]: while loop.


#nested[
#pagebreak(weak: true)
#include "abort.typ"
#pagebreak(weak: true)
#include "arguments.typ"
#pagebreak(weak: true)
#include "break.typ"
#pagebreak(weak: true)
#include "checkcode.typ"
#pagebreak(weak: true)
#include "classdef.typ"
#pagebreak(weak: true)
#include "classdef_tutorial.typ"
#pagebreak(weak: true)
#include "codeAnalyzerRules.typ"
#pagebreak(weak: true)
#include "codeIssues.typ"
#pagebreak(weak: true)
#include "comments.typ"
#pagebreak(weak: true)
#include "continue.typ"
#pagebreak(weak: true)
#include "ctfroot.typ"
#pagebreak(weak: true)
#include "for.typ"
#pagebreak(weak: true)
#include "function.typ"
#pagebreak(weak: true)
#include "if.typ"
#pagebreak(weak: true)
#include "ignore_outputs_function.typ"
#pagebreak(weak: true)
#include "isdeployed.typ"
#pagebreak(weak: true)
#include "iskeyword.typ"
#pagebreak(weak: true)
#include "keyboard.typ"
#pagebreak(weak: true)
#include "max_recursion_depth.typ"
#pagebreak(weak: true)
#include "name_value_syntax.typ"
#pagebreak(weak: true)
#include "nelson_format.typ"
#pagebreak(weak: true)
#include "nelson_lint.typ"
#pagebreak(weak: true)
#include "nelson_lsp.typ"
#pagebreak(weak: true)
#include "numeric_types.typ"
#pagebreak(weak: true)
#include "onCleanup.typ"
#pagebreak(weak: true)
#include "parsefile.typ"
#pagebreak(weak: true)
#include "parsestring.typ"
#pagebreak(weak: true)
#include "smartindent.typ"
#pagebreak(weak: true)
#include "switch.typ"
#pagebreak(weak: true)
#include "temporary_result_indexing.typ"
#pagebreak(weak: true)
#include "try.typ"
#pagebreak(weak: true)
#include "while.typ"
]
