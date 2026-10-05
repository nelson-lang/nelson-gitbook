# terminal

Terminal shell en mode GUI

## 📝 Syntaxe

- t = terminal()
- t = terminal('Name', 'Build')
- t = terminal('WindowStyle', 'normal')
- t = terminal('Shell', 'powershell.exe')
- t = terminal('Theme', 'dark')
- t = terminal('StartupCommand', 'git status')

## 📥 Argument d'entrée

- Name - une chaine : titre du terminal. Le titre par defaut est Terminal.
- WindowStyle - une chaine : docked cree un terminal ancre dans la fenetre principale Nelson, et normal cree une fenetre de terminal flottante. La valeur par defaut est docked.
- Shell - une chaine : executable shell a demarrer. Si la valeur est vide, Nelson utilise le shell par defaut de la plateforme : %COMSPEC% avec cmd.exe en secours sur Windows, et $SHELL avec /bin/sh en secours sur Linux et macOS.
- Theme - une chaine : theme de couleurs du terminal. Les valeurs prises en charge sont auto, light et dark. La valeur par defaut est auto.
- StartupCommand - une chaine : commande envoyee au shell apres son demarrage. La valeur par defaut est une chaine vide.

## 📤 Argument de sortie

- t - un objet handle de terminal.

## 📄 Description


<code>terminal</code> ouvre un processus shell dans la GUI Nelson et retourne un objet handle. 

L'objet terminal prend en charge les proprietes <code>Name</code>, <code>Shell</code>, <code>Place</code>, <code>WindowStyle</code>, <code>Running</code>, <code>ExitCode</code>, <code>ProcessId</code> et <code>Theme</code>. 

Options du constructeur : 

| Option | Valeurs | Defaut | Description | 
| --- | --- | --- | --- | 
| Name | scalaire string ou vecteur de caracteres | Terminal | Titre du terminal. Cette propriete peut etre modifiee apres la creation. | 
| WindowStyle | docked, normal | docked | docked cree un terminal ancre dans la fenetre principale Nelson. normal cree une fenetre de terminal flottante. | 
| Shell | executable shell | defaut de la plateforme | Si la valeur est vide, Nelson utilise %COMSPEC% avec cmd.exe en secours sur Windows, et $SHELL avec /bin/sh en secours sur Linux et macOS. | 
| Theme | auto, light, dark | auto | Theme de couleurs du terminal. Cette propriete peut etre modifiee apres la creation. | 
| StartupCommand | scalaire string ou vecteur de caracteres | chaine vide | Commande envoyee au shell apres son demarrage. | 

 

Les proprietes <code>Name</code> et <code>Theme</code> peuvent etre modifiees apres la creation. Les autres proprietes d'etat du terminal sont en lecture seule. 

La propriete <code>Place</code> retourne <code>nelson</code> dans cette version.

## 💡 Exemples



```matlab

terminal.closeAll();
t = terminal();
t.run('echo NELSON_TERMINAL_EXAMPLE');
pause(1);
txt = t.read()
t.Place
t.Shell
t.WindowStyle
t.Running
t.ProcessId
delete(t);

```


```matlab

terminal.closeAll();
dockedTerminal = terminal('Name', 'Docked terminal', ...
  'WindowStyle', 'docked');
floatingTerminal = terminal('Name', 'Floating terminal', ...
  'WindowStyle', 'normal');
dockedTerminal.WindowStyle
floatingTerminal.WindowStyle
delete(dockedTerminal);
delete(floatingTerminal);

```


```matlab

terminal.closeAll();
probe = terminal();
defaultShell = probe.Shell;
delete(probe);
t = terminal('Name', 'Build terminal', ...
  'WindowStyle', 'normal', ...
  'Shell', defaultShell, ...
  'Theme', 'dark', ...
  'StartupCommand', 'echo NELSON_TERMINAL_STARTUP');
pause(1);
t.Name = 'Renamed terminal';
t.Theme = 'light';
txt = t.read()
delete(t);

```


```matlab

terminal.closeAll();
t1 = terminal('Name', 'First terminal');
t2 = terminal('Name', 'Second terminal');
items = terminal.list()
terminal.version()
terminal.themes()
terminal.closeAll();

```


## 🔗 Voir aussi

[commandhistory](../gui/commandhistory.md).

## 🕔 Historique

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | version initiale |

<!--
## 👤 Auteur

Allan CORNET
-->
