# axescheck

Extrait un handle d'axes d'une liste d'arguments.

## 📝 Syntaxe

- [ax, args, nargs] = axescheck(arg1, arg2, ...)

## 📥 Argument d'entrée

- arg1, arg2, ... - une liste d'arguments, telle que passée à une fonction de tracé.

## 📤 Argument de sortie

- ax - le handle d'axes trouvé dans la liste, ou <b>[]</b> si aucun n'a été fourni.
- args - les arguments restants, sous forme de tableau de cellules.
- nargs - le nombre d'arguments restants, <b>numel(args)</b>.

## 📄 Description


<b>axescheck</b> est un utilitaire pour les fonctions de tracé. Il renvoie dans <b>ax</b> un handle d'axes de tête (ou <b>[]</b> lorsque le premier argument n'est pas un axes), les arguments restants étant dans <b>args</b>. Une paire <b>'Parent'</b>, valeur présente dans la liste fournit également l'axes et est retirée de <b>args</b>.

## 💡 Exemple



```matlab
ax = axes();
[cax, args, nargs] = axescheck(ax, 1, 2)
```


## 🔗 Voir aussi

[gca](../../../graphics/2_graphics_objects/1_object_management/gca.md), [isgraphics](../../../graphics/2_graphics_objects/1_object_management/isgraphics.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
