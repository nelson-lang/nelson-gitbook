# compiler_macos_installer_tutorial

Build and package a native macOS application.

## 📝 Syntax

- compiler.package.installer(result, 'Options', options)

## 📄 Description

This tutorial runs on macOS with the Apple command-line developer tools installed. It builds a graphical application, creates a native product .pkg containing its private minimal runtime, and verifies the package payload. Execute the blocks in one Nelson session.

Open the generated .pkg with Finder for a normal installation. The default target is /Applications/MacGraphDemo and may request administrator authorization. For automated testing, set DefaultInstallationDir to an isolated absolute path and invoke /usr/sbin/installer with an appropriate target.

The installed graphical application is a .app bundle. Its private runtime contains the selected dylibs, framework bundles, Qt platform/image/icon plugins and Nelson resources. The application does not need its .m sources or the compiler module at runtime.

The package produced here is unsigned. Local ad-hoc signatures applied to rewritten binaries do not replace a Developer ID Application or Developer ID Installer signature. Distribution outside the local machine requires the appropriate Apple signing and notarization workflow; this tutorial does not claim Gatekeeper validation.

Use RuntimeDelivery='none' when a compatible runtime is installed separately. compiler.runtime.customInstaller creates its native shared-runtime .pkg. Automatic web delivery is unavailable.

## 💡 Examples

Build the application

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

Create and inspect the package

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
  error('The macOS application bundle is missing from the package.');
end
disp(package);
```

Create the shared runtime package

```matlab
compiler.runtime.customInstaller('Mac Graph Runtime', result, ...
  'RuntimeDelivery', 'installer', ...
  'OutputDir', fullfile(work, 'runtime distribution'));
runtimePackage = fullfile(work, 'runtime distribution', 'Mac Graph Runtime.pkg');
asserts.istrue(isfile(runtimePackage));
```

## 🔗 See also

[compiler.build.standaloneApplication](../compiler/compiler.build.standaloneApplication.md), [compiler.package.installer](../compiler/compiler.package.installer.md), [compiler.runtime.customInstaller](../compiler/compiler.runtime.customInstaller.md).

<!--
## 👤 Author

Allan CORNET
-->
