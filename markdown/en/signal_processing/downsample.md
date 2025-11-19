# downsample

Downsample a signal by an integer factor.

## 📝 Syntax

- Y = downsample(X, n)
- Y = downsample(X, n, phase)
- Y = downsample(X, n, phase, dim)

## 📥 Input argument

- X - input sequence. Vector or matrix. If X is a matrix, columns are processed independently by default.
- n - positive integer downsampling factor (n > 0).
- phase - optional integer in the range 0..n-1 (default 0). The output starts at X(phase+1) and then takes every n-th sample.
- dim - optional dimension along which to downsample. If omitted, downsampling is applied to columns for 2-D inputs.

## 📤 Output argument

- Y - downsampled result: elements of X taken every n samples starting at index (phase + 1) along the specified dimension.

## 📄 Description

The<b>downsample</b> function returns every n-th sample of the input sequence X, beginning at sample index (phase + 1). For example,<b>downsample(X, 2)</b> returns the odd-indexed samples of X (1,3,5,...). If X is a matrix, the operation is applied column-wise by default unless a dimension is provided.

No anti-aliasing filtering is performed; if you need to reduce high-frequency content before decimation, consider using<b>decimate</b> or applying a low-pass filter first.

## 💡 Example

```matlab

% Downsample a vector by 2
X = 1:10;
Y = downsample(X, 2);
% Y is [1 3 5 7 9]

% Downsample with phase = 1 (start at second element)
Y2 = downsample(X, 3, 1);
% Y2 is [2 5 8]

% Downsample columns of a matrix by 2
A = reshape(1:12, 4, 3);
B = downsample(A, 2);

```

## 🔗 See also

[interp1](../special_functions/interp1.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.15.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
