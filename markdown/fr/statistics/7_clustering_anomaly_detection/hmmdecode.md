# hmmdecode

Probabilites posterieures des etats d'un modele de Markov cache discret.

## 📝 Syntaxe

- pstates = hmmdecode(seq, trans, emis)
- [pstates, logpseq] = hmmdecode(seq, trans, emis)

## 📄 Description

<b>hmmdecode</b> utilise un passage forward-backward mis a l'echelle pour calculer les probabilites posterieures des etats et la log-vraisemblance de la sequence.

## 💡 Exemple

```matlab
seq = [1 2 3 2 1];
trans = [0.7 0.3; 0.4 0.6];
emis = [0.5 0.4 0.1; 0.1 0.3 0.6];
[pstates, logpseq] = hmmdecode(seq, trans, emis)
```

## 🔗 Voir aussi

[hmmviterbi](../../statistics/hmmviterbi.md), [hmmtrain](../../statistics/hmmtrain.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
