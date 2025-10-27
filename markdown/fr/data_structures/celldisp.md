# celldisp

Afficher le contenu d'un tableau cellulaire.

## 📝 Syntaxe

- celldisp(C)
- celldisp(C, name)

## 📥 Argument d'entrée

- C - tableau cellulaire.
- name - nom affiché du tableau cellulaire.

## 📄 Description

<b>celldisp</b> affiche récursivement le contenu d'un tableau cellulaire.

## 💡 Exemple

```matlab
C = {2, 22, 'ff', {331, 332}};
celldisp(C)
celldisp(C, 'var_name')
```

## 🔗 Voir aussi

[disp](../display_format/disp.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## 👤 Auteur

Allan CORNET
