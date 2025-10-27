# gca

Récupère l'objet axes courant.

## 📝 Syntaxe

- ca = gca()

## 📤 Argument de sortie

- ca - Un objet graphique : objet axes graphique.

## 📄 Description

<b>ca = gca()</b> retourne l'objet axes graphique courant.

Si aucun axes n'existe, <b>gca()</b> crée un axes et retourne son objet graphique.

## 💡 Exemple

```matlab
ca = gca()
isgraphics(ax, 'axes')
```

## 🔗 Voir aussi

[isgraphics](../graphics/isgraphics.md), [axes](../graphics/axes.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
