# completion

Calcule les candidats de completion de texte.

## 📝 Syntaxe

- r = completion(line)

## 📥 Argument d'entrée

- line - une chaine : prefixe de ligne de commande a completer.

## 📤 Argument de sortie

- r - une structure avec le prefixe de completion et les listes de candidats.

## 📄 Description


<b>completion</b> expose le moteur utilise par la console, le terminal graphique et l'editeur de texte. 

La structure retournee contient <b>prefix</b>, <b>showpopup</b>, <b>files</b>, <b>builtin</b>, <b>macros</b>, <b>variables</b>, <b>fields</b>, <b>properties</b> et <b>methods</b>. 

Les objets et noms de classes classdef sont completes a partir de leurs proprietes et methodes publiques, y compris les constantes de classe et methodes statiques.

## 💡 Exemple

Completer un objet classdef.

```matlab
clear classes
d = [tempdir(), 'nelson_help_completion_classdef_fr/'];
mkdir(d);
filewrite([d, '/NelsonHelpCompletionPointFr.m'], ["classdef NelsonHelpCompletionPointFr"; "  properties"; "    X = 0"; "  end"; "  properties (Constant)"; "    Dimension = 2"; "  end"; "  methods"; "    function r = value(obj)"; "      r = obj.X;"; "    end"; "  end"; "  methods (Static)"; "    function obj = origin()"; "      obj = NelsonHelpCompletionPointFr();"; "    end"; "  end"; "end"]);
addpath(d);
p = NelsonHelpCompletionPointFr();
objectCompletion = completion('p.')
classCompletion = completion('NelsonHelpCompletionPointFr.')
```


## 🔗 Voir aussi

[methods](../handle/methods.md), [properties](../handle/properties.md), [classdef](../interpreter/classdef.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | moteur de completion expose pour les tests et scripts |

<!--
## 👤 Auteur

Allan CORNET
-->
