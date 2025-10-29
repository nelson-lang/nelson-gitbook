# numeric types

About integer and floating-point data.

## 📄 Description

In Nelson you can specify the data type of a numeric literal by using a suffix or a type specifier.

Here are some common suffixes for specifying the data type of numeric literals:

| literal number suffix | Nelson type                      |
| --------------------- | -------------------------------- |
| f32                   | single (float single precision)  |
| f64                   | double (float double precision)  |
| i8                    | int8 (8-bit signed integer)      |
| i16                   | int16 (16-bit signed integer)    |
| i32                   | int32 (32-bit signed integer)    |
| i64                   | int64 (64-bit signed integer)    |
| u8                    | uint8 (8-bit unsigned integer)   |
| u16                   | uint16 (16-bit unsigned integer) |
| u32                   | uint32 (32-bit unsigned integer) |
| u64                   | uint64 (64-bit unsigned integer) |

i64: To specify a 64-bit signed integer, you can use the i64 suffix. example: A = 42i64

f32: To specify a 32-bit floating-point number (single precision), you can use the f64 suffix. example: 3.14f32

These suffixes help the Nelson infer the correct data type for the literal.

Nelson automatically infer data type by default as double and you don't need to specify this suffixe explicitly. example: A = 3.14

Unless you have specific requirements or need to disambiguate between data types, you often don't need to explicitly specify the type of numeric literals.

But when you create a numeric array of large integers in Nelson, especially when they exceed the maximum precision representable by double (larger than flintmax), Nelson initially stores these values as double-precision floating-point numbers by default.

## 💡 Examples

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

## 🔗 See also

[double](../double/double.md), [single](../single/single.md), [int8](../integer/int8.md), [int16](../integer/int16.md), [int32](../integer/int32.md), [int64](../integer/int64.md), [uint8](../integer/uint8.md), [uint16](../integer/uint16.md), [uint32](../integer/uint32.md), [uint64](../integer/uint64.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
