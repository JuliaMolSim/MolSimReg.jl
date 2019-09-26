module LibAtomsReg

import Registrator

const _registered_modules =
   [
      "JuLIP",
      "SHIPs",
      "SKTB",
      "JuLIPMaterials",
      "NBodyIPs",
      "IPFitting",
      "LibAtomsReg",
      "PolyPairPots"
   ]

regpath() = joinpath(homedir(), ".julia", "registries", "LibAtoms")

"""
register the module `M` in the `LibAtoms` registry
"""
function register(M::Module; force = false, push = false)
   if !(string(M) in _registered_modules) && !force
      error("The module $(string(M)) appears not to be registered yet.")
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
