#import "nelson_help.typ": *

= ipc <ipc:ipc>

Inter process communicator.

== Syntax

- #raw("O = ipc(pid, 'eval', cmd)");
- #raw("B = ipc(pid, 'isvar', name, scope)");
- #raw("V = ipc(pid, 'get', name)");
- #raw("V = ipc(pid, 'get', name, scope)");
- #raw("TF = ipc(pid, 'minimize')");
- #raw("ipc(pid, 'post', cmd)");
- #raw("ipc(pid, 'post', cmd, scope)");
- #raw("ipc(pid, 'put', var, name)");
- #raw("ipc(pid, 'put', var, name, scope)");
- #raw("ipc(pid, 'minimize', tf)");

== Input argument

/ 'post': a string: post a command to evaluate to another nelson's process in base scope (not blocking).
/ 'eval': a string: post a command to evaluate to another nelson's process in base scope (blocking).
/ 'isvar': a string: check if a variable exists into another nelson's process.
/ 'put': a string: send a variable into another nelson's process.
/ 'get': a string: get a variable from another nelson's process.
/ 'minimize': a string: minimize main window from another nelson's process.

== Output argument

/ B: a logical: true if variable exists.
/ V: a variable from another nelson.
/ TF: a logical: true if destination process is minimized.
/ O: a character array: output of evaluate string.

== Description

#strong[ipc]; allows to execute, get, put variables between multiple nelson's process.

 All serializable nelson's types are supported. Unsupported types will be replaced by an empty matrix and a warning.

 LIMITATION:

 The limit for the size of data transferred is 5000x5000 double. On 32 bits architecture, 1024x1024 double.

 Current limitation to limit memory usage.


== Examples

``````matlab
master_pid = getpid()
initial_pids = getpid('available')

% Creates 4 nelsons process
N = 4;
for i = 1:N
    cmd = sprintf('nelson-gui -e MASTER_PID=%d &', i);
    unix(cmd);
    sleep(5)
end
current_pids = getpid('available')

% wait clients ready
for p = current_pids
    if p ~= master_pid
        while(~ipc(p, 'isvar', 'MASTER_PID')), sleep(1), end
    end
end

% Creates random matrix in others Nelson
n = 0;
for p = current_pids
    if p ~= master_pid
        cmd = sprintf('rng(%d);M = rand(10, 10); disp(M)', n);
        ipc(p, 'post', cmd);
        n = n + 1;
    end
end

% Creates a matrix with matrix from others Nelson
C = [];
for p = current_pids
    if p ~= master_pid
        R = ipc(p, 'get', 'M');
        C = [C; R]
        n = n + 1;
    end
end

% close all clients
for p = current_pids
    if p ~= master_pid
        ipc(p, 'post', 'exit')
    end
end
``````

``````matlab
ipc(getpid(), 'eval', 'dir')
``````

``````matlab
ipc(getpid(), 'minimize', true)
ipc(getpid(), 'minimize')
``````


== See also

#nlink(<ipc:getpid>)[getpid];, #nlink(<os_functions:unix>)[unix];, #nlink(<core:eval>)[eval];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
