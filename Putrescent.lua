--- Putrescent Mod
PUTR = SMODS.current_mod;
PUTR.debug = true;

if PUTR.debug then
    print("=-- ...");
    print("=-- Putrescent (Loading Sequence)");
end

--  Loading stuff
local function load_dir(subfolder)
    local mod_dir = PUTR.path;
    local dir_items = SMODS.NFS.getDirectoryItems(mod_dir .. subfolder);

    local loaded_items = {};
    for _, item in ipairs(dir_items) do
        if item:match("%.lua$") then
            local file_path = subfolder .. "/" .. item;
            loaded_items[#loaded_items + 1] = SMODS.load_file(file_path);
        end
    end

    for _, item in ipairs(loaded_items) do
        assert(item)();
    end
end

load_dir("source/extras");
load_dir("source/consumables");