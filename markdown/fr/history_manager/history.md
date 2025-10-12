# history

gestionnaire d'historique.

## Syntaxe

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

## Argument d'entrée

- new_size - un entier : nouvelle taille maximale de l'historique.
- true_false - un booléen.
- lines - un entier ou un vecteur de taille 1x2.
- str - une chaîne.
- name - une chaîne : nouveau nom de fichier par défaut pour l'historique
- filename_history - une chaîne : nom de fichier
- nb_commands - un entier : nombre de commandes.

## Argument de sortie

- c - un tableau (cell) de chaînes.
- l - un booléen.
- s - un entier.
- f - une chaîne.

## Description

<p>history() affiche l'historique actuel de Nelson.</p>

<p>c = history() renvoie l'historique actuel de Nelson sous forme d'un tableau (cell) de chaînes.</p>

<p>s = history('size') renvoie la taille maximale de l'historique.</p>

<p>f = history('filename') renvoie le nom de fichier de l'historique.</p>

<p>l = history('enable_save') renvoie l'état du gestionnaire d'historique.</p>

<p>c = history('get') renvoie l'historique actuel de Nelson sous forme d'un tableau (cell) de chaînes.</p>

<p>history('display') affiche l'historique actuel de Nelson.</p>

<p>history('save') enregistre le fichier d'historique courant.</p>

<p>history('load') charge le fichier d'historique courant.</p>

<p>history('clear') efface l'historique.</p>

<p>history('duplicated') obtient l'état concernant la sauvegarde des commandes consécutives dupliquées.</p>

<p>history('saveafter') obtient l'état concernant la sauvegarde de l'historique après N commandes.</p>

<p>history('removeexit') obtient l'état concernant la non-enregistrement des sorties dans le fichier d'historique.</p>

<p>history('size', new_size) définit la taille maximale de l'historique avec new_size.</p>

<p>history('enable_save', true_false) définit l'état du gestionnaire d'historique : false pour 'off', true pour 'on'.</p>

<p>history('delete', lines) supprime des lignes par index : un scalaire ou un vecteur 1x2.</p>

<p>history('append', str) ajoute une commande à l'historique.</p>

<p>history('filename', name) définit le nom de fichier de l'historique.</p>

<p>history('load', filename_history) charge un fichier d'historique.</p>

<p>history('save', filename_history) enregistre un fichier d'historique.</p>

<p>history('duplicated', true_false) définit l'état concernant les commandes consécutives dupliquées : true supprime les doublons.</p>

<p>history('removeexit', true_false) définit l'état concernant la non-enregistrement des sorties dans le fichier d'historique.</p>

<p>history('get', lines) renvoie l'historique actuel de Nelson sous forme d'un tableau (cell) de chaînes par index : un scalaire ou un vecteur 1x2.</p>

<p>history('saveafter', nb_commands) enregistre le fichier d'historique après que nb_commands instructions aient été ajoutées au fichier.</p>

<p>Astuces : vous pouvez facilement partager votre fichier d'historique dans le cloud en ajoutant quelques lignes de code dans votre fichier de démarrage utilisateur.</p>

<p>Si Nelson est lancé avec l'option '--nouserstartup', le fichier d'historique ne sera pas chargé au démarrage et ne sera pas enregistré à la fermeture.</p>

## Exemples

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

## Voir aussi

[diary](../stream_manager/diary.md).

## Historique

| Version | Description      |
| ------- | ---------------- |
| 1.0.0   | version initiale |

## Auteur

Allan CORNET
