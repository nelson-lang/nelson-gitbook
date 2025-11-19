# history

gestionnaire d'historique.

## 📝 Syntaxe

- history()
- c = history()
- s = history('size')
- f = history('filename')
- l = history('enable_save')
- c = history('get')
- history('display')
- history('save')
- history('load')
- history('clear')
- history('duplicated')
- history('saveafter')
- history('removeexit')
- history('size', new_size)
- history('enable_save', true_false)
- history('delete', lines)
- history('append', str)
- history('filename', name)
- history('load', filename_history)
- history('save', filename_history)
- history('duplicated', true_false)
- history('removeexit', true_false)
- history('get', lines)
- history('saveafter', nb_commands)

## 📥 Argument d'entrée

- new_size - un entier : nouvelle taille maximale de l'historique.
- true_false - un booléen.
- lines - un entier ou un vecteur de taille 1x2.
- str - une chaîne.
- name - une chaîne : nouveau nom de fichier par défaut pour l'historique
- filename_history - une chaîne : nom de fichier
- nb_commands - un entier : nombre de commandes.

## 📤 Argument de sortie

- c - un tableau (cell) de chaînes.
- l - un booléen.
- s - un entier.
- f - une chaîne.

## 📄 Description

<b>history()</b> affiche l'historique actuel de Nelson.

<b>c = history()</b> renvoie l'historique actuel de Nelson sous forme d'un tableau (cell) de chaînes.

<b>s = history('size')</b> renvoie la taille maximale de l'historique.

<b>f = history('filename')</b> renvoie le nom de fichier de l'historique.

<b>l = history('enable_save')</b> renvoie l'état du gestionnaire d'historique.

<b>c = history('get')</b> renvoie l'historique actuel de Nelson sous forme d'un tableau (cell) de chaînes.

<b>history('display')</b> affiche l'historique actuel de Nelson.

<b>history('save')</b> enregistre le fichier d'historique courant.

<b>history('load')</b> charge le fichier d'historique courant.

<b>history('clear')</b> efface l'historique.

<b>history('duplicated')</b> obtient l'état concernant la sauvegarde des commandes consécutives dupliquées.

<b>history('saveafter')</b> obtient l'état concernant la sauvegarde de l'historique après N commandes.

<b>history('removeexit')</b> obtient l'état concernant la non-enregistrement des sorties dans le fichier d'historique.

<b>history('size', new_size)</b> définit la taille maximale de l'historique avec<b>new_size</b>.

<b>history('enable_save', true_false)</b> définit l'état du gestionnaire d'historique : false pour 'off', true pour 'on'.

<b>history('delete', lines)</b> supprime des lignes par index : un scalaire ou un vecteur 1x2.

<b>history('append', str)</b> ajoute une commande à l'historique.

<b>history('filename', name)</b> définit le nom de fichier de l'historique.

<b>history('load', filename_history)</b> charge un fichier d'historique.

<b>history('save', filename_history)</b> enregistre un fichier d'historique.

<b>history('duplicated', true_false)</b> définit l'état concernant les commandes consécutives dupliquées : true supprime les doublons.

<b>history('removeexit', true_false)</b> définit l'état concernant la non-enregistrement des sorties dans le fichier d'historique.

<b>history('get', lines)</b> renvoie l'historique actuel de Nelson sous forme d'un tableau (cell) de chaînes par index : un scalaire ou un vecteur 1x2.

<b>history('saveafter', nb_commands)</b> enregistre le fichier d'historique après que<b>nb_commands</b> instructions aient été ajoutées au fichier.

<b>Astuces</b> : vous pouvez facilement partager votre fichier d'historique dans le cloud en ajoutant quelques lignes de code dans votre fichier de démarrage utilisateur.

Si Nelson est lancé avec l'option '--nouserstartup', le fichier d'historique ne sera pas chargé au démarrage et ne sera pas enregistré à la fermeture.

## 💡 Exemples

Example to share your history file in OneDrive cloud

```matlab
OneDrivePath = getenv('OneDrive');
if (strcmp(OneDrivePath, '') == false)
  NelsonOneDrivePath = [OneDrivePath, '/Nelson'];
  mkdir(NelsonOneDrivePath);
  NelsonOneDrivePathFilename = [NelsonOneDrivePath, '/', 'Nelson.history'];
 history('filename', NelsonOneDrivePathFilename);
  history('load', NelsonOneDrivePathFilename);
end
```

```matlab
history()
c = history()
```

## 🔗 Voir aussi

[diary](../stream_manager/diary.md).

## 🕔 Historique

| Version | 📄 Description   |
| ------- | ---------------- |
| 1.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
