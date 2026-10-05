#import "nelson_help.typ": *

= netCDF

== Functions

- #nlink(<netcdf:nccreate>)[nccreate]: Cree une variable dans un fichier netCDF.
- #nlink(<netcdf:ncdisp>)[ncdisp]: Affiche le contenu d'une source de donnees netCDF.
- #nlink(<netcdf:ncinfo>)[ncinfo]: Retourne les informations d'une source de donnees netCDF.
- #nlink(<netcdf:ncread>)[ncread]: Lit les donnees d'une variable netCDF.
- #nlink(<netcdf:ncreadatt>)[ncreadatt]: Lit un attribut depuis une source netCDF.
- #nlink(<netcdf:ncwrite>)[ncwrite]: Ecrit des donnees dans une variable netCDF.
- #nlink(<netcdf:ncwriteatt>)[ncwriteatt]: Ecrit un attribut dans une source netCDF.
- #nlink(<netcdf:ncwriteschema>)[ncwriteschema]: Ajoute des definitions de schema dans un fichier netCDF.
- #nlink(<netcdf:netcdf>)[netcdf]: Interface bas niveau du paquet NetCDF.
- #nlink(<netcdf:netcdf_abort>)[netcdf.abort]: Annule les definitions recentes d'un fichier netCDF.
- #nlink(<netcdf:netcdf_close>)[netcdf.close]: Ferme un fichier netCDF.
- #nlink(<netcdf:netcdf_copyAtt>)[netcdf.copyAtt]: Copie un attribut netCDF vers un autre emplacement.
- #nlink(<netcdf:netcdf_create>)[netcdf.create]: Cree un nouveau jeu de donnees netCDF.
- #nlink(<netcdf:netcdf_defDim>)[netcdf.defDim]: Cree une dimension netCDF.
- #nlink(<netcdf:netcdf_defGrp>)[netcdf.defGrp]: Cree un groupe dans un fichier netCDF.
- #nlink(<netcdf:netcdf_defVar>)[netcdf.defVar]: Cree une variable netCDF.
- #nlink(<netcdf:netcdf_defVarChunking>)[netcdf.defVarChunking]: Definit le decoupage en blocs d'une variable netCDF.
- #nlink(<netcdf:netcdf_defVarDeflate>)[netcdf.defVarDeflate]: Definit la compression d'une variable netCDF.
- #nlink(<netcdf:netcdf_defVarFill>)[netcdf.defVarFill]: Definit la valeur de remplissage d'une variable netCDF.
- #nlink(<netcdf:netcdf_defVarFletcher32>)[netcdf.defVarFletcher32]: Definit le controle Fletcher32 d'une variable netCDF.
- #nlink(<netcdf:netcdf_defVlen>)[netcdf.defVlen]: Definit un type tableau de longueur variable netCDF.
- #nlink(<netcdf:netcdf_delAtt>)[netcdf.delAtt]: Supprime un attribut netCDF.
- #nlink(<netcdf:netcdf_endDef>)[netcdf.endDef]: Termine le mode definition d'un fichier netCDF.
- #nlink(<netcdf:netcdf_getAtt>)[netcdf.getAtt]: Retourne un attribut netCDF.
- #nlink(<netcdf:netcdf_getChunkCache>)[netcdf.getChunkCache]: Retourne les reglages par defaut du cache de blocs netCDF.
- #nlink(<netcdf:netcdf_getConstant>)[netcdf.getConstant]: Retourne la valeur numerique d'une constante netCDF.
- #nlink(<netcdf:netcdf_getConstantNames>)[netcdf.getConstantNames]: Retourne la liste des constantes netCDF connues.
- #nlink(<netcdf:netcdf_getVar>)[netcdf.getVar]: Lit les donnees d'une variable netCDF.
- #nlink(<netcdf:netcdf_inq>)[netcdf.inq]: Retourne des informations generales sur un fichier netCDF.
- #nlink(<netcdf:netcdf_inqAtt>)[netcdf.inqAtt]: Retourne les informations d'un attribut netCDF.
- #nlink(<netcdf:netcdf_inqAttID>)[netcdf.inqAttID]: Retourne l'identifiant d'un attribut netCDF.
- #nlink(<netcdf:netcdf_inqAttName>)[netcdf.inqAttName]: Retourne le nom d'un attribut netCDF.
- #nlink(<netcdf:netcdf_inqDim>)[netcdf.inqDim]: Retourne le nom et la longueur d'une dimension netCDF.
- #nlink(<netcdf:netcdf_inqDimID>)[netcdf.inqDimID]: Retourne l'identifiant d'une dimension netCDF.
- #nlink(<netcdf:netcdf_inqDimIDs>)[netcdf.inqDimIDs]: Retourne les identifiants des dimensions d'un groupe.
- #nlink(<netcdf:netcdf_inqFormat>)[netcdf.inqFormat]: Determine le format d'un fichier netCDF.
- #nlink(<netcdf:netcdf_inqGrpName>)[netcdf.inqGrpName]: Retourne le nom d'un groupe netCDF.
- #nlink(<netcdf:netcdf_inqGrpNameFull>)[netcdf.inqGrpNameFull]: Retourne le chemin complet d'un groupe netCDF.
- #nlink(<netcdf:netcdf_inqGrpParent>)[netcdf.inqGrpParent]: Retourne l'identifiant du groupe parent.
- #nlink(<netcdf:netcdf_inqGrps>)[netcdf.inqGrps]: Retourne les identifiants des groupes enfants.
- #nlink(<netcdf:netcdf_inqLibVers>)[netcdf.inqLibVers]: Retourne les informations de version de la bibliotheque netCDF.
- #nlink(<netcdf:netcdf_inqNcid>)[netcdf.inqNcid]: Retourne l'identifiant d'un groupe netCDF.
- #nlink(<netcdf:netcdf_inqUnlimDims>)[netcdf.inqUnlimDims]: Retourne les dimensions illimitees visibles dans un groupe.
- #nlink(<netcdf:netcdf_inqUserType>)[netcdf.inqUserType]: Retourne les informations d'un type utilisateur netCDF.
- #nlink(<netcdf:netcdf_inqVar>)[netcdf.inqVar]: Retourne les informations d'une variable netCDF.
- #nlink(<netcdf:netcdf_inqVarChunking>)[netcdf.inqVarChunking]: Retourne le decoupage en blocs d'une variable netCDF.
- #nlink(<netcdf:netcdf_inqVarDeflate>)[netcdf.inqVarDeflate]: Retourne les reglages de compression d'une variable netCDF.
- #nlink(<netcdf:netcdf_inqVarFill>)[netcdf.inqVarFill]: Retourne la valeur de remplissage d'une variable netCDF.
- #nlink(<netcdf:netcdf_inqVarFletcher32>)[netcdf.inqVarFletcher32]: Retourne le controle Fletcher32 d'une variable netCDF.
- #nlink(<netcdf:netcdf_inqVarID>)[netcdf.inqVarID]: Retourne l'identifiant associe a un nom de variable.
- #nlink(<netcdf:netcdf_inqVarIDs>)[netcdf.inqVarIDs]: Retourne les identifiants des variables d'un groupe.
- #nlink(<netcdf:netcdf_inqVlen>)[netcdf.inqVlen]: Retourne les informations d'un type netCDF a longueur variable.
- #nlink(<netcdf:netcdf_open>)[netcdf.open]: Ouvre une source de donnees netCDF.
- #nlink(<netcdf:netcdf_putAtt>)[netcdf.putAtt]: Ecrit un attribut netCDF.
- #nlink(<netcdf:netcdf_putVar>)[netcdf.putVar]: Ecrit des donnees dans une variable netCDF.
- #nlink(<netcdf:netcdf_reDef>)[netcdf.reDef]: Place un fichier netCDF ouvert en mode definition.
- #nlink(<netcdf:netcdf_renameAtt>)[netcdf.renameAtt]: Renomme un attribut netCDF.
- #nlink(<netcdf:netcdf_renameDim>)[netcdf.renameDim]: Renomme une dimension netCDF.
- #nlink(<netcdf:netcdf_renameVar>)[netcdf.renameVar]: Renomme une variable netCDF.
- #nlink(<netcdf:netcdf_setChunkCache>)[netcdf.setChunkCache]: Definit les reglages par defaut du cache de blocs netCDF.
- #nlink(<netcdf:netcdf_setDefaultFormat>)[netcdf.setDefaultFormat]: Change le format netCDF par defaut.
- #nlink(<netcdf:netcdf_setFill>)[netcdf.setFill]: Definit le mode de remplissage netCDF.
- #nlink(<netcdf:netcdf_sync>)[netcdf.sync]: Synchronise un fichier netCDF sur le disque.


#nested[
#pagebreak(weak: true)
#include "nccreate.typ"
#pagebreak(weak: true)
#include "ncdisp.typ"
#pagebreak(weak: true)
#include "ncinfo.typ"
#pagebreak(weak: true)
#include "ncread.typ"
#pagebreak(weak: true)
#include "ncreadatt.typ"
#pagebreak(weak: true)
#include "ncwrite.typ"
#pagebreak(weak: true)
#include "ncwriteatt.typ"
#pagebreak(weak: true)
#include "ncwriteschema.typ"
#pagebreak(weak: true)
#include "netcdf.typ"
#pagebreak(weak: true)
#include "netcdf_abort.typ"
#pagebreak(weak: true)
#include "netcdf_close.typ"
#pagebreak(weak: true)
#include "netcdf_copyAtt.typ"
#pagebreak(weak: true)
#include "netcdf_create.typ"
#pagebreak(weak: true)
#include "netcdf_defDim.typ"
#pagebreak(weak: true)
#include "netcdf_defGrp.typ"
#pagebreak(weak: true)
#include "netcdf_defVar.typ"
#pagebreak(weak: true)
#include "netcdf_defVarChunking.typ"
#pagebreak(weak: true)
#include "netcdf_defVarDeflate.typ"
#pagebreak(weak: true)
#include "netcdf_defVarFill.typ"
#pagebreak(weak: true)
#include "netcdf_defVarFletcher32.typ"
#pagebreak(weak: true)
#include "netcdf_defVlen.typ"
#pagebreak(weak: true)
#include "netcdf_delAtt.typ"
#pagebreak(weak: true)
#include "netcdf_endDef.typ"
#pagebreak(weak: true)
#include "netcdf_getAtt.typ"
#pagebreak(weak: true)
#include "netcdf_getChunkCache.typ"
#pagebreak(weak: true)
#include "netcdf_getConstant.typ"
#pagebreak(weak: true)
#include "netcdf_getConstantNames.typ"
#pagebreak(weak: true)
#include "netcdf_getVar.typ"
#pagebreak(weak: true)
#include "netcdf_inq.typ"
#pagebreak(weak: true)
#include "netcdf_inqAtt.typ"
#pagebreak(weak: true)
#include "netcdf_inqAttID.typ"
#pagebreak(weak: true)
#include "netcdf_inqAttName.typ"
#pagebreak(weak: true)
#include "netcdf_inqDim.typ"
#pagebreak(weak: true)
#include "netcdf_inqDimID.typ"
#pagebreak(weak: true)
#include "netcdf_inqDimIDs.typ"
#pagebreak(weak: true)
#include "netcdf_inqFormat.typ"
#pagebreak(weak: true)
#include "netcdf_inqGrpName.typ"
#pagebreak(weak: true)
#include "netcdf_inqGrpNameFull.typ"
#pagebreak(weak: true)
#include "netcdf_inqGrpParent.typ"
#pagebreak(weak: true)
#include "netcdf_inqGrps.typ"
#pagebreak(weak: true)
#include "netcdf_inqLibVers.typ"
#pagebreak(weak: true)
#include "netcdf_inqNcid.typ"
#pagebreak(weak: true)
#include "netcdf_inqUnlimDims.typ"
#pagebreak(weak: true)
#include "netcdf_inqUserType.typ"
#pagebreak(weak: true)
#include "netcdf_inqVar.typ"
#pagebreak(weak: true)
#include "netcdf_inqVarChunking.typ"
#pagebreak(weak: true)
#include "netcdf_inqVarDeflate.typ"
#pagebreak(weak: true)
#include "netcdf_inqVarFill.typ"
#pagebreak(weak: true)
#include "netcdf_inqVarFletcher32.typ"
#pagebreak(weak: true)
#include "netcdf_inqVarID.typ"
#pagebreak(weak: true)
#include "netcdf_inqVarIDs.typ"
#pagebreak(weak: true)
#include "netcdf_inqVlen.typ"
#pagebreak(weak: true)
#include "netcdf_open.typ"
#pagebreak(weak: true)
#include "netcdf_putAtt.typ"
#pagebreak(weak: true)
#include "netcdf_putVar.typ"
#pagebreak(weak: true)
#include "netcdf_reDef.typ"
#pagebreak(weak: true)
#include "netcdf_renameAtt.typ"
#pagebreak(weak: true)
#include "netcdf_renameDim.typ"
#pagebreak(weak: true)
#include "netcdf_renameVar.typ"
#pagebreak(weak: true)
#include "netcdf_setChunkCache.typ"
#pagebreak(weak: true)
#include "netcdf_setDefaultFormat.typ"
#pagebreak(weak: true)
#include "netcdf_setFill.typ"
#pagebreak(weak: true)
#include "netcdf_sync.typ"
]
