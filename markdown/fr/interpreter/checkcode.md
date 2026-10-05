# checkcode

Analyse les fichiers source Nelson et signale les problemes de code.

## 📝 Syntaxe

- issues = checkcode(filename)
- issues = checkcode(names, option1, ..., optionN)

## 📥 Argument d'entrée

- filename - une chaine : fichier source Nelson a analyser.
- names - une chaine, un tableau de chaines ou un tableau de cellules de chaines : fichiers a analyser.
- option - une option parmi '-id', '-fullpath', '-notok', '-cyc', '-modcyc', '-config=file', '-struct' et '-string'.

## 📤 Argument de sortie

- issues - un tableau de structures avec les champs id, message, fix, line et column, ou une chaine formatee lorsque '-string' est utilise.

## 📄 Description


<b>checkcode</b> analyse les fichiers source Nelson et signale les problemes de syntaxe, de style, de flux de donnees, de nommage et de complexite. 

L'option '-notok' inclut les diagnostics supprimes par les commentaires <b>%#ok</b> ou <b>%#ok<NLS0001></b>. 

L'option '-config=file' charge un fichier de configuration JSON. Le nom par defaut utilise par les workflows en ligne de commande est <b>nelson-lint.json</b>. 

La configuration JSON doit declarer <b>version</b> egale a 2. Elle peut contenir <b>extends</b>, <b>files.include</b>, <b>files.exclude</b>, <b>rules</b> et <b>ci.failOn</b>. 

<b>rules</b> associe des identifiants de regle comme <b>NLS0001</b> a un objet contenant <b>level</b> (<b>allow</b>, <b>info</b>, <b>warning</b> ou <b>error</b>) et des <b>options</b> propres a la regle.

## Fonction(s) utilisée(s)

codeAnalyzerRules

## 💡 Exemples

Analyser un fichier et retourner un tableau de structures.

```matlab
issues = checkcode([nelsonroot(), '/etc/startup.m'], '-struct', '-id')
```
Exemple de fichier de configuration JSON.

```matlab
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
```


## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
