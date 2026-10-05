# argv

Arguments de la ligne de commande de Nelson.

## 📝 Syntaxe

- args = argv()
- args = argv('user')

## 📥 Argument d'entrée

- 'user' - renvoie seulement les arguments situes apres le separateur de ligne de commande <b>--</b>.

## 📤 Argument de sortie

- args - un tableau de cellules contenant des chaines de caracteres.

## 📄 Description


<b>argv()</b> renvoie un tableau de cellules contenant les arguments complets de la ligne de commande Nelson. 

Le premier element du tableau contient le chemin de l'executable lance. 

<b>argv('user')</b> renvoie uniquement les arguments places apres <b>--</b>. Le separateur lui-meme n'est pas retourne. 

Si la ligne de commande ne contient pas <b>--</b>, <b>argv('user')</b> renvoie un tableau de cellules vide. 

Quand un test est execute par <b>test\_run</b>, <b>argv('user')</b> peut contenir des arguments utilisateur fournis par le gestionnaire de tests, par exemple des options de controle du demarrage placees apres <b>--</b>. 

Les guillemets utilises pour grouper des arguments sont traites par le systeme d'exploitation ou le shell avant le demarrage de Nelson. Nelson conserve les arguments tels qu'ils sont recus.

## 💡 Exemples



```matlab
argv()
```


```matlab
argv('user')
```


```matlab
nelson-cli -e "disp(argv('user')); quit" -- "a b" "c d"
```


## 🔗 Voir aussi

[executable](../engine/executable.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
