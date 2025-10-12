# mexext

Extension de nom de fichier binaire MEX

## Syntaxe

- ext = mexext()
- extlist = mexext('all')

## Description

<p>
            ext = mexext() renvoie l'extension de nom de fichier pour la plateforme courante.</p>

<p>
                extlist = mexext('all') renvoie les extensions pour toutes les plateformes.</p>

<p>Un fichier mex est un type de fichier qui fournit une interface entre Octave ou le logiciel commercial de référence et des fonctions écrites en C ou C++.</p>

<p>Nelson dispose également de sa propre API C++ pour gérer plus facilement les objets internes de Nelson.</p>

<p></p>

<p>Nelson ne peut pas charger des mex générés par d'autres logiciels, MAIS vous pouvez facilement les reconstruire pour chaque cible logicielle.</p>

<p>Les mex générés par Nelson ont une extension de fichier commençant par .nex
            </p>

## Exemple

```matlab
ext = mexext()
extlist = mexext('all')
```

## Voir aussi

[mex](../mex/mex.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
