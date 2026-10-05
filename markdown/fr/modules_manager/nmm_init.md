# nmm init

Genere un manifeste module.json valide.

## 📝 Syntaxe

- module\_json\_path = nmm('init', destination\_dir, champ1, valeur1, ...)
- data = nmm('init', destination\_dir, ..., 'DryRun', true)
- module\_json\_path = nmm('init', destination\_dir, ..., 'Force', true)
- module\_json\_path = nmm('init', destination\_dir, ..., 'Skeleton', true)
- module\_json\_path = nmm('init', destination\_dir, 'Interactive', true)

## 📥 Argument d'entrée

- destination\_dir - une chaine de caracteres : repertoire ou <b>module.json</b> est ecrit (cree s'il n'existe pas).
- champ1, valeur1, ... - des paires nom/valeur decrivant le manifeste et les options de la commande (voir la description).

## 📤 Argument de sortie

- module\_json\_path - une chaine de caracteres : chemin complet du fichier <b>module.json</b> ecrit.
- data - une structure : le manifeste assemble, retourne lorsque <b>'DryRun'</b> vaut <b>true</b> (rien n'est ecrit).

## 📄 Description


<b>nmm('init', destination\_dir, ...)</b> assemble un manifeste <b>module.json</b> a partir des champs fournis et de valeurs par defaut raisonnables, le valide avec le meme validateur de schema que <b>nmm('validate')</b>, puis ecrit un <b>module.json</b> formate dans <b>destination\_dir</b>. Comme il reutilise le validateur de nmm, un manifeste genere est toujours valide pour nmm. 

Champs du manifeste acceptes comme paires nom/valeur : 

<b>module</b> un nom de module respectant <b>^[A-Za-z][A-Za-z0-9\_]\*$</b> ; par defaut le nom du repertoire de destination (ou le titre) s'il est omis. 

<b>title</b>, <b>summary</b> des chaines non vides ; <b>title</b> vaut par defaut le nom du module et <b>summary</b> vaut par defaut le titre. 

<b>version</b> une version semantique ; par defaut <b>1.0.0</b>. 

<b>license</b> une expression de licence SPDX (par exemple <b>MIT</b> ou <b>LGPL-3.0-or-later</b>) ; obligatoire. 

<b>platforms</b> une chaine ou un tableau de chaines ; par defaut <b>{'all'}</b>. 

<b>nelson</b> une plage de versions Nelson ; par defaut <b>>=2.0.0</b>. 

<b>builtin</b> un booleen ; par defaut <b>false</b>. 

<b>dependencies</b> une structure associant des noms de modules a des contraintes de version ; par defaut une structure vide. 

<b>keywords</b>, <b>authors</b>, <b>description</b>, <b>repository</b>, <b>homepage</b>, <b>issues</b>, <b>documentation</b> metadonnees optionnelles. 

Options de la commande : 

<b>'Force', true</b> ecrase un <b>module.json</b> existant (sinon la commande echoue). 

<b>'DryRun', true</b> retourne la structure du manifeste assemble sans ecrire de fichier. 

<b>'Skeleton', true</b> depose aussi une arborescence source minimale, chargeable et empaquetable a cote du manifeste (<b>loader.m</b>, <b>builder.m</b>, <b>etc/startup.m</b>, <b>etc/finish.m</b>, <b>help</b> et <b>tests</b>). Elle est volontairement minimale ; utilisez un generateur dedie pour un module plus complet. 

<b>'Interactive', true</b> demande via <b>input()</b> chaque champ requis non fourni, en affichant la valeur par defaut entre crochets et en validant chaque reponse. L'option est desactivee par defaut afin que les scripts lances via <b>--file</b> ne bloquent jamais sur l'entree standard. 

Apres l'ecriture (ou le calcul, avec <b>DryRun</b>) du manifeste, <b>init</b> execute le linter de bonnes pratiques de nmm (le meme que <b>nmm('validate', ..., '-warnings')</b>) et affiche des suggestions non bloquantes pour les metadonnees recommandees manquantes, telles que <b>repository</b>, <b>authors</b>, <b>keywords</b> ou <b>description</b>. Les avertissements n'empechent jamais l'ecriture du manifeste. Avec <b>DryRun</b>, la structure retournee contient egalement un champ <b>warnings</b>. 

Le manifeste genere est directement utilisable par <b>nmm('validate')</b> et, pour un module source, par <b>nmm('pack')</b>.

## 💡 Exemple

Generer un manifeste et le valider

```matlab
module_dir = [tempdir(), 'my_module/'];
mkdir(module_dir);
nmm('init', module_dir, 'module', 'my_module', 'title', 'My Module', ...
    'summary', 'a demo module', 'license', 'MIT', 'Skeleton', true);
nmm('validate', module_dir)

```


## 🔗 Voir aussi

[nmm](../modules_manager/nmm.md), [module.json](../modules_manager/module-json.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
