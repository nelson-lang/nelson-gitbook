# mex

Construire une fonction MEX

## 📝 Syntaxe

- mex(filenames)
- mex(filenames, option1, ..., optionN)
- mex(api, filenames)
- mex(api, filenames, option1, ..., optionN)
- mex('-output', mexName, filenames)
- mex(api, '-output', mexName, filenames)
- mex(api, '-output', mexName, filenames, option1, ..., optionN)
- mex('-client, 'engine', filenames)
- mex('-client', 'engine', 'filenames', api, option1, ..., optionN)

## 📥 Argument d'entrée

- '-client', 'engine' - Permet de construire des fichiers source C/C++ en une application moteur autonome.
- api - une chaîne : '-R2017b' (représentation complexe séparée) ou '-R2018a' (représentation complexe entrelacée).
- filenames - une chaîne ou une cellule de caractères : liste de fichiers à utiliser. Le premier nom de fichier est utilisé comme nom du MEX.
- mexName - une chaîne : remplace la convention de nommage.
- option1, ..., optionN - chaîne : option de compilation ou d'édition de liens.

## 📄 Description


Pour utiliser mex, un compilateur C/C++ doit être disponible et configuré. Voir la section « Supported C/C++ compilers » pour plus d'informations. 

Nelson inclut une interface permettant de compiler et d'éditer des fichiers mex hérités avec Nelson. 

Un fichier mex est un type de fichier qui fournit une interface entre Octave ou le logiciel commercial de référence et des fonctions écrites en C, C++. 

Nelson dispose également de sa propre API C++ pour gérer plus facilement les objets internes de Nelson. 

 

MACRO C PRÉDÉFINIE : 

<b>MX\_IS\_NELSON</b> : la macro est définie pour détecter facilement si Nelson est utilisé dans le code C. 

<b>MX\_HAS\_INTERLEAVED\_COMPLEX</b> : la macro est définie si l'API C MEX utilisée est '-R2018a'. 

 

Options prises en charge : compilation ou édition de liens. 

<b>CFLAGS=</b> 

<b>-D</b> L'option -D définit une macro du préprocesseur C. 

<b>-U</b> L'option -U annule la définition d'une macro du préprocesseur C 

<b>-I</b> Ajoute un chemin à la liste des dossiers recherchés pour les fichiers #include. 

<b>-l</b> Lie avec une bibliothèque dynamique .lib, .so ou .dylib. 

<b>-g</b> Utilisé pour le débogage (configuration Debug).

## 💡 Exemple



```matlab

		edit([modulepath('mex', 'tests'), '/test_engine.m'])

```


## 🔗 Voir aussi

[Supported C/C++ compilers](../dynamic_link/2_supported_compilers.md), [dlgenerategateway](../dynamic_link/dlgenerategateway.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
