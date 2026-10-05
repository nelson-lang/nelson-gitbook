# isstr

Détermine si l'entrée est un tableau de caractères (obsolète).

## 📝 Syntaxe

- tf = isstr(x)

## 📥 Argument d'entrée

- x - une valeur, de type quelconque.

## 📤 Argument de sortie

- tf - un booléen : <b>true</b> si <b>x</b> est un tableau de caractères, <b>false</b> sinon.

## 📄 Description


<b>isstr</b> est un alias obsolète de <b>ischar</b>. Il renvoie <b>true</b> lorsque <b>x</b> est un tableau de caractères et <b>false</b> sinon. 

Un tableau de chaînes (créé avec des guillemets doubles) n'est pas un tableau de caractères, donc <b>isstr</b> renvoie <b>false</b> dans ce cas. 

<b>isstr</b> est conservé pour la compatibilité avec le code existant. Utilisez plutôt <b>ischar</b> dans le nouveau code.

## 💡 Exemples

Un tableau de caractères :

```matlab
tf = isstr('hello')
```
Une valeur numérique n'est pas un tableau de caractères :

```matlab
tf = isstr(42)
```
Une chaîne n'est pas un tableau de caractères :

```matlab
tf = isstr("hello")
```


## 🔗 Voir aussi

[ischar](../types/ischar.md), [isstring](../types/isstring.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
