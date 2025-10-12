# save

enregistrer des variables de l'espace de travail dans un fichier .nh5 ou .mat

## Syntaxe

- save(filename)
- save(filename, version, var1, ..., varN)
- save(filename, '-append', ...)
- save(filename, '-mat', ...)
- save(filename, '-nh5', ...)
- save(filename, '-nocompression', ...)

## Argument d'entrée

- filename - une chaîne : nom de fichier .nh5 ou .mat. L'extension définit le format utilisé (.mat ou .nh5 par défaut).
- var1, ..., varN - chaîne : noms des variables à enregistrer depuis l'espace de travail de Nelson.
- version: '-v7.3', '-v7', '-v6', '-v4' - version de fichier mat utilisée ('-v7.3'). Cette option forcera '-mat'.
- '-mat' - force l'enregistrement au format mat (par défaut '-nh5').
- '-nh5' - force l'enregistrement au format nh5 (par défaut '-nh5').
- '-append' - ajoute des variables à un fichier .nh5/.mat existant (uniquement -v7.3).
- '-nocompression' - désactive la compression du fichier .nh5/.mat.

## Description

<p>save sauvegarde les variables de l'espace de travail dans un fichier .nh5 ou .mat.</p>

## Exemples

```matlab
A = ones(3, 4);
B = 'hello for open mat users';
save([tempdir(), 'example_load.mat'], 'A', 'B')
clear;
st = load([tempdir(), 'example_load.mat']);
who
st.A
st.B
clear
who
load([tempdir(), 'example_load.mat']);
who
A
B

```

append variables

```matlab
C = eye(3, 4);
save([tempdir(), 'example_load.mat'], 'C', '-append')
clear;
st = load([tempdir(), 'example_load.mat']);
who
st.A
st.B
st.C
clear
who
load([tempdir(), 'example_load.mat']);
who
A
B
C

```

compression

```matlab
C = eye(1000, 1000);
save([tempdir(), 'example_save_with_compression.mat'], 'C')
save([tempdir(), 'example_save_no_compression.mat'], 'C', '-nocompression')
with_compression = dir([tempdir(), 'example_save_with_compression.mat'])
no_compression = dir([tempdir(), 'example_save_no_compression.mat'])
```

## Voir aussi

[load](../stream_manager/load.md), [savenh5](../hdf5/savenh5.md), [savemat](../matio/savemat.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
