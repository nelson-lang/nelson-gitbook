# Julia Nelson types

Managing Data between Julia and Nelson.

## Description

<p>
            Managing data returned by Julia functions:
        </p>

<p>This documentation explains how data is managed and converted between Julia and Nelson. It covers scalar, vector, and matrix conversions, examples of usage, and related resources.</p>

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

<p></p>

<p>Vector and Matrix of Nelson type returned as matrix in Julia.</p>

<p>
            cell converted to Array{Any}.</p>

<p>
                struct converted to Dict{Any, Any}.</p>

<p>matrix of struct converted to Matrix{Dict}.</p>

<p>
                    dictionary converted to Dict{Any, Any}.</p>

<p></p>

<p>Ensure that all data passed between Julia and Nelson adheres to the type mappings described above for smooth conversions.</p>

<p>For advanced use cases, such as handling custom Julia types or deeply nested data structures, additional preprocessing in Julia or Nelson may be required.</p>

## Examples

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

## See also

[jlrun](../julia_engine/jlrun.md), [jlrunfile](../julia_engine/jlrunfile.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.12.0  | initial version |

## Author

Allan CORNET
