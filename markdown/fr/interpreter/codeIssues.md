# codeIssues

Collecte les diagnostics de l'analyseur de code Nelson sous forme de tables.

## 📝 Syntaxe

- ci = codeIssues()
- ci = codeIssues(names)
- ci = codeIssues(names, Name, Value)
- export(ci, filename)
- ci = fix(ci)

## 📥 Argument d'entrée

- names - une chaine, un tableau de chaines ou un tableau de cellules de chaines : fichiers ou dossiers a analyser.
- CodeAnalyzerConfiguration - une chaine : fichier de configuration JSON.
- IncludeSubfolders - un scalaire logique : true pour analyser les dossiers recursivement.

## 📤 Argument de sortie

- ci - un objet codeIssues. Ses proprietes Issues et SuppressedIssues sont des tables Nelson.

## 📄 Description

<b>codeIssues</b> execute l'analyseur de code Nelson et stocke les diagnostics actifs et supprimes dans des proprietes de type table.

Le fichier de configuration JSON utilise le meme format version 2 que <b>checkcode</b> : <b>extends</b>, <b>files.include</b>, <b>files.exclude</b>, <b>rules</b> et <b>ci.failOn</b>.

La methode <b>export</b> ecrit du JSON, du CSV ou du texte selon l'extension du fichier de sortie.

La methode <b>fix</b> applique uniquement les corrections automatiques triviales dans cette version : espaces de fin de ligne et fin de fichier manquante.

## Fonction(s) utilisée(s)

codeAnalyzerRules

## 💡 Exemples

Analyser un dossier recursivement avec une configuration JSON.

```matlab
ci = codeIssues([nelsonroot(), '/modules/interpreter/functions'], ...
  'CodeAnalyzerConfiguration', [nelsonroot(), '/nelson-lint.json'], ...
  'IncludeSubfolders', true);
ci.Issues
```

Forme du fichier de configuration.

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
    "NLS0012": { "level": "warning", "options": { "maxLineLength": 120 } }
  },
  "ci": { "failOn": "warning" }
}
```

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
