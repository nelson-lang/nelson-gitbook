# fread

Lire des données en format binaire depuis le fichier spécifié par le descripteur fid.

## 📝 Syntaxe

- res = fread(fid)
- res = fread(fid, sz, precision)
- res = fread(fid, sz, precision, skip)
- res = fread(fid, sz, precision, arch)
- res = fread(fid, sz, precision, skip, arch)
- [res, count] = fread(fid, sz, precision, skip, arch)

## 📥 Argument d'entrée

- fid - un descripteur de fichier
- sz - Dimensions du tableau de sortie : scalaire, [m,n] ou [m, Inf]
- precision - classe des valeurs à lire
- skip - nombre d'octets à ignorer
- arch - une chaîne spécifiant le format des données du fichier.

## 📤 Argument de sortie

- res - un vecteur de nombres en virgule flottante ou entiers
- count - nombre d'éléments lus dans res

## 📄 Description

Lit des données en format binaire depuis le fichier spécifié par le descripteur fid.

Architectures supportées :

<b>native</b> , <b>n</b> : format de la machine courante.

<b>ieee-be</b>, <b>b</b> : IEEE big endian.

<b>ieee-le</b>, <b>l</b> : IEEE little endian.

L'encodage des caractères utilise le paramètre <b>fopen</b>.

## 💡 Exemples

```matlab

A = rand(3,1)
fileID = fopen([tempdir(), 'doubledata.bin'],'w');
fwrite(fileID, A,'double');
fclose(fileID);

fileID = fopen([tempdir(), 'doubledata.bin'],'r');
R = fread(fileID, 'double')
fclose(fileID);

```

```matlab

fileID = fopen([tempdir(), 'uint16nine.bin'],'w');
fwrite(fileID,[1:9],'uint16');
fclose(fileID);

fileID = fopen([tempdir(), 'uint16nine.bin'],'r');
A = fread(fileID,[4,Inf],'uint16')
fclose(fileID);

```

## 🔗 Voir aussi

[fopen](../stream_manager/fopen.md), [fclose](../stream_manager/fclose.md), [fwrite](../stream_manager/fwrite.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
