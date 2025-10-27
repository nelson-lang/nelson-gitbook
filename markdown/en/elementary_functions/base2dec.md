# base2dec

Convert number in a base to decimal.

## 📝 Syntax

- D = base2dec(TXT, B)

## 📥 Input argument

- TXT - a char array.
- B - an integer value: [2, 36].

## 📤 Output argument

- D - result of base2dec: an integer value.

## 📄 Description

<b>base2dec</b> converts number in a base to decimal.

Note:

- <b>dec2base</b> and <b>base2dec</b> are inverses of one another.

- values are cached to speed up next computation <b>base2dec('', 2) to clear cache.</b>

## 💡 Example

```matlab
base2dec('313', 3)
```

## 🔗 See also

[dec2base](../elementary_functions/dec2base.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
