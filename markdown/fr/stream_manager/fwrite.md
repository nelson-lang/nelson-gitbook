# fwrite

Écrire des données en binaire dans le fichier spécifié par le descripteur fid.

## Syntaxe

- count = fwrite(fid, data)
- count = fwrite(fid, data, precision)
- count = fwrite(fid, data, precision, skip)
- count = fwrite(fid, data, precision, skip, arch)
- count = fwrite(fid, data, precision, arch)

## Argument d'entrée

- fid - un descripteur de fichier
- data - données à écrire
- precision - classe des valeurs à écrire
- skip - nombre d'octets à ignorer
- arch - une chaîne spécifiant le format des données pour le fichier.

## Argument de sortie

- count - -1 ou nombre d'éléments écrits

## Description

<p>Écrit des données en format binaire dans le fichier spécifié par le descripteur fid.</p>

<p>L'encodage des caractères utilise le paramètre fopen.</p>

<p>Architectures supportées :</p>

<p>
            native , n : format de la machine courante.</p>

<p>
                ieee-be, b : IEEE big endian.</p>

<p>
                    ieee-le, l : IEEE little endian.</p>

## Exemple

```matlab

A = rand(3,1)

fileID = fopen([tempdir(), 'doubledata.bin'],'w');
fwrite(fileID, A,'double');
fclose(fileID);

fileID = fopen([tempdir(), 'doubledata.bin'],'r');
R = fread(fileID, 'double')
fclose(fileID);

```

## Voir aussi

[fopen](../stream_manager/fopen.md), [fclose](../stream_manager/fclose.md), [fread](../stream_manager/fread.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
