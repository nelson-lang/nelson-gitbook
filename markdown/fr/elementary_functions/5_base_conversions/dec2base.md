# dec2base

Convertit un nombre décimal vers une autre base.

## 📝 Syntaxe

- R = dec2base(D, B)
- R = dec2base(D, B, N)

## 📥 Argument d'entrée

- D - un entier non négatif inférieur à la valeur retournée par flintmax.
- B - un entier : [2, 36].
- N - un entier : nombre de chiffres.

## 📤 Argument de sortie

- R - résultat de dec2base : tableau de caractères.

## 📄 Description


<b>dec2base</b> convertit un nombre décimal vers une autre base. 

Des valeurs sont mises en cache pour accélérer les calculs ultérieurs ; utiliser<b>dec2base([], 2)</b> pour vider le cache.

## 💡 Exemple



```matlab
X = [65535 128; 1 0]
Y = dec2base(X, 2)
Y = dec2base(X, 2, 26)

```


## 🔗 Voir aussi

[base2dec](../../elementary_functions/5_base_conversions/base2dec.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
