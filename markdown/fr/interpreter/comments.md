# commentaires

Ajouter des commentaires au code Nelson.

## 📝 Syntaxe

- % commentaire
- code % commentaire en ligne
- %{
- commentaire bloc
- %}

## 📄 Description

Les commentaires sont utilisés pour décrire le code et améliorer la lisibilité. Ils sont ignorés lors de l'exécution.

Nelson prend en charge les commentaires sur une seule ligne en utilisant le caractère <b>%</b> et les commentaires de bloc en utilisant les délimiteurs <b>%{</b> et <b>%}</b>.

Les délimiteurs de commentaires de bloc doivent apparaître seuls sur leurs lignes respectives. Tout texte entre eux est traité comme un commentaire.

Les commentaires multilignes sont pris en charge par l'interpréteur, l'éditeur, le débogueur, et la fonction <b>headcomments</b>.

## 💡 Exemples

        Commentaires sur une seule ligne et commentaires en ligne

```matlab

% Ajouter deux nombres
a = 1;
b = 2;
c = a + b; % stocker le résultat

```

        Commentaires de bloc

```matlab

a = magic(3);
%{
sum(a)
diag(a)
sum(diag(a))
%}
disp(a)

```

## 🔗 Voir aussi

[headcomments](../help_tools/headcomments.md).

## 🕔 Historique

| Version | 📄 Description    |
| ------- | ----------------- |
| 1.17.0  | Version initiale. |

<!--
## 👤 Auteur

Allan CORNET
-->
