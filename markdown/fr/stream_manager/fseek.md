# fseek

Positionne le pointeur de fichier à un emplacement.

## 📝 Syntaxe

- fseek(fid, offset, origin)
- status = fseek(fid, offset, origin)

## 📥 Argument d'entrée

- fid - une valeur entière : descripteur de fichier
- offset - une valeur entière : nombre d'octets à déplacer depuis l'origine.
- origin - une valeur entière ou une chaîne : emplacement dans le fichier.

## 📤 Argument de sortie

- status - an integer value: 0 or -1 if there is an error.

## 📄 Description


<b>fseek</b> déplace le pointeur de fichier à l'emplacement <b>offset</b> dans le fichier <b>fid</b>. 

origin peut prendre comme valeurs : 

'bof' ou -1 : début du fichier. 

'cof' ou 0 : position courante dans le fichier. 

'eof' ou 1 : fin du fichier. 

<b>offset</b> peut être l'une des variables prédéfinies<b>SEEK\_CUR</b> (position courante, ou 0),<b>SEEK\_SET</b> (début, ou -1), ou<b>SEEK\_END</b> (fin du fichier, ou 1).

## 💡 Exemple



```matlab

fileID = fopen([tempdir(), 'fseek.txt'],'wt');
fprintf(fileID, 'son is beautiful.');
fseek(fileID, SEEK_CUR, 'bof');
fprintf(fileID, 'sun');
fclose(fileID);
R = fileread([tempdir(), 'fseek.txt'])
```


## 🔗 Voir aussi

[frewind](../stream_manager/frewind.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
