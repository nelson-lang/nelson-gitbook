# h5read

Lit un jeu de données HDF5.

## Syntaxe

- val = h5read(filename, location)

## Argument d'entrée

- filename - une chaîne : nom de fichier HDF5.
- location - une chaîne : chemin complet identifiant un jeu de données.

## Argument de sortie

- val - une variable Nelson.

## Description

<p>h5read lit le jeu de données situé à location dans le fichier HDF5.</p>

## Exemple

```matlab
h5_directory = [modulepath('hdf5','tests'), '/h5'];
double_data = [h5_directory, '/h5ex_t_float.h5'];
R = h5read(double_data,'/DS1')
```

## Voir aussi

[h5write](../hdf5/h5write.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
