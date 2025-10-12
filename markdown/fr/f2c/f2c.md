# f2c

Convertisseur Fortran vers C.

## Syntaxe

- f2c(src, dest)
- r = f2c(src, dest)
- [r, msg] = f2c(src, dest)

## Argument d'entrée

- src - une chaîne : fichier source Fortran.
- dest - une chaîne : répertoire de destination.

## Argument de sortie

- r - un booléen : true si succès.
- msg - une chaîne : message d'erreur ou ''.

## Description

<p>f2c convertit les fichiers Fortran 66 et Fortran 77 en code C.</p>

## Exemple

```matlab
f2c([modulepath(nelsonroot(),'f2c','root'), '/tests/dgemm.f'], tempdir());
fileread([tempdir(), 'dgemm.c'])
```

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
