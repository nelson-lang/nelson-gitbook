# hmmgenerate

Generate a discrete hidden Markov sequence.

## 📝 Syntax

- [seq, states] = hmmgenerate(len, trans, emis)

## 📄 Description

<b>hmmgenerate</b> generates symbols and states from transition and emission probability matrices.

## 💡 Example

```matlab
trans = [0.7 0.3; 0.4 0.6];
emis = [0.5 0.4 0.1; 0.1 0.3 0.6];
[seq, states] = hmmgenerate(10, trans, emis)
```

## 🔗 See also

[hmmdecode](../../statistics/hmmdecode.md), [hmmviterbi](../../statistics/hmmviterbi.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
