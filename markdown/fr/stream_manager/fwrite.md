# fwrite

Écrire des données en binaire dans le fichier spécifié par le descripteur fid.

## 📝 Syntaxe

- count = fwrite(fid, data)
- count = fwrite(fid, data, precision)
- count = fwrite(fid, data, precision, skip)
- count = fwrite(fid, data, precision, skip, arch)
- count = fwrite(fid, data, precision, arch)
- [count, bytes] = fwrite(fid, ...)

## 📥 Argument d'entrée

- fid - un descripteur de fichier
- data - données à écrire
- precision - classe des valeurs à écrire
- skip - nombre d'octets à ignorer
- arch - une chaîne spécifiant le format des données pour le fichier.

## 📤 Argument de sortie

- count - -1 ou nombre d'éléments écrits
- bytes - nombre d'octets écrits

## 📄 Description

Écrit des données en format binaire dans le fichier spécifié par le descripteur fid.

L'encodage des caractères utilise le paramètre <b>fopen</b>.

Architectures supportées :

<b>native</b> , <b>n</b> : format de la machine courante.

<b>ieee-be</b>, <b>b</b> : IEEE big endian.

<b>ieee-le</b>, <b>l</b> : IEEE little endian.

précision supportée :

| Type valeur                    | Précision                        | Bits (Octets)                    |
| ------------------------------ | -------------------------------- | -------------------------------- |
| Logical                        | 'logical'                        | platform-dependent               |
| nombre à virgule flottante     | 'double', 'real\*8', 'float64'   | 64 (8)                           |
| 'single', 'real\*4', 'float32' | 32 (4)                           |
| Integers, signed               | 'int'                            | 32 (4)                           |
| 'int8', 'integer\*1', 'schar'  | 8 (1)                            |
| 'int16', 'integer\*2'          | 16 (2)                           |
| 'int32', 'integer\*4'          | 32 (4)                           |
| 'int64', 'integer\*8'          | 64 (8)                           |
| Entiers, non signés            | 'uint8', 'uchar'                 | 8 (1)                            |
| 'uint16'                       | 16 (2)                           |
| 'uint32'                       | 32 (4)                           |
| 'uint64'                       | 64 (8)                           |
| Caractères                     | 'char', '\*char'                 | dépend de l'encodage avec fopen. |
| 'char\*1'                      | dépend de l'encodage avec fopen. |

if <b>fwrite</b> échoue, il renvoie une valeur négative.

if <b>fwrite</b> réussit, il renvoie le nombre d'éléments écrits avec succès.

if <b>fwrite</b> écrit des caractères, il renvoie le nombre de caractères écrits avec succès et non le nombre d'éléments.

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

test_string =  'é ö ä ü è ê';
fid = fopen([tempdir(), 'fwrite_example_char.txt'], 'w','n', 'UTF-8');
[count, bytes] = fwrite(fid, test_string) % returns 11 and 17
fclose(fid);
% Il s'agit du nombre de caractères écrits et non du nombre d'octets.
% Chaque caractère accentué (é, ö, ä, ü, è, ê) = 2 octets chacun
% Chaque espace = 1 octet
% Total octets = 6*2 + 5*1 = 17 octets

```

## 🔗 Voir aussi

[fopen](../stream_manager/fopen.md), [fclose](../stream_manager/fclose.md), [fread](../stream_manager/fread.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
