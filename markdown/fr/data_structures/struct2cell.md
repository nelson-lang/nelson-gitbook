# struct2cell

Créer un tableau cellulaire à partir d'une structure.

## 📝 Syntaxe

- ce = struct2cell(st)

## 📥 Argument d'entrée

- st - une structure.

## 📤 Argument de sortie

- ce - un tableau cellulaire.

## 📄 Description

<b>ce = struct2cell(st)</b> renvoie un nouveau tableau cellulaire à partir de la structure.

## 💡 Exemple

```matlab
names = {'Pierre', 'Anna', 'Roberto'}
values =  {45, 42, 13}
st = struct ('name', names, 'age', values);
ce = struct2cell(st)
```

## 🔗 Voir aussi

[cell](../data_structures/cell.md), [struct](../data_structures/struct.md), [fieldnames](../data_structures/fieldnames.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
