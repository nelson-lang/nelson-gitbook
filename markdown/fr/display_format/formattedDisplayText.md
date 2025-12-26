# formattedDisplayText

Capturer la sortie d'affichage en tant que chaîne.

## 📝 Syntaxe

- str = formattedDisplayText(V)
- str = formattedDisplayText(V, Name, Value)

## 📥 Argument d'entrée

- V - Variable à retourner sous forme de chaîne
- Name, Value - Arguments paires nom-valeur, Name : 'NumericFormat' ou 'LineSpacing'.

## 📤 Argument de sortie

- str - une chaîne

## 📄 Description

<b>str = formattedDisplayText(V)</b> renvoie la sortie d'affichage de <b>V</b> sous forme de chaîne.

La chaîne est équivalente à la sortie de <b>disp(V)</b>.

## 💡 Exemple

```matlab
R = eye(3, 3)
str = formattedDisplayText(R)
R = rand(3, 3);
disp(R)
str = formattedDisplayText(R)
str = formattedDisplayText(R, 'NumericFormat', 'bank', 'LineSpacing', 'compact')
```

## 🔗 Voir aussi

[display](../display_format/display.md), [disp](../display_format/disp.md), [format](../display_format/format.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
