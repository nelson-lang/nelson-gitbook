# mex

Construire une fonction MEX

## Syntaxe

- mex(filenames)
- mex(filenames, option1, ..., optionN)
- mex(api, filenames)
- mex(api, filenames, option1, ..., optionN)
- mex('-output', mexName, filenames)
- mex(api, '-output', mexName, filenames)
- mex(api, '-output', mexName, filenames, option1, ..., optionN)
- mex('-client, 'engine', filenames)
- mex('-client', 'engine', 'filenames', api, option1, ..., optionN)

## Argument d'entrée

- '-client', 'engine' - Permet de construire des fichiers source C/C++ en une application moteur autonome.
- api - une chaîne : '-R2017b' (représentation complexe séparée) ou '-R2018a' (représentation complexe entrelacée).
- filenames - une chaîne ou une cellule de caractères : liste de fichiers à utiliser. Le premier nom de fichier est utilisé comme nom du MEX.
- mexName - une chaîne : remplace la convention de nommage.
- option1, ..., optionN - chaîne : option de compilation ou d'édition de liens.

## Description

<p>Pour utiliser mex, un compilateur C/C++ doit être disponible et configuré. Voir la section « Supported C/C++ compilers » pour plus d'informations.</p>

<p>Nelson inclut une interface permettant de compiler et d'éditer des fichiers mex hérités avec Nelson.</p>

<p>Un fichier mex est un type de fichier qui fournit une interface entre Octave ou le logiciel commercial de référence et des fonctions écrites en C, C++.</p>

<p>Nelson dispose également de sa propre API C++ pour gérer plus facilement les objets internes de Nelson.</p>

<p></p>

<p>MACRO C PRÉDÉFINIE :</p>

<p>
            MX_IS_NELSON : la macro est définie pour détecter facilement si Nelson est utilisé dans le code C.</p>

<p>
                MX_HAS_INTERLEAVED_COMPLEX : la macro est définie si l'API C MEX utilisée est '-R2018a'.</p>

<p></p>

<p>Options prises en charge : compilation ou édition de liens.</p>

<p>
                    CFLAGS=
                </p>

<p>
                    -D L'option -D définit une macro du préprocesseur C.</p>

<p>
                        -U L'option -U annule la définition d'une macro du préprocesseur C</p>

<p>
                            -I Ajoute un chemin à la liste des dossiers recherchés pour les fichiers #include.</p>

<p>
                                -l Lie avec une bibliothèque dynamique .lib, .so ou .dylib.</p>

<p>
                                    -g Utilisé pour le débogage (configuration Debug).</p>

## Exemple

```matlab

		edit([modulepath('mex', 'tests'), '/test_engine.m'])

```

## Voir aussi

[Supported C/C++ compilers](../dynamic_link/2_supported_compilers.md), [dlgenerategateway](../dynamic_link/dlgenerategateway.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
