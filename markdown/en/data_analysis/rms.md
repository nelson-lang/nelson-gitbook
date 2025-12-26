# rms

Root Mean Square (RMS) of array elements.

## 📝 Syntax

- y = rms(x)
- y = rms(x, dim)
- y = rms(x, vecdim)
- y = rms(x, 'all')
- y = rms(x, dim, type)
- y = rms(x, 'all', type)
- y = rms(x, dim, type, nanflag)
- y = rms(x, 'all', type, nanflag)

## 📥 Input argument

- x - Input array, specified as a vector, matrix, or multidimensional array: single, double, logical, integer types
- dim - Dimension to operate along, specified as a positive integer scalar.
- 'all' - Operate on all elements of x, returning the RMS value of all elements.
- type - Data type to use in the computation: 'double', 'native'
- nanflag - Missing value condition, specified as: 'includenan', 'includemissing', 'omitnan', 'omitmissing'

## 📤 Output argument

- y - Root mean square value(s), returned as a scalar, vector, or array.

## 📄 Description

<b>rms</b> returns the root mean square (RMS) value of the input array elements.

- If <b>x</b> is a vector, <b>y</b> is a scalar.
- If <b>x</b> is a matrix, <b>y</b> is a row vector containing the RMS value for each column (default).
- If <b>x</b> is a multidimensional array, <b>y</b> contains the RMS values computed along the first array dimension whose size does not equal 1, unless another dimension is specified.

The root mean square value of an array x is:
$$\mathrm{RMS}(x) = \sqrt{ \frac{1}{N} \sum_{n=1}^{N} |x_n|^2 }$$
where the summation is performed along the specified dimension(s), and N is the number of elements along those dimensions.

<b>NaN Handling:</b> By default, NaN values are included. Use 'omitnan' or 'omitmissing' to ignore NaNs.

<b>Type Handling:</b> If <b>type</b> is 'native', the computation and output use the same class as the input (e.g., integer input returns integer output).

## 💡 Examples

RMS Value of Vector

```matlab

t = 0:0.001:1-0.001;
x = cos(2*pi*100*t);
y = rms(x)
% y = 0.7071

```

RMS Values of Matrix Columns

```matlab

x = [4 -5 1; 2 3 5; -9 1 7];
y = rms(x)
% y = [5.8023 3.4157 5.0000]

```

RMS Values of Matrix Rows

```matlab

x = [6 4 23 -3; 9 -10 4 11; 2 8 -5 1];
y = rms(x,2)
% y = [12.1450; 8.9163; 4.8477]

```

RMS Excluding Missing Values

```matlab

x = [1.77 -0.005 nan -2.95; nan 0.34 nan 0.19];
y = rms(x,"omitnan")
% y = [1.7700 0.2404 nan 2.0903]

```

RMS with Integer Input and Native Output

```matlab

M = uint8([10:30:70;20:30:80;30:30:90]);
R = rms(M, 'native')
% R is of class uint8

```

## 🔗 See also

[conv](../data_analysis/conv.md), [max](../data_analysis/max.md), [min](../data_analysis/min.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.16.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
