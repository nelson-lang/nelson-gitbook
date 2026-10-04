# Julia Nelson types

Managing Data between Julia and Nelson.

## 📄 Description

<b>Managing data returned by Julia functions:</b>

This documentation explains how data is managed and converted between Julia and Nelson. It covers scalar, vector, and matrix conversions, examples of usage, and related resources.

| Julia return type, as shown in Julia | Corresponding Nelson type (scalar) |
| ------------------------------------ | ---------------------------------- |
| Bool                                 | logical                            |
| Complex{Float64}                     | double (complex)                   |
| Complex{Float32}                     | single (complex)                   |
| Float64                              | double                             |
| Float32                              | single                             |
| Int8                                 | int8                               |
| Int16                                | int16                              |
| Int32                                | int32                              |
| Int64                                | int64                              |
| UInt8                                | uint8                              |
| UInt16                               | uint16                             |
| UInt32                               | uint32                             |
| UInt64                               | uint64                             |
| String                               | string                             |

Vector and Matrix of Nelson type returned as matrix in Julia.

<b>cell</b> converted to <b>Array{Any}</b>.

<b>struct</b> converted to <b>Dict{Any, Any}</b>.

matrix of struct converted to <b>Matrix{Dict}</b>.

<b>dictionary</b> converted to <b>Dict{Any, Any}</b>.

<b>table</b> converted to a <b>DataFrames.DataFrame</b> when the DataFrames.jl package is available (variable names become the column names); otherwise it is converted to <b>Dict{Any, Any}</b>.

A <b>DataFrames.DataFrame</b> is converted to a Nelson <b>table</b> with <b>table(df)</b>: numeric columns keep their numeric type, a Bool column becomes a <b>logical</b> column, a textual column becomes a <b>string</b>column, a numeric column that contains <b>missing</b> becomes a <b>double</b> column with <b>NaN</b>, and a textual column that contains <b>missing</b> becomes a <b>string</b> column with <b><missing></b>.

Ensure that all data passed between Julia and Nelson adheres to the type mappings described above for smooth conversions.

For advanced use cases, such as handling custom Julia types or deeply nested data structures, additional preprocessing in Julia or Nelson may be required.

## 💡 Examples

```matlab
R = jlrun('', "A", 'A', magic(3))
R.double()
```

```matlab
names = ["Unicycle" "Bicycle" "Tricycle"];
wheels = [1 2 3];
d = dictionary(wheels,names)
R = jlrun('', "A", 'A', d)

```

## 🔗 See also

[jlrun](../julia_engine/jlrun.md), [jlrunfile](../julia_engine/jlrunfile.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.12.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
