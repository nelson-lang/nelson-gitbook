# fgets

Lire une chaîne depuis un fichier, s'arrêtant après un saut de ligne, la fin du fichier ou après n caractères lus.

## 📝 Syntaxe

- res = fgets(f)
- res = fgets(f, n)

## 📥 Argument d'entrée

- f - un descripteur de fichier
- n - un scalaire : nombre de caractères

## 📤 Argument de sortie

- res - une chaîne ou -1

## 📄 Description


Lit une chaîne depuis un fichier, s'arrêtant après un saut de ligne, la fin du fichier (EOF) ou après la lecture de n caractères. 

S'il n'y a plus de caractère à lire, <b>fgets</b> renverra -1. 

Si n est omis, <b>fgets</b> lit jusqu'au saut de ligne suivant. 

L'encodage des caractères utilise le paramètre <b>fopen</b>.

## 💡 Exemples



```matlab
  fid = fopen([nelsonroot(), '/etc/startup.m']);
  tline = fgets(fid);
  while ischar(tline)
  disp(tline)
  tline = fgets(fid);
  end

  fclose(fid);
```


```matlab
fid = fopen([nelsonroot(), '/etc/startup.m']);

  tline = fgets(fid, 5);
  while ischar(tline)
  disp(tline)
  tline = fgets(fid, 5);
  end

  fclose(fid);
```


## 🔗 Voir aussi

[fclose](../stream_manager/fclose.md), [fopen](../stream_manager/fopen.md), [fgetl](../stream_manager/fgetl.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
