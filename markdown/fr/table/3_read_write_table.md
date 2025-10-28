# Lecture/Écriture de tables vers des fichiers

## 📄 Description

Nelson fournit des capacités étendues pour la lecture et l'écriture de tables vers des fichiers, prenant en charge les formats texte et binaire selon les besoins de gestion des données.

Fichiers texte (.csv, .txt, etc.) :

- writetable() exporte les tables vers des fichiers texte délimités avec des séparateurs personnalisables
- readtable() importe les tables depuis des fichiers texte délimités avec détection automatique du format
- Les fichiers texte conservent les noms de variables et les données au format lisible par l'humain

Fichier binaire :

- Format Nelson HDF5 (.nh5) :

- Stockage binaire efficace utilisant HDF5
- Conserve toutes les métadonnées et les types de données de la table
- Utilisez les commandes save -nh5 et load

Le format binaire est recommandé pour préserver la précision numérique exacte et travailler avec de grands ensembles de données.

## 💡 Exemples

Read/Write table to .nh5 file

```matlab
% Create a sample table with sensor data
T = table([1.5; -2.3; 4.7], [0.5; 1.1; -0.7], [-1; 2; 3], 'VariableNames', {'Voltage', 'Current', 'Resistance'});
R = T;
filename = [tempdir(), 'table_example.nh5'];
save(filename, '-nh5', 'T');
clear T
load(filename, 'T');
assert(isequal(T, R));
T

```

Read/Write table to text file

```matlab
% Create a sample table with sensor data
T = table([1.5; -2.3; 4.7], [0.5; 1.1; -0.7], [-1; 2; 3], 'VariableNames', {'Voltage', 'Current', 'Resistance'});
filename = [tempdir(), 'table_example.csv'];
writetable(T, filename);
T2 = readtable(filename);

```

## 🔗 Voir aussi

[writetable](../spreadsheet/writetable.md), [readtable](../spreadsheet/readtable.md), [load](../stream_manager/load.md), [save](../stream_manager/save.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.10.0  | version initiale |

## 👤 Auteur

Allan CORNET
