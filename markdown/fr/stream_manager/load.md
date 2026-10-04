# load

Charge des donnees depuis un fichier .nh5 ou .mat dans l'espace de travail de Nelson.

## 📝 Syntaxe

- load(filename)
- st = load(filename)
- load(filename, var1, ..., varN)
- st = load(filename, var1, ..., varN)
- load(filename, '-mat')
- load(filename, '-nh5')

## 📥 Argument d'entrée

- filename - une chaine : nom de fichier .nh5 ou .mat.
- '-mat' ou '-nh5' - force la lecture du fichier comme fichier nh5 ou mat.
- var1, ..., varN - chaines : noms des variables a charger dans l'espace de travail de Nelson.

## 📤 Argument de sortie

- st - une structure dont les champs sont les noms des variables chargees.

## 📄 Description

<b>load</b> charge des donnees depuis un fichier .nh5 ou .mat vers l'espace de travail de Nelson.

Les objets classdef sauvegardes par Nelson sont restaures comme objets classdef lorsque leur definition de classe est disponible dans le chemin.

## 💡 Exemples

Charger des variables depuis un fichier MAT.

```matlab
A = ones(3, 4);
B = 'hello for open mat users';
filename = [tempdir(), 'example_load.mat'];
save(filename, 'A', 'B')
clear A B;
st = load(filename);
st.A
st.B
```

Charger un objet classdef sauvegarde.

```matlab
clear classes
d = [tempdir(), 'nelson_help_load_classdef/'];
mkdir(d);
filewrite([d, '/NelsonHelpLoadPoint.m'], ["classdef NelsonHelpLoadPoint"; "  properties"; "    X = 0"; "    Y = 0"; "  end"; "end"]);
addpath(d);
point = NelsonHelpLoadPoint();
point.X = 7;
point.Y = 8;
filename = [tempdir(), 'nelson_help_load_classdef.nh5'];
save(filename, 'point');
clear point;
clear classes;
loaded = load(filename);
className = class(loaded.point)
coordinates = [loaded.point.X, loaded.point.Y]
```

## 🔗 Voir aussi

[save](../stream_manager/save.md), [savemat](../matio/savemat.md), [savenh5](../hdf5/savenh5.md), [classdef](../interpreter/classdef.md).

## 🕔 Historique

| Version | 📄 Description                                           |
| ------- | -------------------------------------------------------- |
| 1.0.0   | version initiale                                         |
| 2.0.0   | comportement de chargement des objets classdef documente |

<!--
## 👤 Auteur

Allan CORNET
-->
