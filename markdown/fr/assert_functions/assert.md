# assert

Verifie qu'une condition est vraie.

## 📝 Syntaxe

- assert(condition)
- assert(condition, message)
- assert(condition, message, value)
- assert(condition, identifier, message)
- assert(condition, identifier, message, value)
- [res, msg] = assert(...)

## 📥 Argument d'entrée

- condition - Scalaire ou tableau logique ou numerique reel a tester. Chaque entree doit etre non nulle.
- message - Message d'echec personnalise optionnel. Les remplacements de format sont pris en charge avec les valeurs suivantes.
- identifier - Identifiant d'erreur optionnel utilise lorsque l'assertion leve une erreur.
- value - Valeur optionnelle inseree dans le format du message.

## 📤 Argument de sortie

- res - true si l'assertion reussit, false sinon.
- msg - Message d'echec de l'assertion, vide en cas de succes.

## 📄 Description

<b>assert</b> leve une erreur lorsque condition est fausse et qu'aucune sortie n'est demandee.

Avec sorties, les echecs d'assertion sont retournes dans <b>res</b> et <b>msg</b> au lieu d'etre leves.

Utiliser le package <b>asserts</b> pour les helpers d'assertion qualifies, par exemple <b>asserts.isequal(...)</b>.

## 💡 Exemples

Condition vraie

```matlab
assert(5 > 3);
```

Message personnalise

```matlab
[res, msg] = assert(false, 'condition failed');
```

Message formate

```matlab
[res, msg] = assert(false, 'value %.2f', 1.234);
```

Identifiant d'erreur

```matlab
[res, msg] = assert(false, 'Nelson:asserts:example', 'condition failed');
```

## 🔗 Voir aussi

[asserts.istrue](../assert_functions/asserts.istrue.md), [asserts.isfalse](../assert_functions/asserts.isfalse.md), [asserts.isequal](../assert_functions/asserts.isequal.md), [asserts.isapprox](../assert_functions/asserts.isapprox.md).

## 🕔 Historique

| Version | 📄 Description                                                                 |
| ------- | ------------------------------------------------------------------------------ |
| 1.0.0   | version initiale                                                               |
| 2.0.0   | ajout des messages formates, des identifiants d'erreur et du mode avec sorties |

<!--
## 👤 Auteur

Allan CORNET
-->
