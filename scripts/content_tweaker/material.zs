#loader contenttweaker

import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.MaterialBuilder;
import mods.contenttweaker.Material;

function buildMaterial(nameAndColor as int[string]) as Material[] {
    var Materials as Material[]=[];
    for entry in nameAndColor.entrySet {
        Materials += MaterialSystem.getMaterialBuilder().setName(entry.key).setColor(entry.value).build();
    } 
    return Materials;
}



