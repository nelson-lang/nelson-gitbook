# str2double

Convertit une chaîne en double.

## 📝 Syntaxe

- res = str2double(str)

## 📥 Argument d'entrée

- str - une cellule de chaînes, un tableau de chaînes ou une chaîne.

## 📤 Argument de sortie

- res - un double

## 📄 Description


<b>str2double</b> convertit une chaîne représentant un nombre en une valeur numérique de type double. Si la chaîne représente un nombre complexe, les parties réelle et imaginaire sont converties séparément en valeurs numériques. 

Si<b>str2double</b> ne peut pas convertir la chaîne en nombre, elle renvoie la valeur NaN (Not-a-Number). 

Un exposant signe exige le marqueur e ou d : '1e+2' et '1d+2' donnent 100, tandis que '1+2' et '1-2' sont invalides et donnent NaN. Le texte fourni n'est pas evalue comme une expression arithmetique. Les valeurs complexes comme '1+2i' restent prises en charge.

## 💡 Exemple



```matlab
R = str2double('2.6 + 3j')
R = str2double('+NaNi')
R = str2double({'2.71' '3.1415'})
R = str2double(["2.71" "3.1415"])

```


## 🔗 Voir aussi

[double](../../double/double.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
