# h5read

Lit un jeu de données HDF5.

## 📝 Syntaxe

- val = h5read(filename, location)

## 📥 Argument d'entrée

- filename - une chaîne : nom de fichier HDF5.
- location - une chaîne : chemin complet identifiant un jeu de données.

## 📤 Argument de sortie

- val - une variable Nelson.

## 📄 Description

<b>h5read</b> lit le jeu de données situé à<b>location</b> dans le fichier HDF5.

Si <b>location</b> identifie un groupe objet Nelson, <b>h5read</b> reconstruit l'objet de classe historique ou l'objet classdef valeur/handle stocké.

## 💡 Exemples

```matlab
h5_directory = [modulepath('hdf5','tests'), '/h5'];
double_data = [h5_directory, '/h5ex_t_float.h5'];
R = h5read(double_data,'/DS1')
```

```matlab
h5filename = [tempdir(), 'doc_h5read_class.h5'];
if isfile(h5filename) rmfile(h5filename) end
addpath([nelsonroot(), '/modules/overload/examples/complex']);
obj = complexObj(3, 4);
h5write(h5filename, '/obj', obj);
R = h5read(h5filename, '/obj');
class(R)
R.r
R.i
```

## 🔗 Voir aussi

[h5write](../hdf5/h5write.md).

## 🕔 Historique

| Version | 📄 Description                                                                      |
| ------- | ----------------------------------------------------------------------------------- |
| 1.0.0   | version initiale                                                                    |
| 2.0.0   | Les objets de classe Nelson peuvent être reconstruits depuis les métadonnées objet. |

<!--
## 👤 Auteur

Allan CORNET
-->
