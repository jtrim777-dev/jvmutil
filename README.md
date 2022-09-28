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

### Filters
The `switch` and `find` commands both have a "filter" as their primary
argument, and the `list` command accepts a filter passed to the `-f` flag.
Filters operate over the 'tag' field of a JVM, and have one of the following
formats:
- `VERSION`: A semantic version number or subpart thereof, like `1.8` or `11`.
  Matches all JDKs with a version starting with the one provided.
- `NAME`: Any other non-version text. Matches some part of the name of the
  JDK, like `corretto` or `openjdk`.
- `NAME:VERSION`: Match both the name and the version. e.g. `corretto:11`.
- `NAME:VERSION:ARCH`: Match the name, version, and platform architecture. e.g.
  `corretto:11:arm64`. Note that either `NAME` or `VERSION` can be blank to
  represent "Any name" or "Any version", e.g. `:1.8:arm64`.

### Output Format
The `find`, `list`, and `active` commands all output tables with several
points of data for every JDK they find by default. The standard set of fields is
`tag,name,version,arch,provider,path`. By providing a comma-separated list 
of field names to the `--fields` flag you can limit or re-order this output.
Additionally, the `--display` flag can accept one of `table` (the default),
`json`, or `raw` to change the format of the output.

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
