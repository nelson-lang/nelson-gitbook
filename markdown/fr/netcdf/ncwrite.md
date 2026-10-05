# ncwrite

Ecrit des donnees dans une variable netCDF.

## 📝 Syntaxe

- ncwrite(filename, varname, data)
- ncwrite(filename, varname, data, start)
- ncwrite(filename, varname, data, start, stride)

## 📥 Argument d'entrée

- filename - Chemin du fichier netCDF a creer, ouvrir ou modifier.
- varname - Nom de la variable netCDF.
- data - Tableau Nelson a lire ou a ecrire.
- start - Position de depart. Les fonctions haut niveau utilisent une indexation Nelson a base un; les fonctions bas niveau suivent les conventions netCDF.
- stride - Pas de lecture ou d'ecriture dans chaque dimension.

## 📤 Argument de sortie

- none - Cette fonction ne retourne pas de valeur.

## 📄 Description


ncwrite ecrit un tableau Nelson dans une variable netCDF existante. 

Les arguments optionnels permettent d'ecrire a partir d'une position precise dans la variable.

## 💡 Exemple

Exemple copiable pour ncwrite.

```matlab
filename = [tempdir(), 'help_ncwrite.nc'];
nccreate(filename, 'temperature', 'Dimensions', {'x', 3});
ncwrite(filename, 'temperature', [10 20 30]);
data = ncread(filename, 'temperature')
```


## 🔗 Voir aussi

[nccreate](../netcdf/nccreate.md), [ncread](../netcdf/ncread.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
