# hmmgenerate

Genere une sequence de Markov cachee discrete.

## 📝 Syntaxe

- [seq, states] = hmmgenerate(len, trans, emis)

## 📄 Description

<b>hmmgenerate</b> genere des symboles et des etats a partir de matrices de transition et d'emission.

## 💡 Exemple

```matlab
trans = [0.7 0.3; 0.4 0.6];
emis = [0.5 0.4 0.1; 0.1 0.3 0.6];
[seq, states] = hmmgenerate(10, trans, emis)
```

## 🔗 Voir aussi

[hmmdecode](../../statistics/hmmdecode.md), [hmmviterbi](../../statistics/hmmviterbi.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
