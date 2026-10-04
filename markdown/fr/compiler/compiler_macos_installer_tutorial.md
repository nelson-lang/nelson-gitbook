# compiler_macos_installer_tutorial

Construire et empaqueter une application macOS native.

## 📝 Syntaxe

- compiler.package.installer(result, 'Options', options)

## 📄 Description

Ce tutoriel s'execute sous macOS avec les outils Apple en ligne de commande installes. Il construit une application graphique, cree un .pkg produit natif contenant son runtime minimal prive et verifie le contenu du paquet. Executer les blocs dans une meme session Nelson.

Ouvrir le .pkg genere depuis Finder pour une installation normale. La cible par defaut est /Applications/MacGraphDemo et peut demander une autorisation administrateur. Pour un test automatise, choisir un DefaultInstallationDir absolu isole et appeler /usr/sbin/installer avec une cible appropriee.

L'application graphique installee est un bundle .app. Son runtime prive contient les dylib, bundles de frameworks, plugins Qt de plateforme, images et icones ainsi que les ressources Nelson selectionnes. L'application n'a besoin ni de ses sources .m ni du module compiler a l'execution.

Le paquet produit ici n'est pas signe. Les signatures ad hoc locales des binaires reecrits ne remplacent pas une signature Developer ID Application ou Developer ID Installer. Une distribution hors de la machine locale requiert le processus Apple de signature et notarisation adapte ; ce tutoriel ne revendique pas une validation Gatekeeper.

Utiliser RuntimeDelivery='none' lorsqu'un runtime compatible est installe separement. compiler.runtime.customInstaller cree son .pkg de runtime partage natif. Le telechargement web automatique est indisponible.

## 💡 Exemples

Construire l'application

```matlab
ncc('--help');
previousUserPath = userpath();
restoreUserPath = onCleanup(@() userpath(previousUserPath));
userpath('clear');
work = fullfile(nelsonroot(), 'temp', 'compiler macOS tutorial');
if ~isfolder(work); mkdir(work); end
entry = fullfile(work, 'mac_graph_demo.m');
filewrite(entry,[ ...
'function mac_graph_demo()', newline(), ...
'f = figure(''Name'',''Packaged Nelson graph'',''NumberTitle'',''off'');', newline(), ...
'ax = axes(''Parent'',f); x = 0:0.1:2*pi;', newline(), ...
'line(''Parent'',ax,''XData'',x,''YData'',sin(x));', newline(), ...
'uicontrol(f,''Style'',''pushbutton'',''String'',''Close'',''Callback'',{@close_demo,f});', newline(), ...
'end', newline(), ...
'function close_demo(source,event,f); delete(f); end', newline()]);
result = compiler.build.standaloneApplication(entry, ...
  'OutputDir', fullfile(work, 'build'));
```

Creer et inspecter le paquet

```matlab
options = compiler.package.InstallerOptions(result, ...
  'ApplicationName', 'Mac Graph Demo', ...
  'InstallerName', 'Mac Graph Demo', ...
  'DefaultInstallationDir', '/Applications/MacGraphDemo', ...
  'RuntimeDelivery', 'installer', ...
  'OutputDir', fullfile(work, 'distribution'));
compiler.package.installer(result, 'Options', options);
package = fullfile(options.OutputDir, 'Mac Graph Demo.pkg');
[status, listing] = system(['/usr/sbin/pkgutil --payload-files "', package, '"']);
if status ~= 0 || ~contains(listing, '.app/Contents/MacOS')
  error('Le bundle applicatif macOS manque dans le paquet.');
end
disp(package);
```

Creer le paquet du runtime partage

```matlab
compiler.runtime.customInstaller('Mac Graph Runtime', result, ...
  'RuntimeDelivery', 'installer', ...
  'OutputDir', fullfile(work, 'runtime distribution'));
runtimePackage = fullfile(work, 'runtime distribution', 'Mac Graph Runtime.pkg');
asserts.istrue(isfile(runtimePackage));
```

## 🔗 Voir aussi

[compiler.build.standaloneApplication](../compiler/compiler.build.standaloneApplication.md), [compiler.package.installer](../compiler/compiler.package.installer.md), [compiler.runtime.customInstaller](../compiler/compiler.runtime.customInstaller.md).

<!--
## 👤 Auteur

Allan CORNET
-->
