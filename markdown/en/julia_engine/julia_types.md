# Julia Nelson types

Managing Data between Julia and Nelson.

## Description

  <p>
    <b>Managing data returned by Julia functions:</b>
  </p>
  <p>This documentation explains how data is managed and converted between Julia and Nelson. It covers scalar, vector, and matrix conversions, examples of usage, and related resources.</p>
  <table style="width:100%">
    <tr>
      <th>Julia return type, as shown in Julia</th>
      <th>Corresponding Nelson type (scalar)</th>
    </tr>
    <tr>
      <td>Bool</td>
      <td>logical</td>
    </tr>
    <tr>
      <td>Complex{Float64}</td>
      <td>double (complex)</td>
    </tr>
    <tr>
      <td>Complex{Float32}</td>
      <td>single (complex)</td>
    </tr>
    <tr>
      <td>Float64</td>
      <td>double</td>
    </tr>
    <tr>
      <td>Float32</td>
      <td>single</td>
    </tr>
    <tr>
      <td>Int8</td>
      <td>int8</td>
    </tr>
    <tr>
      <td>Int16</td>
      <td>int16</td>
    </tr>
    <tr>
      <td>Int32</td>
      <td>int32</td>
    </tr>
    <tr>
      <td>Int64</td>
      <td>int64</td>
    </tr>
    <tr>
      <td>UInt8</td>
      <td>uint8</td>
    </tr>
    <tr>
      <td>UInt16</td>
      <td>uint16</td>
    </tr>
    <tr>
      <td>UInt32</td>
      <td>uint32</td>
    </tr>
    <tr>
      <td>UInt64</td>
      <td>uint64</td>
    </tr>
    <tr>
      <td>String</td>
      <td>string</td>
    </tr>
  </table>
  <p/>
  <p>Vector and Matrix of Nelson type returned as matrix in Julia.</p>
  <p><b>cell</b> converted to <b>Array{Any}</b>.</p>
  <p><b>struct</b> converted to <b>Dict{Any, Any}</b>.</p>
  <p>matrix of struct converted to <b>Matrix{Dict}</b>.</p>
  <p><b>dictionary</b> converted to <b>Dict{Any, Any}</b>.</p>
  <p/>
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

[jlrun](jlrun.md), [jlrunfile](jlrunfile.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.12.0  | initial version |

## Author

Allan CORNET
