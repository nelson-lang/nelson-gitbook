# Stream manager

The Stream Manager module provides tools for managing input and output streams in Nelson.

It supports reading and writing text and binary data to files, handling file positions, detecting end-of-file conditions, and managing file errors.

The module also enables logging of session activity, and loading and saving workspace data, facilitating robust and flexible file I/O operations within scripts and applications.

## Functions

- [diary](diary.md) - Diary of a session.
- [fclose](fclose.md) - Close an opened file.
- [feof](feof.md) - Checks end of file.
- [ferror](ferror.md) - Test for i/o read/write errors.
- [fgetl](fgetl.md) - Read string from a file without newline.
- [fgets](fgets.md) - Read string from a file, stopping after a newline, or EOF, or n characters have been read.
- [fileread](fileread.md) - Read contents of file as text.
- [filewrite](filewrite.md) - Write text to a file.
- [fopen](fopen.md) - Open a file in Nelson.
- [fprintf](fprintf.md) - Writes data to a file.
- [fread](fread.md) - Read data in binary form to the file specified by the file descriptor fid.
- [frewind](frewind.md) - Set position of stream to the beginning.
- [fscanf](fscanf.md) - Reads data from a file.
- [fseek](fseek.md) - Set the file pointer to a location.
- [fsize](fsize.md) - Returns size of an opened file.
- [ftell](ftell.md) - Returns the offset of the current byte relative to the beginning of a file.
- [fwrite](fwrite.md) - Write data in binary form to the file specified by the file descriptor fid.
- [load](load.md) - load data from .nh5 or .mat file into Nelson's workspace.
- [save](save.md) - save workspace variables to .nh5 or .mat file
- [sscanf](sscanf.md) - Read formatted data from strings.
