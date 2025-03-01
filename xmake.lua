add_rules("mode.debug", "mode.release")

set_languages("c++23")

add_repositories("SkyrimScripting https://github.com/SkyrimScripting/Packages.git")
add_repositories("SkyrimScriptingBeta https://github.com/SkyrimScriptingBeta/Packages.git")

-- Requires the example static library
add_requires("skyrim-commonlib-ae")
add_requires("example_static_library", { configs = { commonlib = "skyrim-commonlib-ae" } })

mod_info = {
    name = "Test using example static library",
    version = "0.0.1",
    author = "Mrowr Purr",
    email = "mrowr.purr@gmail.com",
    mod_files = {"Scripts"}
}

skyrim_versions = {"ae"}

includes("skse.lua")
-- includes("papyrus.lua")
