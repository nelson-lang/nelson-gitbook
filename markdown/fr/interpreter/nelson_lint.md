# nelson-lint

Analyseur de code Nelson en ligne de commande.

## 📝 Syntaxe

- nelson-lint [--format text\|json\|sarif] [--config file] path ...
- nelson-lint [--include-subfolders true\|false] [--fail-on error\|warning\|info\|none] path ...
- nelson-lint [--stdin] [--stdin-filename name] [--fix\|--fix-dry-run\|--diff] path ...

## 📄 Description


<b>nelson-lint</b> analyse les fichiers et dossiers source Nelson depuis la ligne de commande. 

<b>--format</b> selectionne une sortie texte, JSON ou SARIF. 

<b>--config</b> charge un fichier de configuration JSON version 2. 

<b>--include-subfolders</b> active l'analyse recursive des dossiers. 

<b>--fail-on</b> selectionne la severite minimale qui produit le code retour <b>1</b>. <b>--deny warnings</b> reste un alias de <b>--fail-on warning</b>. 

<b>--stdin</b> analyse le texte source depuis l'entree standard. Utiliser <b>--stdin-filename</b> pour choisir le nom de fichier des diagnostics. 

<b>--quiet</b> supprime la sortie standard, et <b>--output</b> ecrit les diagnostics dans un fichier. 

<b>--fix</b> applique les edits de texte surs et non superposes portes par les diagnostics, puis analyse de nouveau les fichiers avant de signaler les diagnostics restants. Les corrections sures incluent le nettoyage des espaces et les autres corrections de l'analyseur dont les plages sont exactes. 

<b>--fix-dry-run</b> et <b>--diff</b> affichent les edits surs sans modifier les fichiers. 

Le code retour <b>0</b> signifie qu'aucun diagnostic ne reste, <b>1</b> signifie que des diagnostics restent, et <b>2</b> signifie une erreur d'usage, d'entree ou interne.

## Fonction(s) utilisée(s)

codeAnalyzerRules

## 💡 Exemple

Lancer l'analyse recursive avec correction activee.

```matlab
nelson-lint --include-subfolders true --fix --config nelson-lint.json modules/interpreter/functions
```


## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
