const MAP_WIDTH = 250;
const MAP_LENGTH = 250;
const MAP_AREA = MAP_WIDTH * MAP_LENGTH;
const TEXTURE_CONCRETE = 77;

let texturemap = Array(MAP_AREA).fill(TEXTURE_CONCRETE);
let heightmap = Array(MAP_AREA).fill(0);
let structures = [];
let droids = [];
let features = [];

setMapData(MAP_WIDTH, MAP_LENGTH, texturemap, heightmap, structures, droids, features);
