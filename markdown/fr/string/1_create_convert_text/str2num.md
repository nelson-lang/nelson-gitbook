# str2num

Convertit un tableau de caractères en tableau numérique.

## 📝 Syntaxe

- x = str2num(s)
- [x, ok] = str2num(s)

## 📥 Argument d'entrée

- s - un vecteur de caractères ou une chaîne scalaire contenant une expression numérique.

## 📤 Argument de sortie

- x - le résultat numérique, ou <b>[]</b> si le texte ne peut être évalué en nombre.
- ok - un logique : <b>true</b> si la conversion a réussi.

## 📄 Description


<b>x = str2num(s)</b> convertit le tableau de caractères <b>s</b> en tableau numérique en l'évaluant. 

Comme <b>str2num</b> évalue son entrée, préférez <b>str2double</b> pour les conversions scalaires simples.

## 💡 Exemple



```matlab
x = str2num('[1 2 3]')
[y, ok] = str2num('4 5; 6 7')
```


## 🔗 Voir aussi

[str2double](../../string/1_create_convert_text/str2double.md), [num2str](../../string/1_create_convert_text/num2str.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Auteur

Allan CORNET
-->
