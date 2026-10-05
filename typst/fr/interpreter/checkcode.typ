#import "nelson_help.typ": *

= checkcode <interpreter:checkcode>

Analyse les fichiers source Nelson et signale les problemes de code.

== Syntaxe

- #raw("issues = checkcode(filename)");
- #raw("issues = checkcode(names, option1, ..., optionN)");

== Argument d'entrée

/ filename: une chaine : fichier source Nelson a analyser.
/ names: une chaine, un tableau de chaines ou un tableau de cellules de chaines : fichiers a analyser.
/ option: une option parmi '-id', '-fullpath', '-notok', '-cyc', '-modcyc', '-config\=file', '-struct' et '-string'.

== Argument de sortie

/ issues: un tableau de structures avec les champs id, message, fix, line et column, ou une chaine formatee lorsque '-string' est utilise.

== Description

#strong[checkcode]; analyse les fichiers source Nelson et signale les problemes de syntaxe, de style, de flux de donnees, de nommage et de complexite.

 L'option '-notok' inclut les diagnostics supprimes par les commentaires #strong[%\#ok]; ou #strong[%\#ok\<NLS0001\>];.

 L'option '-config\=file' charge un fichier de configuration JSON. Le nom par defaut utilise par les workflows en ligne de commande est #strong[nelson-lint.json];.

 La configuration JSON doit declarer #strong[version]; egale a 2. Elle peut contenir #strong[extends];, #strong[files.include];, #strong[files.exclude];, #strong[rules]; et #strong[ci.failOn];.

 #strong[rules]; associe des identifiants de regle comme #strong[NLS0001]; a un objet contenant #strong[level]; (#strong[allow];, #strong[info];, #strong[warning]; ou #strong[error];) et des #strong[options]; propres a la regle.


== Fonction(s) utilisée(s)

codeAnalyzerRules

== Exemples

Analyser un fichier et retourner un tableau de structures.

``````matlab
issues = checkcode([nelsonroot(), '/etc/startup.m'], '-struct', '-id')
``````

Exemple de fichier de configuration JSON.

``````matlab
{
  "version": 2,
  "files": {
    "include": ["**/*.m", "**/*.xml"],
    "exclude": [".git", "build", "target", "bin", "x64", "generated"]
  },
  "rules": {
    "NLS0001": { "level": "error" },
    "NLS0013": { "level": "error" },
    "NLS0012": { "level": "warning", "options": { "maxLineLength": 120 } },
    "NLS0014": { "level": "warning", "options": { "warning": 10, "error": 50 } }
  },
  "ci": { "failOn": "warning" }
}
``````


== Historique

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [version initiale],
)

// Auteur: Allan CORNET
