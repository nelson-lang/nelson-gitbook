# configuremingw

Configurer Nelson pour utiliser MinGW comme compilateur C par défaut

## 📝 Syntaxe

- [res, message] = configuremingw(mingw\_path)

## 📥 Argument d'entrée

- mingw\_path - une chaîne : chemin racine de MinGW.

## 📤 Argument de sortie

- res - un booléen : true si MinGW a été trouvé
- message - une chaîne : vide si MinGW a été trouvé, sinon un message d'erreur.

## 📄 Description


Par défaut, Nelson n'a pas de compilateur C/C++ défini par défaut sous Windows. 

Sur les autres plateformes, on suppose qu'un compilateur C/C++ est disponible et l'appel de cette fonction n'est pas requis. 

Sous Windows, appelez une fois <b>configuremingw</b> si vous souhaitez utiliser MinGW comme compilateur C par défaut.

## 💡 Exemple



```matlab
configuremingw('c:/mingw')
```


## 🔗 Voir aussi

[Supported C/C++ compilers](../dynamic_link/2_supported_compilers.md), [havecompiler](../dynamic_link/havecompiler.md), [configuremsvc](../dynamic_link/configuremsvc.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
