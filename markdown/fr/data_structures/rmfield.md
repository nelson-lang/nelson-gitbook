# rmfield

Supprimer des champs d'une structure.

## 📝 Syntaxe

- s = rmfield(st, field)

## 📥 Argument d'entrée

- st - une structure.
- field - une chaîne, un tableau cellulaire de chaînes, ou des caractères.

## 📤 Argument de sortie

- s - une structure sans le(s) champ(s).

## 📄 Description

<b>s = rmfield(st, field)</b> supprime le(s) champ(s) spécifié(s) du tableau de structures.

## 💡 Exemple

```matlab
example.a = 1
example.b = 'nelson'
example.c = []
rmfield(example, 'b')
```

## 🔗 Voir aussi

[struct](../data_structures/struct.md), [fieldnames](../data_structures/fieldnames.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
