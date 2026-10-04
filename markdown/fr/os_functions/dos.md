# dos

Executer une commande avec l'interpreteur du systeme d'exploitation.

## 📝 Syntaxe

- status = dos(command)
- [status, output, duration] = dos(command)

## 📥 Argument d'entrée

- command - chaine scalaire ou vecteur de caracteres : commande a executer dans l'interpreteur du systeme d'exploitation.
- '-echo' - indicateur optionnel qui affiche aussi la sortie de la commande dans la fenetre de commande.

## 📤 Argument de sortie

- status - code de sortie entier renvoye par la commande.
- output - texte capture depuis les sorties standard et erreur.
- duration - duree d'execution en millisecondes.

## 📄 Description

dos execute une commande via l'interpreteur du systeme d'exploitation et renvoie le code de sortie.

Avec des sorties, Nelson peut aussi renvoyer le texte produit par la commande et la duree d'execution. dos suit le meme modele d'execution que system.

## Fonction(s) utilisée(s)

    system

## 💡 Exemple

Executer une commande shell et capturer sa sortie.

```matlab
[status, output] = dos('echo Nelson')
```

## 🔗 Voir aussi

[system](../os_functions/system.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
