#import "nelson_help.typ": *

= Fonctions de lecture audio

Le module audio fournit des fonctions pour lire, écrire, analyser et jouer des fichiers audio.

 Il prend en charge le contrôle de lecture via l'objet audioplayer, la manipulation des propriétés de lecture et la gestion des métadonnées.

 Il comprend également des utilitaires pour la conversion de signaux et la génération de sons.

== Functions

- #nlink(<audio:audiodevinfo>)[audiodevinfo]: Obtient les informations des périphériques audio.
- #nlink(<audio:audioinfo>)[audioinfo]: Obtient les informations du fichier audio.
- #nlink(<audio:audiometadata>)[audiometadata]: Obtient\/Définit les métadonnées du fichier audio.
- #nlink(<audio:audioplayer>)[audioplayer]: Objet audioplayer.
- #nlink(<audio:audioplayer_delete>)[audioplayer\_delete]: Supprime l'objet audioplayer.
- #nlink(<audio:audioplayer_fieldnames>)[audioplayer\_fieldnames]: Retourne les noms des propriétés d'un objet audioplayer.
- #nlink(<audio:audioplayer_get>)[audioplayer\_get]: Obtient la valeur de propriété de l'interface audioplayer.
- #nlink(<audio:audioplayer_pause>)[audioplayer\_pause]: Met en pause un objet audioplayer.
- #nlink(<audio:audioplayer_set>)[audioplayer\_set]: Définit la propriété de l'objet ou de l'interface à la valeur spécifiée.
- #nlink(<audio:audioplayer_stop>)[audioplayer\_stop]: Arrête un objet audioplayer.
- #nlink(<audio:audioplayer_used>)[audioplayer\_used]: Retourne la liste des handles audioplayer actuellement utilisés.
- #nlink(<audio:audioread>)[audioread]: Lit un fichier audio.
- #nlink(<audio:audiorecorder>)[audiorecorder]: Objet pour enregistrer de l'audio.
- #nlink(<audio:audiorecorder_delete>)[audiorecorder\_delete]: Supprime un objet audiorecorder.
- #nlink(<audio:audiorecorder_fieldnames>)[audiorecorder\_fieldnames]: Retourne les noms des propriétés d'un objet audiorecorder.
- #nlink(<audio:audiorecorder_get>)[audiorecorder\_get]: Obtenir la valeur d'une propriété depuis l'interface audiorecorder.
- #nlink(<audio:audiorecorder_pause>)[audiorecorder\_pause]: Met en pause un objet audiorecorder.
- #nlink(<audio:audiorecorder_set>)[audiorecorder\_set]: Définit la propriété d'un objet ou d'une interface à la valeur spécifiée.
- #nlink(<audio:audiorecorder_used>)[audiorecorder\_used]: Retourne la liste des poignées audiorecorder actuellement utilisées.
- #nlink(<audio:audiosupportedformats>)[audiosupportedformats]: Obtient les formats de fichiers audio supportés.
- #nlink(<audio:audiowrite>)[audiowrite]: Écrit un fichier audio.
- #nlink(<audio:beep>)[beep]: Produit un son de bip.
- #nlink(<audio:getaudiodata>)[getaudiodata]: Stocker le signal audio enregistré dans un tableau numérique.
- #nlink(<audio:getplayer>)[getplayer]: Créer un objet audioplayer associé.
- #nlink(<audio:isplaying>)[isplaying]: obtenir des informations sur la lecture audio en cours.
- #nlink(<audio:isrecording>)[isrecording]: déterminer si l'enregistrement est en cours.
- #nlink(<audio:lin2mu>)[lin2mu]: Convertir les données audio d'un signal linéaire vers mu-law.
- #nlink(<audio:mu2lin>)[mu2lin]: Convertir les données audio de mu-law vers un signal linéaire.
- #nlink(<audio:play>)[play]: Lit un objet audioplayer.
- #nlink(<audio:playblocking>)[playblocking]: Lit un objet audioplayer de manière bloquante.
- #nlink(<audio:record>)[record]: Enregistrer de l'audio dans un objet audiorecorder.
- #nlink(<audio:recordblocking>)[recordblocking]: Enregistrer de l'audio dans un objet audiorecorder ; bloquer le contrôle jusqu'à la fin de l'enregistrement.
- #nlink(<audio:resume>)[resume]: Reprend un objet audioplayer.
- #nlink(<audio:sound>)[sound]: Convertit une matrice de données de signal en son et le joue.
- #nlink(<audio:soundsc>)[soundsc]: Met à l'échelle les données et joue comme son.
- #nlink(<audio:stop>)[stop]: Arrête un objet audioplayer.


#nested[
#pagebreak(weak: true)
#include "audiodevinfo.typ"
#pagebreak(weak: true)
#include "audioinfo.typ"
#pagebreak(weak: true)
#include "audiometadata.typ"
#pagebreak(weak: true)
#include "audioplayer.typ"
#pagebreak(weak: true)
#include "audioplayer_delete.typ"
#pagebreak(weak: true)
#include "audioplayer_fieldnames.typ"
#pagebreak(weak: true)
#include "audioplayer_get.typ"
#pagebreak(weak: true)
#include "audioplayer_pause.typ"
#pagebreak(weak: true)
#include "audioplayer_set.typ"
#pagebreak(weak: true)
#include "audioplayer_stop.typ"
#pagebreak(weak: true)
#include "audioplayer_used.typ"
#pagebreak(weak: true)
#include "audioread.typ"
#pagebreak(weak: true)
#include "audiorecorder.typ"
#pagebreak(weak: true)
#include "audiorecorder_delete.typ"
#pagebreak(weak: true)
#include "audiorecorder_fieldnames.typ"
#pagebreak(weak: true)
#include "audiorecorder_get.typ"
#pagebreak(weak: true)
#include "audiorecorder_pause.typ"
#pagebreak(weak: true)
#include "audiorecorder_set.typ"
#pagebreak(weak: true)
#include "audiorecorder_used.typ"
#pagebreak(weak: true)
#include "audiosupportedformats.typ"
#pagebreak(weak: true)
#include "audiowrite.typ"
#pagebreak(weak: true)
#include "beep.typ"
#pagebreak(weak: true)
#include "getaudiodata.typ"
#pagebreak(weak: true)
#include "getplayer.typ"
#pagebreak(weak: true)
#include "isplaying.typ"
#pagebreak(weak: true)
#include "isrecording.typ"
#pagebreak(weak: true)
#include "lin2mu.typ"
#pagebreak(weak: true)
#include "mu2lin.typ"
#pagebreak(weak: true)
#include "play.typ"
#pagebreak(weak: true)
#include "playblocking.typ"
#pagebreak(weak: true)
#include "record.typ"
#pagebreak(weak: true)
#include "recordblocking.typ"
#pagebreak(weak: true)
#include "resume.typ"
#pagebreak(weak: true)
#include "sound.typ"
#pagebreak(weak: true)
#include "soundsc.typ"
#pagebreak(weak: true)
#include "stop.typ"
]
