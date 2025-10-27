# validatecolor

Valider les valeurs de couleur.

## 📝 Syntaxe

- RGB = validatecolor(colors)
- RGB = validatecolor(colors, sz)

## 📥 Argument d'entrée

- colors - Vecteur 1-par-3, matrice m-par-3, vecteur de caractères, tableau de cellules de vecteurs de caractères ou tableau de chaînes.
- sz - 'one' (par défaut) ou 'multiple'

## 📤 Argument de sortie

- RGB - Valeurs RGB : triplet RGB ou matrice de triplets RGB.

## 📄 Description

La fonction <b>validatecolor</b> est une fonction de validation des couleurs qui vérifie si une couleur donnée est valide selon les standards de Nelson.

Elle prend un argument de couleur en entrée et retourne une erreur si la couleur n'est pas valide.

## 💡 Exemple

```matlab
RGB = validatecolor('red')
RGB = validatecolor('purple')
RGB = validatecolor({'#8000FF','#00FF00','#FF9900'}, 'multiple')
RGB = validatecolor({'red','green','blue'},'multiple')

```

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | Version initiale |

## 👤 Auteur

Allan CORNET
