# groot

Objet racine graphique.

## 📝 Syntaxe

- g = groot()

## 📤 Argument de sortie

- g - Un objet graphique : objet racine.

## 📄 Description

<b>groot</b> retourne l'objet racine graphique.

Propriétés :

<b>Children</b> : Tableau des objets figure disponibles.

<b>CurrentFigure</b> : Objet graphique figure courant.

<b>Parent</b> : tableau vide (pas de parent)

<b>PointerLocation</b> : Position actuelle du pointeur.

<b>ScreenDepth</b> : Nombre de bits définissant chaque couleur de pixel.

<b>ScreenSize</b> : Taille de l'écran principal (vecteur).

<b>Tag</b> : Identifiant de l'objet : chaîne, vecteur de caractères, '' (par défaut).

<b>Type</b> : Type 'root'.

<b>Units</b> : 'pixels'.

<b>UserData</b> : Données utilisateur : tableau ou [] (par défaut).

## 💡 Exemple

```matlab
g = groot()
g.ScreenDepth
```

## 🔗 Voir aussi

[figure](../graphics/figure.md), [gcf](../graphics/gcf.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
