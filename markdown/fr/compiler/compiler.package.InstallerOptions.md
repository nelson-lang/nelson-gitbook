# compiler.package.InstallerOptions

Configurer la generation d'un installateur d'application.

## 📝 Syntaxe

- options = compiler.package.InstallerOptions(results)
- options = compiler.package.InstallerOptions(results, Name, Value, ...)
- options = compiler.package.InstallerOptions('ApplicationName', name, ...)

## 📄 Description

Cet objet valeur decrit l'installateur, pas la construction de l'application. Le construire depuis un objet compiler.build.Results scalaire ou un ApplicationName explicite. Affecter les proprietes avec la notation pointee, puis le transmettre via Options a compiler.package.installer. Les proprietes invalides ou inconnues provoquent une erreur.

ApplicationName : nom affiche de l'application installee et composant du dossier par defaut. InstallerName : nom de fichier sans extension, MyAppInstaller par defaut. Les espaces sont acceptes ; les separateurs, noms de peripheriques reserves et points ou espaces finaux sont refuses.

OutputDir : dossier de sortie, ApplicationName suivi de installer par defaut. Les chemins de construction relatifs sont ancres lors de leur affectation. DefaultInstallationDir : chemin cible absolu, %ProgramFiles%/ApplicationName sous Windows, /Applications/ApplicationName sous macOS ou /usr/ApplicationName sous Linux. Sous macOS, cette valeur devient l'emplacement d'installation du paquet natif.

RuntimeDelivery : web (par defaut, indisponible), installer (runtime hors ligne selectionne par les dependances) ou none (runtime externe). OptionalDependencies : all (par defaut) ou none. Les rapports actuels n'ont aucun fichier optionnel : les deux choix conservent les memes fichiers requis. Aucun module obligatoire n'est retire.

AdditionalFiles : fichiers ou dossiers recursifs a installer pres de l'executable, distincts des ressources embarquees. Shortcut : fichier ou dossier inclus pour un raccourci du menu Demarrer Windows ou un lien symbolique relatif Linux nomme Launch ApplicationName ; sous macOS, il doit etre vide ou designer l'executable car l'application graphique est representee par son bundle .app. Une construction depuis Results selectionne son executable par defaut. La cible doit figurer dans l'inventaire d'installation.

AuthorName, AuthorCompany, AuthorEmail, Summary, Description et InstallationNotes : informations presentes dans nelson-installation.txt. Windows les affiche aussi avant installation et renseigne la societe et le resume dans les metadonnees natives. Description et InstallationNotes acceptent plusieurs lignes ; les autres champs refusent les caracteres de controle.

Version : version de l'application installee, 1.0 par defaut, avec un a quatre entiers entre 0 et 65535. Cette propriete ne reecrit pas la version de l'executable deja construit. PackageType : auto (par defaut) ou zip (Windows uniquement). Verbose : false par defaut ; accepte aussi on/off et les valeurs logiques ou numeriques zero/un. Compression : normal (par defaut), fast, max ou none. Elle regle la compression de la charge utile de l'installateur Windows, compromis entre taille et temps de generation ; les autres plateformes l'ignorent.

InstallerIcon : image utilisee par l'installateur et le desinstallateur natifs, ainsi que par le raccourci installe dans le menu Demarrer. AddRemoveProgramsIcon : image distincte pour la liste des applications installees de Windows. Ces options ne reecrivent pas l'executable applicatif ; utiliser l'option de construction ExecutableIcon pour cela.

InstallerLogo : image ajustee dans un canevas blanc de 112 par 290 pixels en conservant ses proportions. Elle apparait sur les pages d'accueil et de fin de l'installateur natif. La transparence est composee sur fond blanc. Le moteur d'installation applique son adaptation habituelle a l'affichage.

Ces trois proprietes reservees a Windows sont vides par defaut et conservent alors les images du moteur d'installation. Elles acceptent un fichier JPG, JPEG, PNG, BMP ou GIF existant, indique par vecteur de caracteres ou chaine scalaire. Les chemins relatifs sont ancres lors de l'affectation ; les images decodees sont limitees a 16 megapixels. Les icones comprennent sept resolutions de 16 a 256 pixels avec transparence. La conversion intervient uniquement pendant le packaging et n'ajoute aucun module d'image au runtime applicatif.

Les icones personnalisees sont installees dans le dossier reserve nelson-installer-assets. Les entrees applicatives en conflit sont refusees. Les images sources ne sont plus necessaires apres la generation et les images converties preservent la reproductibilite de l'installateur. Les modes silencieux et portable restent disponibles ; le mode portable ne cree aucun raccourci global ni entree dans la liste des applications.

Sous Windows et Linux, l'argument d'installation -runtimeFolder permet de placer le runtime inclus dans un emplacement partage distinct. Il appartient a l'installateur genere, pas aux proprietes de cet objet. Un paquet applicatif macOS conserve son runtime inclus en prive ; utiliser compiler.runtime.customInstaller pour produire le paquet du runtime partage. Voir compiler.package.installer pour les contraintes de chemins, de propriete et de lanceur.

Creer des options ne lance aucune construction, installation ou telechargement.

## 🔗 Voir aussi

[compiler.package.installer](../compiler/compiler.package.installer.md), [compiler_installer_tutorial](../compiler/compiler_installer_tutorial.md).

<!--
## 👤 Auteur

Allan CORNET
-->
