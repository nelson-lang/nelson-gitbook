# warning

Afficher un message d'avertissement.

## 📝 Syntaxe

- warning()
- warning(msg)
- warning(id, msg)
- warning(state)
- warning(state, id)
- st = warning()
- warning(st)

## 📥 Argument d'entrée

- id - une chaîne : identifiant pour l'avertissement.
- msg - une chaîne : message d'avertissement.
- state - une chaîne : 'on', 'off', 'aserror', 'all' ou 'query'.
- st - une structure : définir les paramètres d'avertissement.

## 📤 Argument de sortie

- st - une structure : paramètres d'avertissement.

## 📄 Description


<b>warning</b> affiche un message d'avertissement. 

<b>warning('
        ')</b> réinitialise l'état de lastwarn. 

Lors d'un appel <b>warning(id, msg, ...)</b> ou <b>warning(state, id)</b>, l'identifiant s'écrit <b>composant:mnémonique</b>, avec un ou plusieurs champs composants suivis d'un mnémonique, chaque champ commençant par une lettre et ne contenant que des lettres, des chiffres ou des tirets bas, séparés par des deux-points (exemple : 'Nelson:io:fileNotFound'). Les avertissements levés par Nelson utilisent <b>Nelson</b> comme premier composant ; dans votre propre code, utilisez un composant de votre choix (par exemple le nom de votre module). 

Quelques règles gardent les identifiants utiles : le composant devrait pointer vers la zone qui lève l'avertissement et le mnémonique devrait nommer le cas précis en camelCase ; un identifiant court à deux champs suffit pour les cas qui peuvent survenir partout ; donnez à un identifiant un seul texte de message (un identifiant réutilisé avec plusieurs messages différents ne peut pas être traduit) ; et réutilisez un identifiant existant pour le même cas plutôt qu'un quasi-doublon. L'identifiant est aussi ce que <b>warning('off', id)</b> et <b>warning('on', id)</b> activent ou désactivent, donc un identifiant stable permet aux utilisateurs de contrôler l'avertissement.

## 💡 Exemples



```matlab
warning('your warning message.')
```


```matlab
warning('on', 'myModule:identifier');
warning('myModule:identifier', 'my message 1 on');
warning('off', 'myModule:identifier');
warning('myModule:identifier', 'my message 2 off');
warning('aserror', 'myModule:identifier');
warning('myModule:identifier', 'my message 3 as error');


```


## 🔗 Voir aussi

[lasterror](../error_manager/lasterror.md), [error](../error_manager/error.md), [lastwarn](../error_manager/lastwarn.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
