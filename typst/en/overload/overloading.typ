#import "nelson_help.typ": *

= overloading <overload:overloading>

Customizing Operators and Functions

== Description

In various scenarios, you may find it necessary to modify the behavior of Nelson's operators and functions when they operate on objects or basic types.

 This customization can be achieved by overloading the relevant functions, allowing them to handle diverse types and quantities of input arguments and execute the appropriate operation for the highest-priority object.

 

 Overloading Operators:

 

 Each built-in operator corresponds to a specific function name (e.g., the #strong[-]; operator is associated with the minus.m function).

 You can overload any operator by creating an M-file with the appropriate name within the class directory.

 For instance, if either #strong[A]; or #strong[B]; is an object of type #strong[classname];, the expression #strong[A - B]; triggers a call to a function #strong[\@classname\/minus.m];, provided it exists.

 When #strong[A]; and #strong[B]; belong to different classes, Nelson employs precedence rules to determine which method to apply.

 

 The table below provides a list of function names associated with most of the Nelson operators:

 

 

#table(
  columns: 3,
  [Description], [Operator], [Function], 
  [Binary addition], [a + b], [plus(a, b)], 
  [Binary subtraction], [a - b], [minus(a, b)], 
  [Unary minus], [-a], [uminus(a)], 
  [Unary plus], [+a], [uplus(a)], 
  [Element-wise multiplication], [a .\* b], [times(a, b)], 
  [Matrix multiplication], [a \* b], [mtimes(a, b)], 
  [Right element-wise division], [a .\/ b], [rdivide(a, b)], 
  [Left element-wise division], [a .\\ b], [ldivide(a, b)], 
  [Matrix right division], [a \/ b], [mrdivide(a, b)], 
  [Matrix left division], [a \\ b], [mldivide(a, b)], 
  [Element-wise power], [a .^ b], [power(a, b)], 
  [Matrix power], [a ^ b], [mpower(a, b)], 
  [Less than], [a \< b], [lt(a, b)], 
  [Greater than], [a \> b], [gt(a, b)], 
  [Less than or equal to], [a \<\= b], [le(a, b)], 
  [Greater than or equal to], [a \>\= b], [ge(a, b)], 
  [Not equal to], [a \~\= b], [ne(a, b)], 
  [Equality], [a \=\= b], [eq(a, b)], 
  [Logical AND], [a & b], [and(a, b)], 
  [Logical OR], [a | b], [or(a, b)], 
  [Logical NOT], [\~a], [not(a)], 
  [Colon operator], [a:d:b], [colon(a, d, b)], 
  [Complex conjugate transpose], [a'], [ctranspose(a)], 
  [Matrix transpose], [a.'], [transpose(a)], 
  [Display method], [command window output], [display(a)], 
  [Horizontal concatenation], [\[a, b\]], [horzcat(a, b, ...)], 
  [Vertical concatenation], [\[a; b\]], [vertcat(a, b, ...)], 
  [Subscripted reference], [a(s1, s2, ... , sn)], [subsref(a, s)], 
  [Subscripted assignment], [a(s1, ... , sn) \= b], [subsasgn(a, s, b)], 
  [Subscript index], [b(a)], [subsindex(a)], 
)

== Example

Overload minus operator with double

``````matlab
% save in @double directory, as minus.m
function r = minus(A, B)
  disp('minus was called')
  % to call minus builtin
  r = builtin('minus', A, B)
end

``````


== See also

#nlink(<operators:plus>)[plus];, #nlink(<operators:minus>)[minus];, #nlink(<operators:uminus>)[uminus];, #nlink(<operators:uplus>)[uplus];, #nlink(<operators:times>)[times];, #nlink(<operators:mtimes>)[mtimes];, #nlink(<operators:rdivide>)[rdivide];, #nlink(<operators:ldivide>)[ldivide];, #nlink(<operators:mrdivide>)[mrdivide];, #nlink(<operators:mldivide>)[mldivide];, #nlink(<operators:power>)[power];, #nlink(<operators:mpower>)[mpower];, #nlink(<operators:lt>)[lt];, #nlink(<operators:gt>)[gt];, #nlink(<operators:le>)[le];, #nlink(<operators:ge>)[ge];, #nlink(<operators:ne>)[ne];, #nlink(<operators:eq>)[eq];, #nlink(<operators:and>)[and];, #nlink(<operators:or>)[or];, #nlink(<operators:not>)[not];, #nlink(<operators:colon>)[colon];, #nlink(<operators:ctranspose>)[ctranspose];, #nlink(<operators:transpose>)[transpose];, #nlink(<display_format:display>)[display];, #nlink(<operators:horzcat>)[horzcat];, #nlink(<operators:vertcat>)[vertcat];, #nlink(<operators:subsref>)[subsref];, #nlink(<operators:subsasgn>)[subsasgn];, #nlink(<operators:subsindex>)[subsindex];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
