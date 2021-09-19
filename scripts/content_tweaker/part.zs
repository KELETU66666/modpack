#loader contenttweaker

import mods.contenttweaker.Part;
import mods.contenttweaker.PartBuilder;
import mods.contenttweaker.PartType;
import mods.contenttweaker.Material;

import scripts.content_tweaker.material;

function registerPartsToArray(materialName as Material[],partName as string[]) {
    for material in materialName {
        material.registerParts(partName);
    }
}

val materials as Material[] = material.buildMaterial(
    {
        "hydrogen" : 0xBBFFFF,
        "helium" : 0xFAF0E6,
        "lithium" : 0xE8E8E8,
        "berylium" : 0x2E8B57,
        "boron" : 0xCDCDB4,
        "carbon" : 0x1C1C1C,
        "nitrogen" : 0xEE6A50,
        "oxygen" : 0x1E90FF,
        "fluorine" : 0xFFD700,
        "neon" : 0xFFFF00,
        "sodium" : 0x0000CD,
        "magnesium" : 0x8B4789,
        "aluminium" : 0x00C5CD,
        "silicon" : 0x6A5ACD,
        "phosphorus" : 0xCD5555,
        "sulfur" : 0xCD853F,
        "chlorine" : 0xFFA500,
        "argon" : 0x9932CC,
        "potassium" : 0x8B8378,
        "caicium" : 0xFFF0F5,
        "scandium" : 0xEEE0E5,
        "titanium" : 0xE066FF,
        "vanadium" : 0x363636,
        "chromium" : 0x8B7B8B,
        "manganese" : 0x828282,
        //"iron" : 0xc1b9b9,
        "cobalt" : 0x00008B,
        "nickel" :0xFFFACD,
        //"copper" : 0xFFA500,
        "zinc" : 0xEEE9E9,
        "galium" : 0x9370DB,
        "germanium" : 0xEEE8AA,
        "arsenic" : 0xCDCDC1,
        "selenium" : 0xCDC8B1,
        "bromine" : 0xCD3700,
        "krypton" : 0xB5B5B5,
        "rubidium" : 0xEE1289,
        "strontium" : 0xFFFACD,
        "yttrium" : 0xCDC9A5,
        "zirconium" : 0x1C86EE,
        "niobium" : 0x9B30FF,
        "molybdenum" : 0x8968CD,
        "technetium" : 0x483D8B,
        "ruthenium" : 0xCDBE70,
        "rhodium" : 0xE0FFFF,
        "palladium" : 0xFF7F24,
        //"silver" : 0xB0C4DE,
        "cadmium" : 0x8470FF,
        "indium" : 0x4169E1,
        "tin" : 0xD3D3D3,
        "antimony" : 0xFFF5EE,
        "tellurium" : 0xDCDCDC,
        "iodine" : 0x431d77,
        "xenon" : 0x7ba7ef,
        "caesium" : 0x8dc9a2,
        "barium" : 0x876c12,
        "lanthanum" : 0x167411,
        "cerium" : 0x7b6628,
        "praseodymium" : 0x868174,
        "neodymium" : 0xe8e8e8,
        "promethium" : 0xc2c4bb,
        "samarium" : 0x818674,
        "europium" : 0x9a9e8f,
        "gadolinium" : 0xbfc1b8, 
        "terbium" : 0xc4c5be,
        "dysprosium" : 0xc7c9c0,
        "holmium" : 0xd0d4c4,
        "erbium" : 0xbabfab,
        "thulium" : 0xa2a88f,
        "ytterbium" : 0xd8dccb,
        "lutetium" : 0xc0c7ae,
        "hafnium" : 0x616751,
        "tantalum" : 0x98a375,
        "tungsten" : 0x31322f,
        "rhenium" : 0xb8bc24,
        "osmium" : 0x6bb3b8,
        "iridium" : 0xd7d9ce,
        "platinum" : 0xc8e5e5,
        //"gold" : 0xFFD700,
        "mercury" : 0xe5dfc8,
        "thallium" : 0xe5e2c8,
        "lead" : 0x846392,
        "bismuth" : 0x6f9263,
        "polonium" : 0x8d8d4e,
        "astatine" : 0x000000,
        "radon" : 0xb93331
        /*"francium" :
        "radium" :
        "actinium" :
        "thorium" :
        "protactinium" :
        "uranium" :
        "neptunium" :
        "plutonium" :
        "americium" :
        "curium" :
        "berkelium" :
        "californium" :
        "einsteinium" :
        "fermium" :
        "mendelevium" :
        "nobelium" :
        "lawrencium" :
        "rutherfordium" :
        "dubnium" :
        "seaborgium" :
        "bohrium" :
        "hassium" :
        "meitnerium" :
        "darmstadtium" :
        "roentgenium" :
        "copernicium" :
        "nihonium" :
        "flerovium" :
        "moscovium" :
        "livermorium" :
        "tennessine" :
        "oganesson" :
        */
    }


);

registerPartsToArray(
    materials,
    ["ingot","dust","nugget","plate","rod","block","ore"]
);