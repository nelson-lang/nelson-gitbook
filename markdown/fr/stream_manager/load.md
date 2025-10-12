# load

charger des données depuis un fichier .nh5 ou .mat dans l'espace de travail de Nelson.

## Syntaxe

- load(filename)
- st = load(filename)
- load(filename, var1, ..., varN)
- st = load(filename, var1, ..., varN)
- load(filename, '-mat')
- load(filename, '-nh5')

## Argument d'entrée

- filename - une chaîne : nom de fichier .nh5 ou .mat.
- '-mat' or '-nh5' - force la lecture du fichier en tant que nh5 ou mat.
- var1, ..., varN - chaîne : noms des variables à charger dans l'espace de travail de Nelson.

## Argument de sortie

- st - une structure avec les noms de variables comme champs.

## Description

<p>
                        load charge des données depuis un fichier .nh5 ou .mat vers l'espace de travail de Nelson.</p>

## Exemple

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

## Voir aussi

[save](../stream_manager/save.md), [savemat](../matio/savemat.md), [savenh5](../hdf5/savenh5.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
