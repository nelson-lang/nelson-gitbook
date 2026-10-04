# resample

Change la frequence d'echantillonnage par un facteur rationnel.

## 📝 Syntaxe

- Y = resample(X, P, Q)
- Y = resample(X, P, Q, N)
- Y = resample(X, P, Q, N, Beta)
- Y = resample(X, P, Q, B)
- Y = resample(..., 'Dimension', Dim)

## 📥 Argument d'entrée

- X - signal ou tableau d'entree.
- P - facteur de surechantillonnage.
- Q - facteur de sous-echantillonnage.
- N - facteur de demi-longueur du filtre. La valeur par defaut est 10.
- Beta - parametre de forme de la fenetre de Kaiser. La valeur par defaut est 5.
- B - coefficients FIR du filtre anti-repliement.
- Dim - dimension de travail.

## 📤 Argument de sortie

- Y - signal reechantillonne.

## 📄 Description

<b>resample</b> change la frequence d'un signal en filtrant entre surechantillonnage et sous-echantillonnage.

## 💡 Exemple

```matlab

y = resample(1:10, 3, 2);

```

## 🔗 Voir aussi

[upfirdn](../../signal_processing/upfirdn.md), [decimate](../../signal_processing/decimate.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
