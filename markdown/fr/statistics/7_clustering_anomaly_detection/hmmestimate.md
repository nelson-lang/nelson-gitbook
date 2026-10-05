# hmmestimate

Estime les probabilites d'un modele de Markov cache discret avec etats connus.

## 📝 Syntaxe

- [trans, emis] = hmmestimate(seq, states)
- [trans, emis] = hmmestimate(seq, states, Name, Value)

## 📄 Description


<b>hmmestimate</b> estime les matrices de transition et d'emission a partir d'une sequence de symboles et d'un chemin d'etats connu.

Les arguments nom-valeur incluent NStates, NSymbols, PseudoTransitions et PseudoEmissions.

## 💡 Exemple



```matlab
seq = [1 2 3 2 1];
states = [1 1 2 2 1];
[trans, emis] = hmmestimate(seq, states)
```


## 🔗 Voir aussi

[hmmtrain](../../statistics/7_clustering_anomaly_detection/hmmtrain.md), [hmmgenerate](../../statistics/7_clustering_anomaly_detection/hmmgenerate.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
