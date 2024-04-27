# Python Nelson types

Managing Data between Python and Nelson.

## Description

  <p>
    <b>Managing data returned by Python functions:</b>
  </p>
  <table style="width:100%">
    <tr>
      <th>Python return type, as shown in Python</th>
      <th>Corresponding Nelson type (scalar)</th>
    </tr>
    <tr>
      <td>bool</td>
      <td>logical</td>
    </tr>
    <tr>
      <td>complex</td>
      <td>double (complex)</td>
    </tr>
    <tr>
      <td>float</td>
      <td>double</td>
    </tr>
  </table>
  <p/>
  <p>
    <b>Convert Python types to Nelson type explicitly:</b>
  </p>
  <p/>
  <table style="width:100%">
    <tr>
      <th>Python return types or protocols shown in Nelson</th>
      <th>Nelson conversion methods</th>
    </tr>
    <tr>
      <td>py.str</td>
      <td>char, string</td>
    </tr>
    <tr>
      <td>py.int</td>
      <td>double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64</td>
    </tr>
    <tr>
      <td>py.long</td>
      <td>double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64</td>
    </tr>
    <tr>
      <td>py.float</td>
      <td>double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64</td>
    </tr>
    <tr>
      <td>py.bool</td>
      <td>double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64, logical</td>
    </tr>
    <tr>
      <td>py.bytes</td>
      <td>double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64, logical</td>
    </tr>
    <tr>
      <td>py.bytearray</td>
      <td>double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64, logical</td>
    </tr>
    <tr>
      <td>py.array.array</td>
      <td>double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64</td>
    </tr>
    <tr>
      <td>py.memoryview</td>
      <td>double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64</td>
    </tr>
    <tr>
      <td>py.numpy.ndarray</td>
      <td>double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64</td>
    </tr>
    <tr>
      <td>py.list</td>
      <td>double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64, logical, string, cell</td>
    </tr>
    <tr>
      <td>py.tuple</td>
      <td>double, single, int8, uint8, int16, uint16, int32, uint32, int64, uint64, logical, string, cell</td>
    </tr>
    <tr>
      <td>py.dict</td>
      <td>struct</td>
    </tr>
  </table>
  <p/>
  <p>
    <b>Pass scalar Nelson type to Python:</b>
  </p>
  <p/>
  <table style="width:100%">
    <tr>
      <th>Nelson scalar input argument type</th>
      <th>Python type</th>
    </tr>
    <tr>
      <td>NaN</td>
      <td>float("nan")</td>
    </tr>
    <tr>
      <td>Inf</td>
      <td>float("inf")</td>
    </tr>
    <tr>
      <td>double (real)</td>
      <td>py.float</td>
    </tr>
    <tr>
      <td>single (real)</td>
      <td>py.float</td>
    </tr>
    <tr>
      <td>double (complex)</td>
      <td>py.complex</td>
    </tr>
    <tr>
      <td>single (complex)</td>
      <td>py.complex</td>
    </tr>
    <tr>
      <td>int8</td>
      <td>py.int</td>
    </tr>
    <tr>
      <td>uint8</td>
      <td>py.int</td>
    </tr>
    <tr>
      <td>int16</td>
      <td>py.int</td>
    </tr>
    <tr>
      <td>uint16</td>
      <td>py.int</td>
    </tr>
    <tr>
      <td>int32</td>
      <td>py.int</td>
    </tr>
    <tr>
      <td>uint32</td>
      <td>py.int</td>
    </tr>
    <tr>
      <td>int64</td>
      <td>py.int</td>
    </tr>
    <tr>
      <td>uint64</td>
      <td>py.int</td>
    </tr>
    <tr>
      <td>string scalar</td>
      <td>py.str</td>
    </tr>
    <tr>
      <td>char vector</td>
      <td>py.str</td>
    </tr>
    <tr>
      <td>logical</td>
      <td>py.bool</td>
    </tr>
    <tr>
      <td>struct</td>
      <td>py.dict</td>
    </tr>
  </table>
  <p/>
  <p>
    <b>Pass 1-by-N Vector Nelson type to Python:</b>
  </p>
  <p/>
  <table style="width:100%">
    <tr>
      <th>Nelson 1-by-N Vector input argument type</th>
      <th>Python type</th>
    </tr>
    <tr>
      <td>double (real)</td>
      <td>array.array('d')</td>
    </tr>
    <tr>
      <td>single (real)</td>
      <td>array.array('f')</td>
    </tr>
    <tr>
      <td>int8</td>
      <td>array.array('b')</td>
    </tr>
    <tr>
      <td>uint8</td>
      <td>array.array('B')</td>
    </tr>
    <tr>
      <td>int16</td>
      <td>array.array('h')</td>
    </tr>
    <tr>
      <td>uint16</td>
      <td>array.array('H')</td>
    </tr>
    <tr>
      <td>int32</td>
      <td>array.array('i')</td>
    </tr>
    <tr>
      <td>uint32</td>
      <td>array.array('I')</td>
    </tr>
    <tr>
      <td>int64</td>
      <td>array.array('q')</td>
    </tr>
    <tr>
      <td>uint64</td>
      <td>array.array('Q')</td>
    </tr>
    <tr>
      <td>double</td>
      <td>memoryview</td>
    </tr>
    <tr>
      <td>single</td>
      <td>memoryview</td>
    </tr>
    <tr>
      <td>logical</td>
      <td>memoryview</td>
    </tr>
    <tr>
      <td>char vector</td>
      <td>str</td>
    </tr>
    <tr>
      <td>string scalar</td>
      <td>str</td>
    </tr>
    <tr>
      <td>cell vector</td>
      <td>tuple</td>
    </tr>
  </table>
  <p/>
  <p>
    <b>Pass 2D Matrices and ND Arrays to Python:</b>
  </p>
  <p>The Python language offers a protocol for accessing memory buffers, akin to the data stored in Nelson arrays.</p>
  <p>Nelson incorporates this Python buffer protocol for its arrays.</p>

## Example

```matlab
R = pyrun('', "A", 'A', magic(3))
R.double()
```

## See also

[pyrun](pyrun.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.4.0   | initial version |

## Author

Allan CORNET
