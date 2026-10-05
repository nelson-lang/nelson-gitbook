# test\_makeref

Crée un fichier '.ref' pour un test

## 📝 Syntaxe

- status = test\_makeref(filename)

## 📥 Argument d'entrée

- filename - a string: nom de fichier, un fichier de test.

## 📤 Argument de sortie

- status - un logique: vrai si le .ref a été généré.

## 📄 Description


<b>test\_makeref</b> crée un fichier '.ref' à partir d'un fichier de test. 

<b>test\_makeref</b> est un wrapper de compatibilite au dessus de <b>nelson.unittest.makeref</b>. 

Le fichier de test doit contenir la balise <--CHECK REF-->.


## 🔗 Voir aussi

[test_run](../tests_manager/test_run.md), [nelson.unittest](../tests_manager/nelson_unittest.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
