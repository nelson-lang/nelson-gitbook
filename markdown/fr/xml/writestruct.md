# writestruct

Écrire une structure comme XML

## 📝 Syntaxe

- writestruct(s, filename)
- writestruct(s, filename, name, value)

## 📥 Argument d'entrée

- s - une structure ou un objet à sérialiser.
- filename - une chaîne : chemin vers le fichier XML de sortie.
- name, value - paires optionnelles : 'FileType', 'StructNodeName', 'AttributeSuffix' ou 'PrettyPrint'.

## 📄 Description

writestruct crée un document XML depuis une structure et l'écrit dans un fichier.

Les champs dont le nom se termine par le suffixe d'attribut sont écrits comme attributs. Les tableaux de structures produisent des éléments XML répétés.

## 💡 Exemple

```matlab
s = struct();
s.name = 'Nelson';
s.value = 12;
filename = [tempdir(), 'writestruct_example.xml'];
writestruct(s, filename, 'StructNodeName', 'root');
fileread(filename)
```

## 🔗 Voir aussi

[readstruct](../xml/readstruct.md), [xmlwrite](../xml/xmlwrite.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
