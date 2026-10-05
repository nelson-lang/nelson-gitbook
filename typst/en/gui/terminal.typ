#import "nelson_help.typ": *

= terminal <gui:terminal>

Shell terminal in GUI mode

== Syntax

- #raw("t = terminal()");
- #raw("t = terminal('Name', 'Build')");
- #raw("t = terminal('WindowStyle', 'normal')");
- #raw("t = terminal('Shell', 'powershell.exe')");
- #raw("t = terminal('Theme', 'dark')");
- #raw("t = terminal('StartupCommand', 'git status')");

== Input argument

/ Name: a string: terminal title. The default title is Terminal.
/ WindowStyle: a string: docked creates a terminal docked in the main Nelson window, and normal creates a floating terminal window. The default value is docked.
/ Shell: a string: shell executable to start. If empty, Nelson uses the platform default shell: %COMSPEC% with cmd.exe fallback on Windows, and \$SHELL with \/bin\/sh fallback on Linux and macOS.
/ Theme: a string: terminal color theme. Supported values are auto, light, and dark. The default value is auto.
/ StartupCommand: a string: command sent to the shell after it starts. The default value is an empty string.

== Output argument

/ t: a terminal handle object.

== Description

#raw("terminal"); opens a shell process in the Nelson GUI and returns a handle object.

 The terminal object supports #raw("Name");, #raw("Shell");, #raw("Place");, #raw("WindowStyle");, #raw("Running");, #raw("ExitCode");, #raw("ProcessId");, and #raw("Theme"); properties.

 Constructor options:

 

#table(
  columns: 4,
  [Option], [Values], [Default], [Description], 
  [Name], [string scalar or character vector], [Terminal], [Terminal title. This property can be changed after creation.], 
  [WindowStyle], [docked, normal], [docked], [docked creates a terminal docked in the main Nelson window. normal creates a floating terminal window.], 
  [Shell], [shell executable], [platform default], [If empty, Nelson uses %COMSPEC% with cmd.exe fallback on Windows, and \$SHELL with \/bin\/sh fallback on Linux and macOS.], 
  [Theme], [auto, light, dark], [auto], [Terminal color theme. This property can be changed after creation.], 
  [StartupCommand], [string scalar or character vector], [empty string], [Command sent to the shell after it starts.], 
)
 The #raw("Name"); and #raw("Theme"); properties can be changed after creation. The other terminal state properties are read-only.

 The #raw("Place"); property returns #raw("nelson"); in this release.


== Examples

``````matlab

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

``````

``````matlab

terminal.closeAll();
dockedTerminal = terminal('Name', 'Docked terminal', ...
  'WindowStyle', 'docked');
floatingTerminal = terminal('Name', 'Floating terminal', ...
  'WindowStyle', 'normal');
dockedTerminal.WindowStyle
floatingTerminal.WindowStyle
delete(dockedTerminal);
delete(floatingTerminal);

``````

``````matlab

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

``````

``````matlab

terminal.closeAll();
t1 = terminal('Name', 'First terminal');
t2 = terminal('Name', 'Second terminal');
items = terminal.list()
terminal.version()
terminal.themes()
terminal.closeAll();

``````


== See also

#nlink(<gui:commandhistory>)[commandhistory];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
