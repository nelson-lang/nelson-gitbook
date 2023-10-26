# numeric types

About integer and floating-point data.

## Description

  <p>In Nelson you can specify the data type of a numeric literal by using a suffix or a type specifier. </p>
  <p>Here are some common suffixes for specifying the data type of numeric literals:</p>
  <p/>
  <table>
    <tr>
      <th>literal number suffix</th>
      <th>Nelson type</th>
    </tr>
    <tr>
      <td>f32</td>
      <td>single (float single precision)</td>
    </tr>
    <tr>
      <td>f64</td>
      <td>double (float double precision)</td>
    </tr>
    <tr>
      <td>i8</td>
      <td>int8 (8-bit signed integer)</td>
    </tr>
    <tr>
      <td>i16</td>
      <td>int16 (16-bit signed integer)</td>
    </tr>
    <tr>
      <td>i32</td>
      <td>int32 (32-bit signed integer)</td>
    </tr>
    <tr>
      <td>i64</td>
      <td>int64 (64-bit signed integer)</td>
    </tr>
    <tr>
      <td>u8</td>
      <td>uint8 (8-bit unsigned integer)</td>
    </tr>
    <tr>
      <td>u16</td>
      <td>uint16 (16-bit unsigned integer)</td>
    </tr>
    <tr>
      <td>u32</td>
      <td>uint32 (32-bit unsigned integer)</td>
    </tr>
    <tr>
      <td>u64</td>
      <td>uint64 (64-bit unsigned integer)</td>
    </tr>
  </table>
  <p/>
  <p>i64: To specify a 64-bit signed integer, you can use the i64 suffix. example: A = 42i64</p>
  <p>f32: To specify a 32-bit floating-point number (single precision), you can use the f64 suffix. example: 3.14f32</p>
  <p>These suffixes help the Nelson infer the correct data type for the literal.</p>
  <p>Nelson automatically infer data type by default as double and you don't need to specify this suffixe explicitly. example: A = 3.14</p>
  <p>Unless you have specific requirements or need to disambiguate between data types, you often don't need to explicitly specify the type of numeric literals.</p>
  <p>But when you create a numeric array of large integers in Nelson, especially when they exceed the maximum precision representable by double (larger than flintmax), Nelson initially stores these values as double-precision floating-point numbers by default.</p>

## Examples

explicit single number

```matlab
single(3.1415)
3.1415f32
```

implicit-explicit double number

```matlab
3.1415
3.1415f64
```

values exceed maximum precision representable by double

```matlab
R1 = uint64([72057594035891654 81997179153022975])
R2 = [72057594035891654u64 81997179153022975u64]
```

## See also

[double](../double/double.md), [single](../single/single.md), [int8](../integer/int8.md), [int16](../integer/int16.md), [int32](../integer/int32.md), [int64](../integer/int64.md), [uint8](../integer/uint8.md), [uint16](../integer/uint16.md), [uint32](../integer/uint32.md), [uint64](../integer/uint64.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
