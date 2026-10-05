# ncdisp

Affiche le contenu d'une source de donnees netCDF.

## 📝 Syntaxe

- ncdisp(filename)
- ncdisp(filename, location)
- ncdisp(filename, location, mode)

## 📥 Argument d'entrée

- filename - Chemin du fichier netCDF a creer, ouvrir ou modifier.
- location - Chemin de groupe, de variable ou d'attribut dans la source netCDF.
- mode - Mode numerique construit avec les constantes netCDF lorsque necessaire.

## 📤 Argument de sortie

- none - Cette fonction ne retourne pas de valeur.

## 📄 Description


ncdisp affiche une vue lisible du contenu d'une source netCDF. 

Utilisez cette fonction pour explorer rapidement groupes, dimensions, variables et attributs.

## 💡 Exemple

Exemple copiable pour ncdisp.

```matlab
filename = [tempdir(), 'help_ncdisp.nc'];
nccreate(filename, 'temperature', 'Dimensions', {'x', 3});
ncwrite(filename, 'temperature', [1 2 3]);
ncdisp(filename)
```


## 🔗 Voir aussi

[ncinfo](../netcdf/ncinfo.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
