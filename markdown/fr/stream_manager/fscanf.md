# fscanf

Lit des données depuis un fichier.

## Syntaxe

- R = fscanf(fid, format)
- [R, count] = fscanf(fid, format)
- [R, count] = fscanf(fid, format, sizeR)

## Argument d'entrée

- fid - un descripteur de fichier
- format - une chaîne décrivant le format utilisé par la fonction.
- sizeR - dimensions souhaitées de R.

## Argument de sortie

- R - matrix or character vector.

## Description

<p>Lit des données au format texte depuis le fichier spécifié par le descripteur fid.</p>

<p>L'encodage des caractères utilise le paramètre fopen.</p>

| Value type            | format | comment                                          |
| --------------------- | ------ | ------------------------------------------------ |
| Integer               | %i     | base 10                                          |
| Integer signed        | %d     | base 10                                          |
| Integer unsigned      | %u     | base 10                                          |
| Integer               | %o     | Octal (base 8)                                   |
| Integer               | %x     | Hexadecimal (lowercase)                          |
| Integer               | %X     | Hexadecimal (uppercase)                          |
| Floating-point number | %f     | Fixed-point notation                             |
| Floating-point number | %e     | Exponential notation (lowercase)                 |
| Floating-point number | %E     | Exponential notation (uppercase)                 |
| Floating-point number | %g     | Exponential notation (compact format, lowercase) |
| Floating-point number | %G     | Exponential notation (compact format, uppercase) |
| Character             | %c     | Single character                                 |
| String                | %s     | Character vector.                                |

## Exemple

```matlab

M = rand(3, 2);
fw = fopen([tempdir, 'example_fscanf.txt'], 'wt');
fprintf(fw, "%f %f %f", M);
fclose(fw);

fd = fopen([tempdir, 'example_fscanf.txt'], 'r');
R = fscanf(fd, "%g %g %g");
fclose(fd);
R

```

## Voir aussi

[fopen](../stream_manager/fopen.md), [fprintf](../stream_manager/fprintf.md), [dlmwrite](../stream_manager/dlmwrite.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
