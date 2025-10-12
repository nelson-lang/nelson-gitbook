# COM_xlswrite

Écrire un fichier de feuille de calcul Microsoft Excel en utilisant COM.

## Syntaxe

- COM_xlswrite(filename, v)
- COM_xlswrite(filename, v, sheet)
- COM_xlswrite(filename, v, range)
- COM_xlswrite(filename, v, sheet, range)
- status = COM_xlswrite(filename, v)
- status = COM_xlswrite(filename, v, sheet)
- status = COM_xlswrite(filename, v, range)
- status = COM_xlswrite(filename, v, sheet, range)
- [status, msg] = COM_xlswrite(filename, v)
- [status, msg] = COM_xlswrite(filename, v, sheet)
- [status, msg] = COM_xlswrite(filename, v, range)
- [status, msg] = COM_xlswrite(filename, v, sheet, range)

## Argument d'entrée

- filename - une chaîne : un chemin complet de nom de fichier.
- v - une chaîne, une cellule, une matrice : valeurs à sauvegarder.
- sheet - un entier ou une chaîne : id de feuille ou nom de feuille
- range - une chaîne : une plage xx:xx

## Argument de sortie

- status - un booléen : vrai si sauvegardé.
- msg - une chaîne : '' si pas d'erreur ou un message d'erreur.

## Description

<p>
            COM_xlswrite écrit un fichier de feuille de calcul Microsoft Excel en utilisant COM.</p>

<p>Inf est converti par Excel en 65535.</p>

## Exemples

```matlab
COM_xlswrite([tempdir(), 'example_xlswrite_1.xlsx'], rand(3, 3))
```

```matlab
data = {'Time', 'Temp'; 12 98; 13 99; Inf 97};
s = COM_xlswrite([tempdir(), 'example_xlswrite_2.xlsx'], data, 'Temperatures');
```

## Voir aussi

[COM_xlsread](../com_engine/COM_xlsread.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
