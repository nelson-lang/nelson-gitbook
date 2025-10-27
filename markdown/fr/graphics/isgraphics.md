# isgraphics

Vérifie si l'objet est graphique.

## 📝 Syntaxe

- tf = isgraphics(GO)
- tf = isgraphics(GO, type)

## 📥 Argument d'entrée

- GO - Variable ou objet graphique.
- type - Un vecteur de caractères ou une chaîne scalaire : 'axes', 'line', 'image', 'root', 'text', 'figure'.

## 📤 Argument de sortie

- tf - Un scalaire logique.

## 📄 Description

<b>isgraphics</b> vérifie si la variable est un objet graphique.

## 💡 Exemple

```matlab
f = figure()
tf = isgraphics(f)
tf = isgraphics(f, 'figure')
tf = isgraphics(f, 'text')
f = 3
tf = isgraphics(f)
```

## 🔗 Voir aussi

[isprop](../handle/isprop.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
