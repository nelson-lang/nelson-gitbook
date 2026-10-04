# convertStringToCharArgs

Convertir des tableaux de chaînes en tableaux de caractères ou en cellules de vecteurs de caractères.

## 📝 Syntaxe

- C = convertStringToCharArgs(S)

## 📥 Argument d'entrée

- S - Scalaire de chaîne ou tableau de chaînes en entrée. Si S est un scalaire de chaîne, la sortie C est un vecteur de caractères. Si S est un tableau de chaînes, C est renvoyé sous forme de cellule de vecteurs de caractères.

## 📤 Argument de sortie

- C - Vecteur de caractères (pour une entrée scalaire de chaîne) ou tableau de cellules de vecteurs de caractères (pour des tableaux de chaînes). Si l'entrée n'était pas une chaîne, C est l'entrée non modifiée.

## 📄 Description

<b>convertStringToCharArgs</b> convertit soit un tableau de cellules de valeurs de chaîne, soit un tableau de chaînes en un tableau de cellules de vecteurs de caractères.

Pour convertir un scalaire de chaîne unique en un vecteur de caractères, utilisez plutôt la fonction char.

Cette conversion est nécessaire car certaines fonctions (par exemple set ou get) n'acceptent actuellement pas les entrées de type chaîne.

## 💡 Exemple

Convertir un scalaire de chaîne en un vecteur de caractères et un tableau de chaînes en une cellule de vecteurs de caractères.

```matlab

% Scalaire de chaîne -> vecteur de caractères
C = convertStringToCharArgs("Nelson")
% Tableau de chaînes -> cellule de vecteurs de caractères
C2 = convertStringToCharArgs({"a",'b'; 1,"d"})
```

## 🔗 Voir aussi

[convertCharsToStrings](../../string/convertCharsToStrings.md), [cellstr](../../data_structures/cellstr.md), [string](../../string/string.md), [char](../../string/char.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.15.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
