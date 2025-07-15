


-- Disallow quality for all recipes. Because it's simpler this way.
for _, recipe_raw in pairs(data.raw.recipe) do
    recipe_raw.allow_quality = false;
end

-- Disallow quality modules in recyclers.
local recycler_effects = {};
for _, effect in pairs(data.raw.furnace["recycler"].allowed_effects) do
    if effect ~= "quality" then
        table.insert(recycler_effects, effect)
    end
end
data.raw.furnace["recycler"].allowed_effects = recycler_effects;

-- Re-enable quality on choice low-level recipes that will permit getting quality stuff in any chain on any surface.
data.raw.recipe["solid-fuel-from-ammonia"].allow_quality = true;
data.raw.recipe["solid-fuel-from-heavy-oil"].allow_quality = true;
data.raw.recipe["solid-fuel-from-light-oil"].allow_quality = true;
data.raw.recipe["solid-fuel-from-petroleum-gas"].allow_quality = true;
data.raw.recipe["iron-plate"].allow_quality = true;
data.raw.recipe["copper-plate"].allow_quality = true;
data.raw.recipe["steel-plate"].allow_quality = true;
data.raw.recipe["plastic-bar"].allow_quality = true;
data.raw.recipe["sulfur"].allow_quality = true;
data.raw.recipe["carbon"].allow_quality = true;
data.raw.recipe["coal-synthesis"].allow_quality = true;
data.raw.recipe["uranium-processing"].allow_quality = true;
data.raw.recipe["kovarex-enrichment-process"].allow_quality = true;
data.raw.recipe["molten-iron-from-lava"].allow_quality = true;
data.raw.recipe["molten-copper-from-lava"].allow_quality = true;
data.raw.recipe["casting-iron"].allow_quality = true;
data.raw.recipe["casting-copper"].allow_quality = true;
data.raw.recipe["casting-steel"].allow_quality = true;
data.raw.recipe["tungsten-plate"].allow_quality = true;
data.raw.recipe["tungsten-carbide"].allow_quality = true;
data.raw.recipe["holmium-plate"].allow_quality = true;
data.raw.recipe["yumako-processing"].allow_quality = true;
data.raw.recipe["jellynut-processing"].allow_quality = true;
data.raw.recipe["nutrients-from-spoilage"].allow_quality = true;
data.raw.recipe["nutrients-from-yumako-mash"].allow_quality = true;
data.raw.recipe["nutrients-from-bioflux"].allow_quality = true;
data.raw.recipe["nutrients-from-biter-egg"].allow_quality = true;
data.raw.recipe["pentapod-egg"].allow_quality = true;
data.raw.recipe["iron-bacteria"].allow_quality = true;
data.raw.recipe["copper-bacteria"].allow_quality = true;
data.raw.recipe["bioplastic"].allow_quality = true;
data.raw.recipe["biosulfur"].allow_quality = true;
data.raw.recipe["bioflux"].allow_quality = true;
data.raw.recipe["burnt-spoilage"].allow_quality = true;
data.raw.recipe["ammoniacal-solution-separation"].allow_quality = true;
data.raw.recipe["lithium"].allow_quality = true;
data.raw.recipe["lithium-plate"].allow_quality = true;
data.raw.recipe["metallic-asteroid-crushing"].allow_quality = true;
data.raw.recipe["carbonic-asteroid-crushing"].allow_quality = true;
data.raw.recipe["oxide-asteroid-crushing"].allow_quality = true;
data.raw.recipe["advanced-metallic-asteroid-crushing"].allow_quality = true;
data.raw.recipe["advanced-carbonic-asteroid-crushing"].allow_quality = true;
data.raw.recipe["advanced-oxide-asteroid-crushing"].allow_quality = true;


-- Special cases.
data.raw.recipe["fish-breeding"].allow_quality = true; -- No other source of quality fish.



-- Recalculate recycling recipes just in case something got messed up.
require("__quality__.data-updates")