# randi

Random Integer.

## 📝 Syntax

- X = randi(imax)
- X = randi(imax, n)
- X = randi(imax, sz)
- X = randi(imax, ..., typename)
- X = randi(imax, ..., 'like', p)
- X = randi([imin, imax], ...)

## 📥 Input argument

- imax - Maximum integer value (inclusive).
- imin - Minimum integer value (inclusive).
- n - Generates an n-by-n matrix.
- sz - Size vector specifying the size of the output array.
- typename - Data type of output: "single", "double", "int8", "uint8", "int16", "uint16", "int32", "uint32", or "logical".
- p - Array whose type and complexity are used for output.

## 📤 Output argument

- X - Array of random integers.

## 📄 Description

<b>randi</b> returns random integers drawn from a discrete uniform distribution.

X = randi(imax) returns a random scalar integer between 1 and imax.

X = randi(imax, n) returns an n-by-n matrix of random integers between 1 and imax.

X = randi(imax, sz) returns an array where size vector sz defines size(X).

X = randi(imax, ..., typename) returns an array of random integers of type typename.

X = randi(imax, ..., 'like', p) returns an array of random integers like p (same type and complexity).

X = randi([imin, imax], ...) returns random integers between imin and imax.

## 💡 Examples

```matlab

X = randi(10)

```

```matlab

X = randi(10, 3, 4)

```

```matlab

X = randi(10, [3 4])

```

```matlab

X = randi(10, 3, 4, 'int32')

```

```matlab

p = single([3 3]);
X = randi(10, 3, 3, 'like', p)

```

```matlab

X = randi([5, 15], 2, 3)

```

## 🔗 See also

[rng](../random/rng.md), [rand](../random/rand.md), [randn](../random/randn.md), [eye](../constructors_functions/eye.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.15.0  | initial version |

## 👤 Author

Allan CORNET
