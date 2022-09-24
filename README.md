# jvmutil

A utility for viewing and managing the currently installed and active JVMs on macOS

## Usage
```
jvmutil [-h] [-q] [-y] {list,active,find,switch,relink} ...

A utility for viewing and managing the currently installed and active JVMs on macOS

options:
  -h, --help            show this help message and exit
  -q, --quiet           Reduce informational messages
  -y, --force-first     Always choose the first option

subcommands:
  The action to perform

  {list,active,find,switch,relink}
    list                List the available JVMS
    active              Get the currently selected JVM
    find                Get info about an installed JVM
    switch              Change the active JVM
    relink              Setup the symlink which controls JVM finding
```

## Installation

Using Homebrew:
```
brew tap jtrim77-dev/tap
brew install jvmutil
```

This package creates a symlink to the active JVM at: `$BREW/etc/jvmutil/javahome`,
where `$BREW` is the path to your Homebrew installation.

In order to have your system recognize this path, in your shell
profile you MUST set JAVA_HOME to `"$BREW/etc/jvmutil/javahome"`
