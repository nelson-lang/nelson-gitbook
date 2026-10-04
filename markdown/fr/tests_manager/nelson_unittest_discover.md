# nelson.unittest.discover

Decouvrir les fichiers de test et retourner une suite structuree.

## 📝 Syntaxe

- suite = nelson.unittest.discover(targets)
- suite = nelson.unittest.discover(targets, Name, Value)

## 📥 Argument d'entrée

- targets - nom de module, dossier, nom de fichier ou tableau de cellules de cibles.
- Name, Value - option de selection <b>Kind</b>.

## 📤 Argument de sortie

- suite - structure TestSuite contenant les entrees TestCase decouvertes.

## 📄 Description

<b>nelson.unittest.discover</b> trouve les fichiers <b>test\_\*.m</b>, <b>bug\_\*.m</b> et <b>bench\_\*.m</b>.

La decouverte relit les tags des fichiers a chaque appel et renseigne les champs TestCase stables comme id, module, file, name, kind, tags, mode, resources, timeout et weight.

Pour un module externe, le champ module provient du manifeste module.json et la racine est repérée par le fichier etc/startup.m englobant. Les installations versionnées, les dossiers temporaires de préparation des paquets et les tests imbriqués sont pris en charge. Les modules fournis avec Nelson et les anciens modules enregistrés sont identifiés par leur racine. Un nom de dossier seul ne suffit pas ; sans identité valide, le champ module est vide.

## 💡 Exemple

```matlab

suite = nelson.unittest.discover('string', 'Kind', 'all_tests');

```

## 🔗 Voir aussi

[nelson.unittest](../tests_manager/nelson.unittest.md), [nelson.unittest.select](../tests_manager/nelson.unittest.select.md), [nelson.unittest.run](../tests_manager/nelson.unittest.run.md).
