# values

Valeurs du dictionnaire.

## 📝 Syntaxe

- v = values(d)
- v = values(d, 'cell')

## 📥 Argument d'entrée

- d - scalaire : objet dictionnaire.

## 📤 Argument de sortie

- v - valeurs.

## 📄 Description

<b>v = values(d)</b> récupère un tableau contenant les valeurs du dictionnaire spécifié, <b>d</b>.

<b>v = values(d, 'cell')</b> renvoie éventuellement les valeurs sous forme de tableau cellulaire.

## 💡 Exemple

```matlab
names = ["Biil" "John" "Yann"];
wheels = [1 2 3];
d = dictionary(wheels, names)
v = values(d)
v = values(d, 'cell')

```

## 🔗 Voir aussi

[dictionary](../dictionary/dictionary.md), [keys](../dictionary/keys.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.5.0   | version initiale |

## 👤 Auteur

Allan CORNET
