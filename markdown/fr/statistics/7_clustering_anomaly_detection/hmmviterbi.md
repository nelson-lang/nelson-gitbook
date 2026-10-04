# hmmviterbi

Chemin d'etats le plus probable pour un modele de Markov cache discret.

## 📝 Syntaxe

- states = hmmviterbi(seq, trans, emis)
- [states, logp] = hmmviterbi(seq, trans, emis)

## 📄 Description

<b>hmmviterbi</b> calcule le chemin d'etats caches le plus probable pour une sequence de symboles.

## 💡 Exemple

```matlab
states = hmmviterbi([1 2 3 2 1], [0.7 0.3; 0.4 0.6], [0.5 0.4 0.1; 0.1 0.3 0.6])
```

## 🔗 Voir aussi

[hmmdecode](../../statistics/hmmdecode.md), [hmmgenerate](../../statistics/hmmgenerate.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
