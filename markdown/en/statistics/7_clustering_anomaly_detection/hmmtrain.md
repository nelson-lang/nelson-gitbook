# hmmtrain

Train a discrete hidden Markov model.

## 📝 Syntax

- [trans, emis] = hmmtrain(seq, trans0, emis0)
- [trans, emis] = hmmtrain(seq, trans0, emis0, Name, Value)

## 📄 Description

<b>hmmtrain</b> refines transition and emission probability matrices for a symbol sequence using Baum-Welch iterations.

Name-value arguments include MaxIterations, Tolerance, Verbose, PseudoTransitions, and PseudoEmissions.

## 💡 Example

```matlab
seq = [1 2 3 2 1];
trans0 = [0.7 0.3; 0.4 0.6];
emis0 = [0.5 0.4 0.1; 0.1 0.3 0.6];
[trans, emis] = hmmtrain(seq, trans0, emis0)
```

## 🔗 See also

[hmmestimate](../../statistics/hmmestimate.md), [hmmdecode](../../statistics/hmmdecode.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
