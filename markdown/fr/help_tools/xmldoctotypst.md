# xmldoctotypst

Convertit des fichiers d'aide XML Nelson en sources Typst.

## 📝 Syntaxe

- status = xmldoctotypst(source\_dirs, destination\_dir, main\_title, overwrite)
- [status, msg] = xmldoctotypst(source\_dirs, destination\_dir, main\_title, overwrite)
- [status, msg] = xmldoctotypst(source\_dirs, destination\_dir, main\_title, overwrite, index\_dirs)

## 📥 Argument d'entrée

- source\_dirs - une cellule de chaînes : liste des répertoires xml.
- destination\_dir - une chaîne : répertoire de destination.
- main\_title - une chaîne : titre du document principal.
- overwrite - un booléen : forcer l'écrasement si le fichier de destination existe déjà.
- index\_dirs - une cellule de chaînes : racines XML d'aide des autres modules, utilisées pour résoudre les liens inter-modules (optionnel).

## 📤 Argument de sortie

- status - un booléen : fichiers générés ou non.
- msg - une chaîne : message d'erreur si la génération échoue.

## 📄 Description


<b>xmldoctotypst</b> convertit des fichiers d'aide XML Nelson en sources Typst. 

Chaque page d'aide devient un fichier <code>.typ</code> dont le titre porte le label <code><module:page></code>. Le répertoire de destination reçoit aussi <code>main.typ</code> (chapitres, liste des fonctions, et chaque page incluse un niveau de titre plus bas), <code>toc.typ</code> (table des matières) et <code>nelson_help.typ</code> (fonctions partagées importées par les pages). 

Les références croisées utilisent la fonction <code>nlink</code> : une référence devient un lien quand la page cible fait partie du document compilé, et reste du texte sinon. Les fragments LaTeX sont composés avec le paquet Typst <code>mitex</code> (fonction <code>latex</code>). Un élément <code>source_code</code> avec les bornes <code>start</code> et <code>end</code> est imprimé comme un listing ; sans bornes, le fichier entier n'est cité que par son chemin (fonction <code>source-ref</code>), ce qui garde le manuel compact. 

Compiler le résultat avec le compilateur typst : <code>typst compile main.typ</code>.

## 💡 Exemple



```matlab
source = [modulepath('help_tools'), '/help/fr_FR/xml'];
destination = [tempdir(), 'help_tools_typst'];
status = xmldoctotypst(source, destination, 'help_tools')
dir(destination)
```


## 🔗 Voir aussi

[xmldocbuild](../help_tools/xmldocbuild.md), [buildhelptypst](../help_tools/buildhelptypst.md), [xmldoctomd](../help_tools/xmldoctomd.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
