

# ipc

Inter process communicator.

## Syntax

- ipc(pid, 'eval', cmd)
- B = ipc(pid, 'isvar', name, scope)
- V = ipc(pid, 'get', name)
- V = ipc(pid, 'get', name, scope)
- ipc(pid, 'put', var, name)
- ipc(pid, 'put', var, name , scope)

## Input argument

 - 'eval' - a string: a command to evaluate to another nelson's process.
 - 'isvar' - a string: check if a variable exists into another nelson's process.
 - 'put' - a string: send a variable into another nelson's process.
 - 'get' - a string: get a variable from another nelson's process.

## Output argument

 - B - a logical: true if variable exists.
 - V - a variable from another nelson.

## Description


  <p><b>ipc</b> allows to execute, get, put variables between multiple nelson's process.</p>
  <p>All serializable nelson's types are supported. Unsupported types will be replaced by an empty matrix and a warning.</p>
  <p>LIMITATION:</p>
  <p>The limit for the size of data transferred is 5000x5000 double. On 32 bits architecture, 1024x1024 double.</p>
  <p>Current limitation to limit memory usage.</p>


## Example

```matlab
master_pid = getpid()
initial_pids = getpid('available')

// Creates 4 nelsons process
N = 4;
for i = 1:N
    cmd = sprintf('nelson-gui -e MASTER_PID=%d &', i);
    unix(cmd);
    sleep(5)
end
current_pids = getpid('available')

// wait clients ready
for p = current_pids
    if p ~= master_pid
        while(~ipc(p, 'isvar', 'MASTER_PID')), sleep(1), end
    end
end

// Creates random matrix in others Nelson
n = 0;
for p = current_pids
    if p ~= master_pid
        cmd = sprintf('rng(%d);M = rand(10, 10); disp(M)', n);
        ipc(p, 'eval', cmd);
        n = n + 1;
    end
end

// Creates a matrix with matrix from others Nelson
C = [];
for p = current_pids
    if p ~= master_pid
        R = ipc(p, 'get', 'M');
        C = [C; R]
        n = n + 1;
    end
end

// close all clients
for p = current_pids
    if p ~= master_pid
        ipc(p, 'eval', 'exit')
    end
end
```

## See also

[getpid](getpid.md), [unix](unix.html).
## History

|Version|Description|
|------|------|
|1.0.0|initial version|


## Author

Allan CORNET



