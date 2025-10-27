# string

Constructeur de tableau de chaînes.

## 📝 Syntaxe

- res = string(var)

## 📥 Argument d'entrée

- var - des caractères, une cellule de vecteurs de caractères, ou un tableau logique ou numérique.

## 📤 Argument de sortie

- res - un tableau de chaînes

## 📄 Description

<b>string</b> convertit l'entrée en tableau de chaînes.

## 💡 Exemples

```matlab
R = string({'these', 'are'; 'test', 'strings'})
R2 = ["these", "are"; "test", "strings"];
```

```matlab
M = [ 104   101   108   108   111;
20320   22909 32    32    32];
R = string(M)
D = double(R)
```

## 🔗 Voir aussi

[strings](../string/strings.md), [double](../double/double.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
