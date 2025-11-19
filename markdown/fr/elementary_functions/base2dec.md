# base2dec

Convertit un nombre d'une base donnée en décimal.

## 📝 Syntaxe

- D = base2dec(TXT, B)

## 📥 Argument d'entrée

- TXT - un tableau de caractères.
- B - un entier : [2, 36].

## 📤 Argument de sortie

- D - résultat de base2dec : une valeur entière.

## 📄 Description

<b>base2dec</b> convertit un nombre d'une base donnée en décimal.

Remarques :

- <b>dec2base</b> et<b>base2dec</b> sont mutuellement inverses.

- des valeurs sont mises en cache pour accélérer les calculs ultérieurs ; utiliser<b>base2dec('', 2)</b> pour vider le cache.

## 💡 Exemple

```matlab
base2dec('313', 3)
```

## 🔗 Voir aussi

[dec2base](../elementary_functions/dec2base.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
