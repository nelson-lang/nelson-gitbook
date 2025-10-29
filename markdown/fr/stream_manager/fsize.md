# fsize

Retourne la taille d'un fichier ouvert.

## 📝 Syntaxe

- s = fsize(fid)

## 📥 Argument d'entrée

- fid - un descripteur de fichier

## 📤 Argument de sortie

- s - une valeur entière : taille d'un fichier.

## 📄 Description

<b>fsize</b> retourne la taille d'un fichier ouvert par <b>fopen</b>.

## 💡 Exemple

```matlab
TXT = 'example about fsize.';
fileID = fopen([tempdir(), 'fsize.txt'],'wt');
fprintf(fileID, TXT);
fsize(fileID)
length(TXT)
status = fclose(fileID);
```

## 🔗 Voir aussi

[fopen](../stream_manager/fopen.md), [fprintf](../stream_manager/fread.md), [fclose](../stream_manager/fclose.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
