#import "nelson_help.typ": *

= Julia Nelson types <julia_engine:julia_types>

Managing Data between Julia and Nelson.

== Description

#strong[Managing data returned by Julia functions:];

 This documentation explains how data is managed and converted between Julia and Nelson. It covers scalar, vector, and matrix conversions, examples of usage, and related resources.

 

#table(
  columns: 2,
  [Julia return type, as shown in Julia], [Corresponding Nelson type (scalar)], 
  [Bool], [logical], 
  [Complex{Float64}], [double (complex)], 
  [Complex{Float32}], [single (complex)], 
  [Float64], [double], 
  [Float32], [single], 
  [Int8], [int8], 
  [Int16], [int16], 
  [Int32], [int32], 
  [Int64], [int64], 
  [UInt8], [uint8], 
  [UInt16], [uint16], 
  [UInt32], [uint32], 
  [UInt64], [uint64], 
  [String], [string], 
)
 

 Vector and Matrix of Nelson type returned as matrix in Julia.

 #strong[cell]; converted to #strong[Array{Any}];.

 #strong[struct]; converted to #strong[Dict{Any, Any}];.

 matrix of struct converted to #strong[Matrix{Dict}];.

 #strong[dictionary]; converted to #strong[Dict{Any, Any}];.

 #strong[table]; converted to a #strong[DataFrames.DataFrame]; when the DataFrames.jl package is available (variable names become the column names); otherwise it is converted to #strong[Dict{Any, Any}];.

 A #strong[DataFrames.DataFrame]; is converted to a Nelson #strong[table]; with #strong[table(df)];: numeric columns keep their numeric type, a Bool column becomes a #strong[logical]; column, a textual column becomes a #strong[string]; column, a numeric column that contains #strong[missing]; becomes a #strong[double]; column with #strong[NaN];, and a textual column that contains #strong[missing]; becomes a #strong[string]; column with #strong[\<missing\>];.

 

 Ensure that all data passed between Julia and Nelson adheres to the type mappings described above for smooth conversions.

 For advanced use cases, such as handling custom Julia types or deeply nested data structures, additional preprocessing in Julia or Nelson may be required.


== Examples

``````matlab
R = jlrun('', "A", 'A', magic(3))
R.double()
``````

``````matlab
names = ["Unicycle" "Bicycle" "Tricycle"];
wheels = [1 2 3];
d = dictionary(wheels,names)
R = jlrun('', "A", 'A', d)

``````


== See also

#nlink(<julia_engine:jlrun>)[jlrun];, #nlink(<julia_engine:jlrunfile>)[jlrunfile];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.12.0], [initial version],
)

// Author: Allan CORNET
