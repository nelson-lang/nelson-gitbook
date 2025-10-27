# unzip

Décompresser une archive zip.

## 📝 Syntaxe

- res = unzip(zipname)
- res = unzip(zipname, rootdir)

## 📥 Argument d'entrée

- zipname - une chaîne : nom du fichier d'archive zip.
- rootdir - un vecteur de caractères ou une chaîne : chemin racine pour les fichiers à décompresser.

## 📤 Argument de sortie

- res - un tableau de cellules de vecteurs de caractères contenant les noms des fichiers décompressés.

## 📄 Description

<b>unzip</b> extracts archived contents. Timestamps and attributes are preserved for each file.

## 💡 Exemple

```matlab
zip([tempdir(), 'test.zip'], [nelsonroot(), '/module_skeleton']);
r = unzip([tempdir(), 'test.zip'], [tempdir(), createGUID()])
```

## 🔗 Voir aussi

[zip](../file_archiver/zip.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
