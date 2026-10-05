#import "nelson_help.typ": *

= Python operators <python_engine:4_python_overload>

The representation of Python operators in Nelson.

== Description

Nelson supports the following overloaded operators:

 

#table(
  columns: 3,
  [Python Operator Symbol], [Python Methods], [Nelson Methods], 
  [- (unary operator)], [\_\_neg\_\_], [uminus, -a], 
  [+ (unary operator)], [\_\_pos\_\_], [uplus, +a], 
  [+ (binary operator)], [\_\_add\_\_, \_\_radd\_\_], [plus, +], 
  [- (binary operator)], [\_\_sub\_\_, \_\_rsub\_\_], [minus, -], 
  [\* (binary operator)], [\_\_mul\_\_, \_\_rmul\_\_], [mtimes, \*], 
  [\/ (binary operator)], [\_\_truediv\_\_, \_\_rtruediv\_\_], [mrdivide, \/], 
  [\=\= (binary operator)], [\_\_eq\_\_], [eq, \=\=], 
  [\> (binary operator)], [\_\_gt\_\_], [gt, \>], 
  [\< (binary operator)], [\_\_lt\_\_], [lt, \<], 
  [!\= (binary operator)], [\_\_ne\_\_], [ne, \~\=], 
  [\>\= (binary operator)], [\_\_ge\_\_], [ge, \>\=], 
  [\<\= (binary operator)], [\_\_le\_\_], [le, \<\=], 
)
 

 #strong[isequal]; builtin is also overloaded to manage python type.

 For numpy types, #strong[isequal]; call#strong[numpy.array\_equal]; from python.

 Others python operators are currently not supported.


== Example

``````matlab
pyrun('import numpy as np')
R = pyrun('R = np.asarray(A)', "R", 'A', magic(3))
R_A = R + R
R_B = R * 2
isequal(R_A, R_B)
``````


== See also

#nlink(<python_engine:pyrun>)[pyrun];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [initial version],
)

// Author: Allan CORNET
