# error

Lever une erreur.

## 📝 Syntaxe

- error(id, msg)
- error(id, msg, A, ...)
- error(msg)
- error(msg, A, ...)
- error(error_structure)
- error(correction, ...)

## 📥 Argument d'entrée

- id - une chaine : identifiant d'erreur.
- msg - une chaine : message ou format.
- A - valeurs utilisees pour formater le message.
- error_structure - structure scalaire avec les champs message, identifier ou stack.
- correction - un objet nelson.lang.correction.

## 📄 Description

<b>error</b> arrete l'execution du script en cours.

<b>error('')</b> sera ignoree et le script continuera a s'executer.

<b>error(msg, A, ...)</b> et <b>error(id, msg, A, ...)</b> formatent le message avec les memes regles que <b>sprintf</b>.

<b>error(error_structure)</b> accepte une structure scalaire. Les champs absents sont traites comme des valeurs vides, et les champs supplementaires sont ignores.

Quand <b>error_structure.stack</b> est fourni, seuls les champs <b>file</b>, <b>name</b> et <b>line</b> sont utilises. Les champs supplementaires de stack sont ignores. Les valeurs non entieres de <b>line</b> utilisent leur partie reelle entiere ; les valeurs numeriques invalides utilisent <b>0</b>.

<b>error(correction, ...)</b> conserve l'objet de correction dans la MException levee.

L'identifiant inclut un ou plusieurs champs composants et un champ mnemonique (exemple : 'nelson:matrix:empty').

<b>Comment construire un identifiant d'erreur.</b> Un identifiant s'ecrit <b>composant:mnemonique</b>, avec un ou plusieurs champs composants suivis d'un mnemonique, chaque champ commencant par une lettre et ne contenant que des lettres, des chiffres ou des tirets bas, separes par des deux-points (exemple : 'Nelson:elementary_functions:notFinite'). Les identifiants leves par Nelson lui-meme utilisent <b>Nelson</b> comme premier composant ; dans votre propre code, utilisez un composant de votre choix (par exemple le nom de votre module ou de votre boite a outils).

Quelques regles gardent les identifiants utiles :

- Le composant devrait pointer vers la zone qui leve l'erreur (un module, une classe ou un nom de fonction) ; le mnemonique devrait nommer la verification precise en camelCase (exemple : 'mustBeFinite', 'tooManyInputs').

- Pour les erreurs qui peuvent survenir partout (nombre d'arguments, indexation, forme de valeur attendue), un identifiant court a deux champs suffit (exemple : 'Nelson:tooManyInputs', 'Nelson:badsubscript').

- Donnez a un identifiant un seul texte de message : un identifiant reutilise avec plusieurs messages differents ne peut pas etre traduit et est retire du catalogue de messages.

- Reutilisez un identifiant existant pour la meme condition plutot que de creer un quasi-doublon, et gardez le mnemonique stable et descriptif (n'y encodez pas une valeur d'execution).

## 💡 Exemples

```matlab
error('your error message.')
error('nelson:identifier', 'your error message.')
error('Value %d', 7)
error('')
```

```matlab
1 / [1 2 3]
a = lasterror()
lasterror('reset')
b = lasterror()
error(a)
c = lasterror()
```

## 🔗 Voir aussi

[MException](../error_manager/MException.md), [lasterror](../error_manager/lasterror.md), [warning](../error_manager/warning.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
