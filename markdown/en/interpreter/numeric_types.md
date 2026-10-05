# numeric types

About integer and floating-point data.

## 📄 Description


In Nelson you can specify the data type of a numeric literal by using a suffix or a type specifier. 

Here are some common suffixes for specifying the data type of numeric literals: 

| literal number suffix | Nelson type | 
| --- | --- | 
| f32 | single (float single precision) | 
| f64 | double (float double precision) | 
| i8 | int8 (8-bit signed integer) | 
| i16 | int16 (16-bit signed integer) | 
| i32 | int32 (32-bit signed integer) | 
| i64 | int64 (64-bit signed integer) | 
| u8 | uint8 (8-bit unsigned integer) | 
| u16 | uint16 (16-bit unsigned integer) | 
| u32 | uint32 (32-bit unsigned integer) | 
| u64 | uint64 (64-bit unsigned integer) | 

 

 

i64: To specify a 64-bit signed integer, you can use the i64 suffix. example: A = 42i64 

f32: To specify a 32-bit floating-point number (single precision), you can use the f64 suffix. example: 3.14f32 

These suffixes help the Nelson infer the correct data type for the literal. 

Nelson automatically infer data type by default as double and you don't need to specify this suffixe explicitly. example: A = 3.14 

You can also write integer literals in hexadecimal, using the 0x or 0X prefix, or in binary, using the 0b or 0B prefix. example: 0xFF, 0X1A, 0b1010, 0B1111 

Without a type suffix, the value is stored in the smallest unsigned integer type that can hold all of its digits, where each hexadecimal digit counts for four bits and each binary digit for one bit. For example 0xFF is a uint8, 0x100 is a uint16, 0x10000 is a uint32 and 0x100000000 is a uint64. 

An optional integer type suffix can follow the digits to select the exact type: u8, u16, u32, u64 for unsigned integers and s8, s16, s32, s64 for signed integers (the suffix is not case sensitive). With a signed suffix, the digits are interpreted as a two's complement bit pattern, so 0xFFs8 is -1 and 0x80s8 is -128. 

A literal that has more digits than the selected or implied type can hold, or that contains an invalid digit or suffix, raises an error. 

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
hexadecimal and binary integer literals

```matlab

A = 0xFF
class(A)
B = 0b1010
C = 0x100000000
D = 0xFFs8

```


## 🔗 See also

[double](../double/double.md), [single](../single/single.md), [int8](../integer/int8.md), [int16](../integer/int16.md), [int32](../integer/int32.md), [int64](../integer/int64.md), [uint8](../integer/uint8.md), [uint16](../integer/uint16.md), [uint32](../integer/uint32.md), [uint64](../integer/uint64.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 2.0.0   | hexadecimal (0x) and binary (0b) integer literals added |

<!--
## 👤 Author

Allan CORNET
-->
