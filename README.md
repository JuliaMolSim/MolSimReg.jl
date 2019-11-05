# MolSimReg.jl

Very rudimentary management utility for the [`MolSim` Julia registry](https://github.com/JuliaMolSim/MolSim).

## Usage

To add the package, first add the `MolSim` registry and then add the packge
```
]
registry add registry add https://github.com/JuliaMolSim/MolSim.git
add MolSimReg
```

To register a package that is already registered, use
```
using MolSimReg, MyPkg
MolSimReg.register(MyPkg)
```

To register a new package,
```
using MolSimReg, MyPkg
MolSimReg.register(MyPkg; force=true)
```

Please read the instructions at [`MolSim` Julia registry](https://github.com/JuliaMolSim/MolSim) on how to the details of the workflow, in particular versions.

## TODO

* Either parse the registry or remember the registered packages (that don't need to be forced) in a json file.
* implement automatic `git push`
* ... or even better, an automatic PR
