# hmmestimate

Estimate discrete hidden Markov probabilities from known states.

## 📝 Syntax

- [trans, emis] = hmmestimate(seq, states)
- [trans, emis] = hmmestimate(seq, states, Name, Value)

## 📄 Description

<b>hmmestimate</b> estimates transition and emission probability matrices from a symbol sequence and known state path.

Name-value arguments include NStates, NSymbols, PseudoTransitions, and PseudoEmissions.

## 💡 Example

```matlab
seq = [1 2 3 2 1];
states = [1 1 2 2 1];
[trans, emis] = hmmestimate(seq, states)
```

## 🔗 See also

[hmmtrain](../../statistics/hmmtrain.md), [hmmgenerate](../../statistics/hmmgenerate.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
