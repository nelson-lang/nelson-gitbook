# jsonprettyprint

formate une chaîne JSON.

## 📝 Syntaxe

- res = jsonprettyprint(txt)

## 📥 Argument d'entrée

- txt - un texte JSON valide.

## 📤 Argument de sortie

- res - une chaîne : un texte JSON formaté (lisible par un humain).

## 📄 Description

<b>jsonprettyprint</b> formate une chaîne de texte JSON pour la rendre lisible par un humain.

## 💡 Exemple

```matlab
field1 = 'f1';  value1 = zeros(1,10);
field2 = 'f2';  value2 = {'a', 'b'};
field3 = 'f3';  value3 = {pi, pi*pi};
field4 = 'f4';  value4 = {'fourth'};
s = struct(field1,value1,field2,value2,field3,value3,field4,value4);
r = jsonencode(s)
jsonprettyprint(r)

```

## 🔗 Voir aussi

[jsondecode](../json/jsondecode.md), [jsonencode](../json/jsonencode.md), [filewrite](../stream_manager/filewrite.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
