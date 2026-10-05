# nmm\_gui

Open the package manager window.

## 📝 Syntax

- nmm\_gui()
- nmm\_gui(action, package\_name)
- nmm\_gui(action, package\_name, version)

## 📄 Description


<b>nmm\_gui</b> opens the Nelson package manager window, a graphical front-end for <b>nmm</b>. Calling it again brings the existing window to the foreground and refreshes it. The window is available from the desktop (Tools menu, toolbar and panel rail) and from the advanced command line. In the web desktop, <b>nmm\_gui</b> shows the package manager as a docked <b>Package Manager</b> panel next to the Command Window (Tools > Package Manager opens the same panel), so a single browser window is enough. 

The left list shows every package known to Nelson: installed packages and the packages published by the configured registry (see <b>NELSON\_NMM\_REGISTRY</b> in <b>nmm</b>). The <b>All</b>, <b>Installed</b> and <b>Updates</b> filters and the search field narrow the list; the panel on the right shows the selected package: summary, metadata, keywords, homepage and the actions that apply. 

<b>Install</b>, <b>Update</b> and <b>Remove</b> run the corresponding <b>nmm</b> command in the Nelson console, so their output stays visible there. While a command runs, the window shows its progress step by step (fetch, dependencies, build, package tests when enabled, register) and refreshes the list when it completes. Operations typed in the console are followed the same way. 

Package tests are not run at install time unless requested (see <b>nmm</b>): the hint next to the install button tells whether a package is built from source or installed from a prebuilt archive. 

<b>nmm\_gui(action, package\_name)</b> opens or focuses the window on a given package. <b>action</b> is <b>'show'</b> to select the package, or <b>'install'</b> to select it and start its installation. An optional <b>version</b> selects which version to install. The arguments are checked before the window is opened. 

For a package that is not installed, a <b>Version</b> list picks the version to install. An installed package can also be loaded or unloaded for the session, and pinned to its version (<b>Pin</b>, <b>Unpin</b>). In the <b>Updates</b> filter, <b>Update all</b> updates every package that has a newer version. <b>Install from file or URL</b> installs a local <b>.nmz</b> archive, a module folder or a git URL. 

The detail panel also shows the dependency tree (installed, to install or missing dependencies), the installed packages that require the selected one, its readme and changelog, and its repository, issues and documentation links. <b>Copy install command</b> copies the matching <b>nmm('install', ...)</b> call, with the version shown, for a package published by the registry. <b>Verify</b> checks an installed package (module folder, <b>module.json</b>, version, dependencies). 

<b>Cache</b> lists the archives of the offline package cache, verifies them and removes them. <b>Environment</b> exports the installed packages as a list of <b>name version</b> lines, and installs the missing packages of such a list. 

<b>Refresh</b> reloads the installed packages and always downloads the current registry; selecting a package reuses the registry read by the last refresh. The window follows the Nelson language. 

The window requires the <b>webview</b> module. Without a configured registry, installed packages can still be listed and removed.

## 💡 Examples

Open or refresh the package manager window.

```matlab
nmm_gui()
```
Open the window on a package and install it.

```matlab
nmm_gui('install', 'ngen')
```


## 🔗 See also

[nmm](../modules_manager/nmm.md), [demo](../webview/demo.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
