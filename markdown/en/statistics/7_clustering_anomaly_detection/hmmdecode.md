# hmmdecode

Posterior state probabilities for a discrete hidden Markov model.

## 📝 Syntax

- pstates = hmmdecode(seq, trans, emis)
- [pstates, logpseq] = hmmdecode(seq, trans, emis)

## 📄 Description


<b>hmmdecode</b> uses a scaled forward-backward pass to compute posterior state probabilities and sequence log likelihood.

## 💡 Example



```matlab
seq = [1 2 3 2 1];
trans = [0.7 0.3; 0.4 0.6];
emis = [0.5 0.4 0.1; 0.1 0.3 0.6];
[pstates, logpseq] = hmmdecode(seq, trans, emis)
```


## 🔗 See also

[hmmviterbi](../../statistics/7_clustering_anomaly_detection/hmmviterbi.md), [hmmtrain](../../statistics/7_clustering_anomaly_detection/hmmtrain.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
