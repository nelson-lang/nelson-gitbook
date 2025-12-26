# display

Afficher des informations sur une variable ou le résultat d'une expression.

## 📝 Syntaxe

- display(V)
- display(V, name)

## 📥 Argument d'entrée

- V - Résultat de l'exécution d'une instruction ou d'une expression
- name - un vecteur de caractères : nom de la variable affichée.

## 📄 Description

<b>display(V)</b> affiche des informations sur la variable <b>V</b>.

Nelson appelle la fonction<b>display</b> chaque fois qu'un objet est référencé dans une instruction non terminée par un point-virgule.

## 💡 Exemples

```matlab
display(33, 'Hello')
```

```matlab
display('Hello Nelson')
```

```matlab
display(pi)
```

```matlab
A = eye(3, 3); disp(A)
```

## 🔗 Voir aussi

[disp](../display_format/disp.md), [fprintf](../stream_manager/fprintf.md), [format](../display_format/format.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
