#import "nelson_help.typ": *

= nmm\_gui <nmm_gui:nmm_gui>

Open the package manager window.

== Syntax

- #raw("nmm_gui()");
- #raw("nmm_gui(action, package_name)");
- #raw("nmm_gui(action, package_name, version)");

== Description

#strong[nmm\_gui]; opens the Nelson package manager window, a graphical front-end for #strong[nmm];. Calling it again brings the existing window to the foreground and refreshes it. The window is available from the desktop (Tools menu, toolbar and panel rail) and from the advanced command line. In the web desktop, #strong[nmm\_gui]; shows the package manager as a docked #strong[Package Manager]; panel next to the Command Window (Tools \> Package Manager opens the same panel), so a single browser window is enough.

 The left list shows every package known to Nelson: installed packages and the packages published by the configured registry (see #strong[NELSON\_NMM\_REGISTRY]; in #strong[nmm];). The #strong[All];, #strong[Installed]; and #strong[Updates]; filters and the search field narrow the list; the panel on the right shows the selected package: summary, metadata, keywords, homepage and the actions that apply.

 #strong[Install];, #strong[Update]; and #strong[Remove]; run the corresponding #strong[nmm]; command in the Nelson console, so their output stays visible there. While a command runs, the window shows its progress step by step (fetch, dependencies, build, package tests when enabled, register) and refreshes the list when it completes. Operations typed in the console are followed the same way.

 Package tests are not run at install time unless requested (see #strong[nmm];): the hint next to the install button tells whether a package is built from source or installed from a prebuilt archive.

 #strong[nmm\_gui(action, package\_name)]; opens or focuses the window on a given package. #strong[action]; is #strong['show']; to select the package, or #strong['install']; to select it and start its installation. An optional #strong[version]; selects which version to install. The arguments are checked before the window is opened.

 For a package that is not installed, a #strong[Version]; list picks the version to install. An installed package can also be loaded or unloaded for the session, and pinned to its version (#strong[Pin];, #strong[Unpin];). In the #strong[Updates]; filter, #strong[Update all]; updates every package that has a newer version. #strong[Install from file or URL]; installs a local #strong[.nmz]; archive, a module folder or a git URL.

 The detail panel also shows the dependency tree (installed, to install or missing dependencies), the installed packages that require the selected one, its readme and changelog, and its repository, issues and documentation links. #strong[Copy install command]; copies the matching #strong[nmm('install', ...)]; call, with the version shown, for a package published by the registry. #strong[Verify]; checks an installed package (module folder, #strong[module.json];, version, dependencies).

 #strong[Cache]; lists the archives of the offline package cache, verifies them and removes them. #strong[Environment]; exports the installed packages as a list of #strong[name version]; lines, and installs the missing packages of such a list.

 #strong[Refresh]; reloads the installed packages and always downloads the current registry; selecting a package reuses the registry read by the last refresh. The window follows the Nelson language.

 The window requires the #strong[webview]; module. Without a configured registry, installed packages can still be listed and removed.


== Examples

Open or refresh the package manager window.

``````matlab
nmm_gui()
``````

Open the window on a package and install it.

``````matlab
nmm_gui('install', 'ngen')
``````


== See also

#nlink(<modules_manager:nmm>)[nmm];, #nlink(<webview:demo>)[demo];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
