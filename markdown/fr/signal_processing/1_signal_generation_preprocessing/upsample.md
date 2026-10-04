# upsample

Suréchantillonne une séquence par un facteur entier.

## 📝 Syntaxe

- Y = upsample(X, n)
- Y = upsample(X, n, phase)
- Y = upsample(X, n, phase, dim)

## 📥 Argument d'entrée

- X - tableau d'entrée.
- n - facteur de suréchantillonnage entier positif.
- phase - phase optionnelle entre 0 et n - 1.
- dim - dimension optionnelle à traiter.

## 📤 Argument de sortie

- Y - tableau suréchantillonné avec insertion de zéros.

## 📄 Description

<b>upsample</b> insère n - 1 zéros entre les échantillons le long de la dimension choisie.

## 💡 Exemple

```matlab

Y = upsample([1 2 3], 2)

```

## 🔗 Voir aussi

[downsample](../../signal_processing/downsample.md), [upfirdn](../../signal_processing/upfirdn.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
