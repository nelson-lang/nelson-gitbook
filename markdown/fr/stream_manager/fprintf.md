# fprintf

Écrit des données dans un fichier.

## 📝 Syntaxe

- fprintf(format, v1, ... , vn)
- fprintf(fid, format, v1, ... , vn)
- R = fprintf(fid, format, v1, ... , vn)

## 📥 Argument d'entrée

- fid - a file descriptor
- format - a string describing the format to used_function.
- v1, ... , vn - data to convert and print according to the previous format parameter.

## 📤 Argument de sortie

- R - an integer value: number of bytes that fprintf write.

## 📄 Description

Écrit des données au format texte dans le fichier spécifié par le descripteur de fichier fid.

L'encodage des caractères utilise le paramètre <b>fopen</b>.

Si fid vaut 1, la sortie est redirigée vers stdout.

Si fid vaut 2, la sortie est redirigée vers stderr.

Le paramètre <b>format</b> suit la syntaxe C de <b>fprintf</b>.
| Value type | format | comment |
| --- | --- | --- |
| Integer | %i | base 10 |
| Integer signed | %d | base 10 |
| Integer unsigned | %u | base 10 |
| Integer | %o | Octal (base 8) |
| Integer | %x | Hexadecimal (lowercase) |
| Integer | %X | Hexadecimal (uppercase) |
| Floating-point number | %f | Fixed-point notation |
| Floating-point number | %e | Exponential notation (lowercase) |
| Floating-point number | %E | Exponential notation (uppercase) |
| Floating-point number | %g | Exponential notation (compact format, lowercase) |
| Floating-point number | %G | Exponential notation (compact format, uppercase) |
| Character | %c | Single character |
| String | %s | Character vector. |

Pour afficher un signe pourcent, utilisez deux signes pourcent (%%) dans la chaîne de format.

## 💡 Exemples

```matlab

fileID = fopen([tempdir(), 'fprintf.txt'],'wt');
fprintf(fileID, 'an example of %s.', 'text');
fclose(fileID);

R = fileread([tempdir(), 'fprintf.txt'])
```

```matlab
fprintf(1, 'an value %g.', pi);
fprintf(2, "an value %g.", pi);
```

How to use backspace

```matlab
reverseStr = '';
for idx = 1 : 100
 percentDone = idx;
 msg = sprintf('Percent done: %3.1f', percentDone);
 fprintf([reverseStr, msg]);
 reverseStr = repmat(sprintf('\b'), 1, length(msg));
end

```

Display a percent sign

```matlab
fprintf(1, '%d%%.', 95)
```

## 🔗 Voir aussi

[fopen](../stream_manager/fopen.md), [fclose](../stream_manager/fclose.md), [fread](../stream_manager/fread.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
