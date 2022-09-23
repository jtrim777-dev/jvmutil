# jvmutil

A utility for viewing and managing the currently installed and active JVMs on macOS

```
usage: jvmutil [-h] [-q] [-y] {list,active,find,switch} ...

A utility for viewing and managing the currently installed and active JVMs on macOS

options:
  -h, --help            show this help message and exit
  -q, --quiet           Reduce informational messages
  -y, --force-first     Always choose the first option

subcommands:
  The action to perform

  {list,active,find,switch}
    list                List the available JVMS
    active              Get the currently selected JVM
    find                Get info about an installed JVM
    switch              Change the active JVM
```
