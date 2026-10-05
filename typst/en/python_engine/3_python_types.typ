#import "nelson_help.typ": *

= Python Nelson types <python_engine:3_python_types>

Managing Data between Python and Nelson.

== Description

#strong[Managing data returned by Python functions:];

 

#table(
  columns: 2,
  [Python return type, as shown in Python], [Corresponding Nelson type (scalar)], 
  [bool], [logical], 
  [complex], [double (complex)], 
  [float], [double], 
)
 

 #strong[Convert Python types to Nelson type explicitly:];

 

 

#table(
  columns: 2,
  [Python return types or protocols shown in Nelson], [Nelson conversion methods], 
  [py.str], [char, string], 
  [py.int], [double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64], 
  [py.long], [double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64], 
  [py.float], [double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64], 
  [py.bool], [double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64, logical], 
  [py.bytes], [double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64, logical], 
  [py.bytearray], [double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64, logical], 
  [py.array.array], [double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64], 
  [py.memoryview], [double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64], 
  [py.numpy.ndarray], [double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64], 
  [py.list], [double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64, logical, string, cell], 
  [py.tuple], [double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64, logical, string, cell], 
  [py.dict], [struct], 
  [py.pandas.DataFrame], [table], 
  [py.pandas.Series], [table (single column)], 
)
 

 A #strong[py.pandas.DataFrame]; is converted with the #strong[table]; function: each DataFrame column becomes a table variable and keeps its column name; numeric columns become Nelson numeric columns and textual columns become Nelson string columns. A non-default index is moved into a leading #strong[index]; variable, while a default #strong[RangeIndex]; is dropped. A #strong[py.pandas.Series]; becomes a table with a single variable named after the Series (an unnamed Series uses the column label #strong[0];). Column labels that are not valid Nelson variable names are made valid, and the original labels are kept in the table #strong[VariableDescriptions];. Datetime columns are converted to their textual (ISO) representation. These conversions require the #strong[pandas]; package to be installed in the Python environment.

 

 #strong[Pass scalar Nelson type to Python:];

 

 

#table(
  columns: 2,
  [Nelson scalar input argument type], [Python type], 
  [NaN], [float("nan")], 
  [Inf], [float("inf")], 
  [double (real)], [py.float], 
  [single (real)], [py.float], 
  [double (complex)], [py.complex], 
  [single (complex)], [py.complex], 
  [int8], [py.int], 
  [uint8], [py.int], 
  [int16], [py.int], 
  [uint16], [py.int], 
  [int32], [py.int], 
  [uint32], [py.int], 
  [int64], [py.int], 
  [uint64], [py.int], 
  [string scalar], [py.str], 
  [char vector], [py.str], 
  [logical], [py.bool], 
  [struct], [py.dict], 
  [table], [py.pandas.DataFrame (py.dict when pandas is not installed)], 
)
 

 A Nelson #strong[table]; passed to Python is implicitly converted to a #strong[py.pandas.DataFrame];: the table variable names become the DataFrame columns and the row names, when present, become the DataFrame index. When the #strong[pandas]; package is not available, the table falls back to a dictionary with #strong[data]; and #strong[Properties]; fields.

 

 #strong[Pass 1-by-N Vector Nelson type to Python:];

 

 

#table(
  columns: 2,
  [Nelson 1-by-N Vector input argument type], [Python type], 
  [double (real)], [array.array('d')], 
  [single (real)], [array.array('f')], 
  [int8], [array.array('b')], 
  [uint8], [array.array('B')], 
  [int16], [array.array('h')], 
  [uint16], [array.array('H')], 
  [int32], [array.array('i')], 
  [uint32], [array.array('I')], 
  [int64], [array.array('q')], 
  [uint64], [array.array('Q')], 
  [double], [memoryview], 
  [single], [memoryview], 
  [logical], [memoryview], 
  [char vector], [str], 
  [string scalar], [str], 
  [cell vector], [tuple], 
)
 

 #strong[Pass 2D Matrices and ND Arrays to Python:];

 The Python language offers a protocol for accessing memory buffers, akin to the data stored in Nelson arrays.

 Nelson incorporates this Python buffer protocol for its arrays.


== Examples

``````matlab
R = pyrun('', "A", 'A', magic(3))
R.double()
``````

dictionary conversion nelson -- python

``````matlab
wheels = [1 2 3];
names = ["Monocycle" "Bicycle" "Tricycle"];
d = dictionary(wheels, names)
R = pyrun("A = d", "A", 'd', d)
dictionary(R)

``````


== See also

#nlink(<python_engine:pyrun>)[pyrun];, #nlink(<dictionary:dictionary>)[dictionary];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.4.0], [initial version],
)

// Author: Allan CORNET
