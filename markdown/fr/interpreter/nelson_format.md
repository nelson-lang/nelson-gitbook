# nelson-format

Formateur de source Nelson en ligne de commande.

## 📝 Syntaxe

- nelson-format [--include-subfolders true\|false] [--indent-size n] [--full-format true\|false] [--config file] [--check] path ...

## 📄 Description


<b>nelson-format</b> formate les fichiers source Nelson depuis la ligne de commande. 

Les fichiers sont formates sur place par defaut. Le formateur traite uniquement les fichiers avec l'extension <b>.m</b>. 

<b>--include-subfolders</b> active le formatage recursif quand un dossier est passe en entree. 

<b>--indent-size</b> definit la taille d'indentation. La valeur par defaut est <b>2</b>. 

<b>--full-format</b> active ou desactive le formatage complet. La valeur par defaut est <b>true</b>. Mettre <b>false</b> pour modifier uniquement l'indentation de debut de ligne. 

<b>--config</b> charge un fichier de configuration JSON. Sans cette option, <b>nelson-format</b> cherche <b>nelson-format.json</b> depuis les chemins d'entree puis depuis le dossier courant. 

<b>--check</b> signale les fichiers qui changeraient sans les ecrire. 

Les blocs sur une seule ligne conservent leurs instructions d'ouverture et de fermeture sans modifier l'indentation des lignes suivantes. Les indexations utilisant <b>end</b> restent distinctes des fermetures de blocs. 

Les clauses catch sur une ligne conservent le separateur apres la variable d'exception facultative, notamment dans <b>catch err, value = err.message;</b>. 

Les cles de configuration supportees sont <b>indentSize</b>, <b>fullFormat</b>, <b>includeSubfolders</b> et <b>excludePathContains</b>. Les options de ligne de commande remplacent les valeurs chargees depuis JSON. 

Les fichiers listes par <b>nelson-format-ignore.json</b> ou par <b>excludePathContains</b> dans <b>nelson-format.json</b> sont ignores. 

Le code retour <b>0</b> signifie succes ou aucun changement requis, <b>1</b> signifie que <b>--check</b> a trouve des fichiers qui changeraient, et <b>2</b> signifie une erreur d'usage, d'entree, de lecture/ecriture ou interne. 

Le formatage complet preserve les references aux packages, aux membres et aux champs dynamiques comme <b>package.function(value.(name))</b>. Les noms contextuels des blocs de classe restent des identifiants ordinaires dans les instructions executables.

## Fonction(s) utilisée(s)

smartindent

## 💡 Exemples

Formatter recursivement tous les fichiers Nelson d'un dossier.

```matlab
nelson-format --include-subfolders true modules/interpreter/functions
```
Verifier qu'un fichier est deja formate.

```matlab
nelson-format --check myfile.m
```
Formatter avec un fichier de configuration explicite.

```matlab
nelson-format --config nelson-format.json modules/interpreter/functions
```


## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
