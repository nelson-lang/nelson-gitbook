# validatecolor

Valider les valeurs de couleur.

## 📝 Syntaxe

- RGB = validatecolor(colors)
- RGB = validatecolor(colors, sz)

## 📥 Argument d'entrée

- colors - Vecteur 1-par-3, matrice m-par-3, vecteur de caractères, tableau de cellules 1-D de vecteurs de caractères ou tableau de chaînes 1-D.
- sz - 'one' (par défaut) ou 'multiple'

## 📤 Argument de sortie

- RGB - Valeurs RGB : triplet RGB ou matrice de triplets RGB.

## 📄 Description


La fonction<b>validatecolor</b> est une fonction de validation des couleurs qui vérifie si une couleur donnée est valide selon les standards de Nelson. 

Elle prend un argument de couleur en entrée et retourne une erreur si la couleur n'est pas valide. 

Les codes couleur hexadécimaux utilisent six ('#FF8800') ou trois ('#F80') chiffres hexadécimaux.

## 💡 Exemple



```matlab
RGB = validatecolor('red')
RGB = validatecolor('purple')
RGB = validatecolor({'#8000FF','#00FF00','#FF9900'}, 'multiple')
RGB = validatecolor({'red','green','blue'},'multiple')

```


## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | Version initiale |
| 2.0.0   | Codes couleur hexadécimaux à 3 chiffres ('#F80') acceptés, valeurs exactes k/255 pour les codes hexadécimaux, erreur pour les tableaux de cellules ou de chaînes non 1-D. |

<!--
## 👤 Auteur

Allan CORNET
-->
