# fgetl

Lire une chaîne depuis un fichier sans le caractère de nouvelle ligne.

## 📝 Syntaxe

- res = fgetl(f)

## 📥 Argument d'entrée

- f - un descripteur de fichier

## 📤 Argument de sortie

- res - une chaîne ou -1

## 📄 Description


Lit une chaîne depuis un fichier, s'arrêtant après la lecture d'un saut de ligne ou de la fin du fichier (EOF). 

S'il n'y a plus de caractère à lire, <b>fgetl</b> renverra -1. 

Le caractère de nouvelle ligne est retiré de la chaîne renvoyée. 

L'encodage des caractères utilise le paramètre <b>fopen</b>.

## 💡 Exemple



```matlab
fid = fopen([nelsonroot(), '/etc/startup.m']);

tline = fgetl(fid);
while ischar(tline)
    disp(tline)
    tline = fgetl(fid);
end

fclose(fid);
```


## 🔗 Voir aussi

[fclose](../stream_manager/fclose.md), [fopen](../stream_manager/fopen.md), [fgets](../stream_manager/fgets.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
