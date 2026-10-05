# version

Version de l'environnement Nelson.

## 📝 Syntaxe

- ver\_str = version
- ver\_date = version('-date')
- ver\_desc = version('-description')
- ver\_comp = version('-compiler')
- ver\_hash = version('-commit\_hash')
- ver\_number = version('-number')
- ver\_release = version('-release')
- [ver\_str, ver\_release] = version()

## 📥 Argument d'entrée

- '-date' - chaîne : obtenir la date de publication
- '-description' - chaîne : obtenir la description de la version
- '-semantic' - chaîne : obtenir la version sémantique
- '-release' - chaîne : obtenir le numéro de release
- '-compiler' - chaîne : obtenir le compilateur utilisé pour compiler Nelson
- '-number' - chaîne : obtenir la version sémantique (numérique)
- '-commit\_hash' - chaîne : obtenir le hash du commit

## 📤 Argument de sortie

- ver\_str - une chaîne : version
- ver\_date - une chaîne : date de la version
- ver\_desc - une chaîne : description de la version
- ver\_release - une chaîne : information de la release
- ver\_commit - une chaîne : hash du commit
- ver\_compiler - une cellule de chaînes : {compilateur utilisé, architecture}
- ver\_number - une matrice d'entiers : [MAJOR, MINOR, MAINTENANCE, BUILD]

## 📄 Description


Affiche la version actuelle de Nelson installée ou renvoie la chaîne de version.

## 💡 Exemples



```matlab
ver = version
```


```matlab
ver_date = version('-date')
```


```matlab
ver_date = version('-description')
```


```matlab
ver_date = version('-release')
```


```matlab
ver_version_vector] = version('-semantic')
```


```matlab
ver_version_vector = version('-number')
```


```matlab
compiler_info = version('-compiler')
```


```matlab
[ver, release] = version()
```


## 🔗 Voir aussi

[computer](../os_functions/computer.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |
| 1.2.0   | `-semantic` option added. |

<!--
## 👤 Auteur

Allan CORNET
-->
