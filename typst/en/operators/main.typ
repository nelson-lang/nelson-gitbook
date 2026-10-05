#import "nelson_help.typ": *

= Operators

The Operators module provides tools for performing arithmetic, logical, relational, and array operations in Nelson.

 It supports element-wise and matrix computations, concatenation, subscripted referencing and assignment, and short-circuit logical operations.

 This module enables flexible manipulation of data structures and numerical arrays, forming the foundation for both basic calculations and advanced mathematical expressions.

== Functions

- #nlink(<operators:all>)[all]: all of the elements of a matrix satisfy some condition.
- #nlink(<operators:and>)[and]: logical 'AND' operator, &
- #nlink(<operators:any>)[any]: any of the elements of a matrix satisfy some condition.
- #nlink(<operators:bitand>)[bitand]: Bit-wise AND
- #nlink(<operators:bitget>)[bitget]: Get selected bits.
- #nlink(<operators:bitor>)[bitor]: Bit-wise OR
- #nlink(<operators:bitxor>)[bitxor]: Bit-wise XOR
- #nlink(<operators:cat>)[cat]: Concatenate arrays.
- #nlink(<operators:colon>)[colon]: colon operator ':'.
- #nlink(<operators:ctranspose>)[ctranspose]: Returns complex conjugate transpose: ' operator.
- #nlink(<operators:eq>)[eq]: equality, \=\= operator.
- #nlink(<operators:ge>)[ge]: greater than or equal, \>\= operator.
- #nlink(<operators:gt>)[gt]: greater than, \> operator.
- #nlink(<operators:horzcat>)[horzcat]: Horizontal concatenation.
- #nlink(<operators:ismember>)[ismember]: Array elements that are members of another array.
- #nlink(<operators:ldivide>)[ldivide]: Left division, .\\ operator.
- #nlink(<operators:le>)[le]: less than or equal, \= operator.
- #nlink(<operators:lt>)[lt]: less than, \< operator.
- #nlink(<operators:minus>)[minus]: Subtraction, - operator
- #nlink(<operators:mldivide>)[mldivide]: Matrix left division, \\ operator.
- #nlink(<operators:mpower>)[mpower]: Matrix power, ^ operator
- #nlink(<operators:mrdivide>)[mrdivide]: Matrix right division, \/ operator.
- #nlink(<operators:mtimes>)[mtimes]: Matrix multiplication, \* operator
- #nlink(<operators:ne>)[ne]: Inequality, \~\= operator
- #nlink(<operators:not>)[not]: not logical, \~ operator
- #nlink(<operators:or>)[or]: logical 'OR' operator, |
- #nlink(<operators:plus>)[plus]: Addition, + operator
- #nlink(<operators:power>)[power]: Element wise power, .^ operator
- #nlink(<operators:rdivide>)[rdivide]: Right division, .\/ operator
- #nlink(<operators:shortcutand>)[shortcutand]: Short circuit 'AND' operator, & &
- #nlink(<operators:shortcutor>)[shortcutor]: Short circuit 'OR' operator, ||
- #nlink(<operators:subsasgn>)[subsasgn]: Redefine subscripted assignment.
- #nlink(<operators:subsindex>)[subsindex]: Convert an object to an index vector.
- #nlink(<operators:subsref>)[subsref]: Subscripted reference.
- #nlink(<operators:times>)[mtimes]: Element wise multiplication, .\* operator
- #nlink(<operators:transpose>)[transpose]: Returns vector or matrix transpose: .' operator.
- #nlink(<operators:uminus>)[uminus]: Unary minus, - operator
- #nlink(<operators:uplus>)[uplus]: Unary plus, + operator
- #nlink(<operators:vertcat>)[vertcat]: Vertical concatenation.


#nested[
#pagebreak(weak: true)
#include "all.typ"
#pagebreak(weak: true)
#include "and.typ"
#pagebreak(weak: true)
#include "any.typ"
#pagebreak(weak: true)
#include "bitand.typ"
#pagebreak(weak: true)
#include "bitget.typ"
#pagebreak(weak: true)
#include "bitor.typ"
#pagebreak(weak: true)
#include "bitxor.typ"
#pagebreak(weak: true)
#include "cat.typ"
#pagebreak(weak: true)
#include "colon.typ"
#pagebreak(weak: true)
#include "ctranspose.typ"
#pagebreak(weak: true)
#include "eq.typ"
#pagebreak(weak: true)
#include "ge.typ"
#pagebreak(weak: true)
#include "gt.typ"
#pagebreak(weak: true)
#include "horzcat.typ"
#pagebreak(weak: true)
#include "ismember.typ"
#pagebreak(weak: true)
#include "ldivide.typ"
#pagebreak(weak: true)
#include "le.typ"
#pagebreak(weak: true)
#include "lt.typ"
#pagebreak(weak: true)
#include "minus.typ"
#pagebreak(weak: true)
#include "mldivide.typ"
#pagebreak(weak: true)
#include "mpower.typ"
#pagebreak(weak: true)
#include "mrdivide.typ"
#pagebreak(weak: true)
#include "mtimes.typ"
#pagebreak(weak: true)
#include "ne.typ"
#pagebreak(weak: true)
#include "not.typ"
#pagebreak(weak: true)
#include "or.typ"
#pagebreak(weak: true)
#include "plus.typ"
#pagebreak(weak: true)
#include "power.typ"
#pagebreak(weak: true)
#include "rdivide.typ"
#pagebreak(weak: true)
#include "shortcutand.typ"
#pagebreak(weak: true)
#include "shortcutor.typ"
#pagebreak(weak: true)
#include "subsasgn.typ"
#pagebreak(weak: true)
#include "subsindex.typ"
#pagebreak(weak: true)
#include "subsref.typ"
#pagebreak(weak: true)
#include "times.typ"
#pagebreak(weak: true)
#include "transpose.typ"
#pagebreak(weak: true)
#include "uminus.typ"
#pagebreak(weak: true)
#include "uplus.typ"
#pagebreak(weak: true)
#include "vertcat.typ"
]
