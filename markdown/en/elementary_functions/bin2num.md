# bin2num

Convert two's complement binary string to number.

## 📝 Syntax

- R = bin2num(M)

## 📥 Input argument

- M - a char array with.

## 📤 Output argument

- R - result of num2bin: logical, single or double.

## 📄 Description

<b>bin2num</b> converts binary character arry to a numeric array.

Note:

- <b>num2bin</b> always returns the binary representations in a column

- <b>bin2num</b> and <b>num2bin</b> are inverses of one another.

## Used function(s)

C++ std::bitset

## 📚 Bibliography

http://www.oxfordmathcenter.com/drupal7/node/43

## 💡 Example

```matlab
X = [65535 128; 1 0]
Y = num2bin(X)
bin2num(Y)
```

## 🔗 See also

[num2bin](../elementary_functions/num2bin.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
