# findobj

Trouve des objets graphiques avec des proprietes donnees.

## 📝 Syntaxe

- h = findobj()
- h = findobj(prop, value)
- h = findobj(objhandles, prop, value)
- h = findobj(objhandles, 'flat', ...)
- h = findobj(objhandles, '-depth', d, ...)
- h = findobj(..., '-property', prop)
- h = findobj(..., '-regexp', prop, expr)

## 📥 Argument d'entrée

- objhandles - objet graphique ou tableau d'objets graphiques depuis lesquels chercher.
- prop - nom de propriete sous forme de vecteur de caracteres ou chaine scalaire.
- value - valeur de propriete a rechercher.
- d - profondeur de recherche, entiere positive ou nulle, ou Inf.
- expr - expression reguliere appliquee a une propriete texte.

## 📤 Argument de sortie

- h - tableau colonne des objets graphiques trouves.

## 📄 Description

<b>findobj</b> parcourt la hierarchie graphique depuis l'objet racine ou depuis les objets graphiques fournis. Les objets dont <b>HandleVisibility</b> vaut <b>
'off'
</b>, ainsi que leurs descendants, ne sont pas retournes.

Les predicats de proprietes peuvent etre combines avec <b>
'-and'
</b>, <b>
'-or'
</b>, <b>
'-xor'
</b> et <b>
'-not'
</b>. Les tableaux de cellules permettent de grouper les expressions.

## 💡 Exemples

```matlab
close all
plot(rand(5))
h = findobj('Type', 'line')
```

```matlab
close all
plot(1:10, 'Tag', 'linear')
h = findobj('-regexp', 'Tag', 'lin')
```

```matlab
close all
plot(1:10, 'Tag', 'linear')
hold on
plot((1:10).^2, 'Tag', 'quadratic')
h = findobj('Type', 'line', '-and', '-not', {'Tag', 'linear'})
```

## 🔗 Voir aussi

[groot](../graphics/groot.md), [gcf](../graphics/gcf.md), [gca](../graphics/gca.md), [isgraphics](../graphics/isgraphics.md), [get](../handle/get.md), [set](../handle/set.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.17.0  | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
