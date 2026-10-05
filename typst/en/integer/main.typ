#import "nelson_help.typ": *

= Integers type

The Integer Types module provides tools for working with signed and unsigned integers of various sizes in Nelson.

 These types are particularly useful for efficiently storing and processing large datasets, such as images or large numeric arrays.

 The module supports conversions between integer formats and provides access to the minimum and maximum values representable for each integer type, ensuring safe and precise integer arithmetic.

== Functions

- #nlink(<integer:int16>)[int16]: Converts to 16-bit signed integer.
- #nlink(<integer:int32>)[int32]: Converts to 32-bit signed integer.
- #nlink(<integer:int64>)[int64]: Converts to 64-bit signed integer.
- #nlink(<integer:int8>)[int8]: Converts to 8-bit signed integer.
- #nlink(<integer:intmax>)[intmax]: Return the largest integer that can be represented in an integer type.
- #nlink(<integer:intmin>)[intmin]: Return the smallest integer that can be represented in an integer type.
- #nlink(<integer:uint16>)[uint16]: Converts to 16-bit unsigned integer.
- #nlink(<integer:uint32>)[uint32]: Converts to 32-bit unsigned integer.
- #nlink(<integer:uint64>)[uint64]: Converts to 64-bit unsigned integer.
- #nlink(<integer:uint8>)[uint8]: Converts to 8-bit unsigned integer.


#nested[
#pagebreak(weak: true)
#include "int16.typ"
#pagebreak(weak: true)
#include "int32.typ"
#pagebreak(weak: true)
#include "int64.typ"
#pagebreak(weak: true)
#include "int8.typ"
#pagebreak(weak: true)
#include "intmax.typ"
#pagebreak(weak: true)
#include "intmin.typ"
#pagebreak(weak: true)
#include "uint16.typ"
#pagebreak(weak: true)
#include "uint32.typ"
#pagebreak(weak: true)
#include "uint64.typ"
#pagebreak(weak: true)
#include "uint8.typ"
]
