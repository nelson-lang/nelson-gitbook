# fprintf

Écrit des données dans un fichier.

## 📝 Syntaxe

- fprintf(format, v1, ... , vn)
- fprintf(fid, format, v1, ... , vn)
- R = fprintf(fid, format, v1, ... , vn)

## 📥 Argument d'entrée

- fid - a file descriptor
- format - a string describing the format to used\_function.
- v1, ... , vn - data to convert and print according to the previous format parameter.

## 📤 Argument de sortie

- R - un entier : nombre d'octets ecrits dans un fichier, ou nombre de caracteres visibles affiches a l'ecran.

## 📄 Description


Écrit des données au format texte dans le fichier spécifié par le descripteur de fichier fid. 

L'encodage des caractères utilise le paramètre <b>fopen</b>. 

Si fid vaut 1, la sortie est redirigée vers stdout. 

Si fid vaut 2, la sortie est redirigée vers stderr. 

Lorsque la sortie est envoyee a l'ecran, les sequences d'echappement ANSI SGR peuvent styliser le texte : gras, italique, souligne, barre, couleurs de premier plan et couleurs d'arriere-plan. Ces sequences sont interpretees pour l'affichage stdout et stderr, mais elles sont ecrites telles quelles lorsque la sortie est envoyee dans un fichier. 

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

Un signe pourcent placé seul en fin de chaîne de format est ignoré.

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
Afficher du texte stylise avec des sequences d'echappement ANSI SGR

```matlab
esc = char(27);
fprintf([esc, '[1;34mTexte bleu gras', esc, '[0m\n']);
```
Afficher du texte truecolor avec des sequences d'echappement ANSI SGR

```matlab
esc = char(27);
fprintf([esc, '[38;2;80;120;220mTexte truecolor', esc, '[0m\n']);
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
Gestion du pourcent final

```matlab
fprintf(1, ' %d %', 10)
fprintf(1, ' %d %%', 10)
```


## 🔗 Voir aussi

[fopen](../stream_manager/fopen.md), [fclose](../stream_manager/fclose.md), [fread](../stream_manager/fread.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 2.0.0   | Les sequences d'echappement ANSI SGR sont rendues pour la sortie ecran. |

<!--
## 👤 Auteur

Allan CORNET
-->
