# stlwrite

Creer un fichier STL depuis une triangulation

## 📝 Syntaxe

- stlwrite(TR, filename)
- stlwrite(TR, filename, fileformat)
- stlwrite(TR, filename, ..., Name, Value)

## 📄 Description


<b>stlwrite</b> ecrit un objet <b>triangulation</b> dans un fichier STL binaire par defaut. 

<b>fileformat</b> peut valoir <b>'binary'</b> ou <b>'text'</b>. Utiliser <b>'Attribute'</b> avec les fichiers binaires pour ecrire une valeur <b>uint16</b> par triangle. Utiliser <b>'SolidIndex'</b> avec les fichiers texte pour grouper les triangles dans des sections solides.

## 💡 Exemple

Ecrire un fichier STL texte.

```matlab
P = [0 0; 1 0; 0 1];
T = [1 2 3];
TR = triangulation(T, P);
filename = [tempdir(), 'simple_text.stl'];
stlwrite(TR, filename, 'text')
```


## 🔗 Voir aussi

[stlread](../geometry/stlread.md), [triangulation](../geometry/triangulation.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
