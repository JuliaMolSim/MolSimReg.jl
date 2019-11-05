module MolSimReg

import Registrator

const _registered_modules =
   [
      "JuLIP",
      "SHIPs",
      "SKTB",
      "JuLIPMaterials",
      "NBodyIPs",
      "IPFitting",
      "MolSimReg",
      "PolyPairPots",
      "Isaac"
   ]

regpath() = joinpath(homedir(), ".julia", "registries", "MolSim")

"""
register the module `M` in the `MolSim` registry
```
register(M::Module; force = false, push = false)
```
"""
function register(M::Module; force = false, push = false)
   if !(string(M) in _registered_modules) && !force
      error("The module $(string(M)) appears not to be registered yet. Use `force = true`")
   end
   Registrator.register(M, regpath())
   if push
      push!()
   end
end

"""
push the registry to the remote git repository
"""
function push!()
   error("push! is not yet working")
   run(`cd $(regpath())`)
   run(`git push`)
   run(`cd -`)
end

end # module
