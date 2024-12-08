import 'fish_database.dart';

// Bass Family
final List<FishSpecies> bassFishes = [
  FishSpecies(
    id: 'bass_largemouth',
    name: 'Largemouth Bass',
    scientificName: 'Micropterus salmoides',
    description: 'Most popular game fish in North America',
    habitat: 'Lakes, ponds, and slow rivers with vegetation',
    behavior: 'Aggressive predator, ambush hunter',
    bestBait: 'Plastic worms, jigs, live bait',
    bestTime: 'Dawn and dusk',
    imageUrl: 'assets/images/species/bass_largemouth.jpg',
    regulations: {'size_limit': '14 inches', 'bag_limit': '5 per day'},
    commonLocations: ['Weed beds', 'Docks', 'Fallen trees'],
    typicalSize: {'length_min': 12, 'length_max': 24, 'weight_min': 2, 'weight_max': 10},
    seasonalPatterns: {
      'spring': 'Spawning in shallows',
      'summer': 'Deep structure',
      'fall': 'Following baitfish',
      'winter': 'Deep water'
    },
  ),
  FishSpecies(
    id: 'bass_smallmouth',
    name: 'Smallmouth Bass',
    scientificName: 'Micropterus dolomieu',
    description: 'Known for aggressive fights and acrobatic jumps',
    habitat: 'Clear, rocky lakes and rivers',
    behavior: 'Aggressive predator, structure oriented',
    bestBait: 'Crawfish imitations, tube jigs, small swimbaits',
    bestTime: 'Early morning and late evening',
    imageUrl: 'assets/images/species/bass_smallmouth.jpg',
    regulations: {'size_limit': '14 inches', 'bag_limit': '5 per day'},
    commonLocations: ['Rocky points', 'River bends', 'Deep ledges'],
    typicalSize: {'length_min': 12, 'length_max': 24, 'weight_min': 1, 'weight_max': 8},
    seasonalPatterns: {
      'spring': 'Pre-spawn movement',
      'summer': 'Deep structure',
      'fall': 'Aggressive feeding',
      'winter': 'Deep wintering holes'
    },
    category: 'freshwater',
    family: 'Bass',
    techniques: ['Finesse Fishing', 'Drop Shot', 'Tube Jigging'],
  ),
  FishSpecies(
    id: 'bass_spotted',
    name: 'Spotted Bass',
    scientificName: 'Micropterus punctulatus',
    description: 'Similar to largemouth but prefers clearer water and rocky habitat',
    habitat: 'Clear water lakes and rivers with rock or gravel bottom',
    behavior: 'Aggressive predator, schooling in deeper water',
    bestBait: 'Jigs, crankbaits, soft plastics',
    bestTime: 'Early morning and late evening',
    imageUrl: 'assets/images/species/bass_spotted.jpg',
    regulations: {'size_limit': '12 inches', 'bag_limit': '5 per day'},
    commonLocations: ['Rocky points', 'Deep structure', 'River bends'],
    typicalSize: {'length_min': 10, 'length_max': 18, 'weight_min': 1, 'weight_max': 5},
    seasonalPatterns: {
      'spring': 'Moving to spawning areas',
      'summer': 'Deep structure',
      'fall': 'Chasing baitfish',
      'winter': 'Deep water'
    },
    category: 'freshwater',
    family: 'Bass',
    techniques: ['Casting', 'Jigging', 'Drop Shot', 'Carolina Rig'],
  ),
  FishSpecies(
    id: 'bass_white',
    name: 'White Bass',
    scientificName: 'Morone chrysops',
    description: 'Popular schooling fish known for aggressive feeding frenzies',
    habitat: 'Large lakes and rivers',
    behavior: 'Schooling fish that chase bait to surface',
    bestBait: 'Small jigs, spinners, live minnows',
    bestTime: 'Dawn and dusk',
    imageUrl: 'assets/images/species/bass_white.jpg',
    regulations: {'size_limit': '10 inches', 'bag_limit': '25 per day'},
    commonLocations: ['Points', 'Humps', 'Surface schools'],
    typicalSize: {'length_min': 8, 'length_max': 15, 'weight_min': 0.5, 'weight_max': 3},
    seasonalPatterns: {
      'spring': 'Spawning runs',
      'summer': 'Schooling on surface',
      'fall': 'Following baitfish',
      'winter': 'Deep water'
    },
    category: 'freshwater',
    family: 'Bass',
    techniques: ['Casting', 'Jigging', 'Trolling', 'Topwater'],
  ),
];

// Trout Family
final List<FishSpecies> troutFishes = [
  FishSpecies(
    id: 'trout_rainbow',
    name: 'Rainbow Trout',
    scientificName: 'Oncorhynchus mykiss',
    description: 'Popular sport fish known for its fighting ability',
    habitat: 'Cold, clear streams and lakes',
    behavior: 'Active feeder, particularly during insect hatches',
    bestBait: 'Flies, small spinners, worms',
    bestTime: 'Morning and evening',
    imageUrl: 'assets/images/species/trout_rainbow.jpg',
    regulations: {'size_limit': '7 inches', 'bag_limit': '5 per day'},
    commonLocations: ['Riffles', 'Pools', 'Lake inlets'],
    typicalSize: {'length_min': 8, 'length_max': 20, 'weight_min': 0.5, 'weight_max': 5},
    seasonalPatterns: {
      'spring': 'Active feeding',
      'summer': 'Deep pools',
      'fall': 'Spawning runs',
      'winter': 'Slow deep water'
    },
  ),
  FishSpecies(
    id: 'trout_brown',
    name: 'Brown Trout',
    scientificName: 'Salmo trutta',
    description: 'Selective feeder known for challenging anglers',
    habitat: 'Cold water streams and lakes',
    behavior: 'Cautious, territorial, feeds on insects and baitfish',
    bestBait: 'Nymphs, streamers, small spinners',
    bestTime: 'Dawn and dusk',
    imageUrl: 'assets/images/species/trout_brown.jpg',
    regulations: {'size_limit': '12 inches', 'bag_limit': '2 per day'},
    commonLocations: ['Undercut banks', 'Deep pools', 'Stream bends'],
    typicalSize: {'length_min': 10, 'length_max': 30, 'weight_min': 1, 'weight_max': 15},
    seasonalPatterns: {
      'spring': 'Insect hatches',
      'summer': 'Early morning/late evening',
      'fall': 'Spawning season',
      'winter': 'Deep pools'
    },
    category: 'freshwater',
    family: 'Trout',
    techniques: ['Fly Fishing', 'Spin Fishing', 'Nymphing'],
  ),
  FishSpecies(
    id: 'trout_brook',
    name: 'Brook Trout',
    scientificName: 'Salvelinus fontinalis',
    description: 'Beautiful native char species, prefers pristine waters',
    habitat: 'Cold, clean mountain streams and lakes',
    behavior: 'Opportunistic feeder, aggressive for size',
    bestBait: 'Small flies, worms, tiny spinners',
    bestTime: 'Morning to mid-day',
    imageUrl: 'assets/images/species/trout_brook.jpg',
    regulations: {'size_limit': '7 inches', 'bag_limit': '5 per day'},
    commonLocations: ['Mountain streams', 'Spring holes', 'Beaver ponds'],
    typicalSize: {'length_min': 6, 'length_max': 16, 'weight_min': 0.25, 'weight_max': 3},
    seasonalPatterns: {
      'spring': 'Post-spawn feeding',
      'summer': 'Seeking cold water',
      'fall': 'Spawning colors',
      'winter': 'Deep pools'
    },
    category: 'freshwater',
    family: 'Trout',
    techniques: ['Fly Fishing', 'Light Spinning', 'Dapping'],
  ),
  FishSpecies(
    id: 'trout_lake',
    name: 'Lake Trout',
    scientificName: 'Salvelinus namaycush',
    description: 'Large deep-water trout species',
    habitat: 'Deep, cold lakes',
    behavior: 'Deep water predator',
    bestBait: 'Large spoons, live bait rigs',
    bestTime: 'Early morning',
    imageUrl: 'assets/images/species/trout_lake.jpg',
    regulations: {'size_limit': '24 inches', 'bag_limit': '2 per day'},
    commonLocations: ['Deep basins', 'Underwater humps', 'Rocky reefs'],
    typicalSize: {'length_min': 18, 'length_max': 36, 'weight_min': 3, 'weight_max': 30},
    seasonalPatterns: {
      'spring': 'Moving shallow',
      'summer': 'Deep water',
      'fall': 'Spawning',
      'winter': 'Ice fishing'
    },
    category: 'freshwater',
    family: 'Trout',
    techniques: ['Trolling', 'Jigging', 'Ice Fishing'],
  ),
];

// Pike Family
final List<FishSpecies> pikeFishes = [
  FishSpecies(
    id: 'pike_northern',
    name: 'Northern Pike',
    scientificName: 'Esox lucius',
    description: 'Aggressive predator with sharp teeth',
    habitat: 'Cool lakes and rivers with vegetation',
    behavior: 'Ambush predator in weed beds',
    bestBait: 'Large spoons, live bait',
    bestTime: 'Early morning and late evening',
    imageUrl: 'assets/images/species/pike_northern.jpg',
    regulations: {'size_limit': '24 inches', 'bag_limit': '3 per day'},
    commonLocations: ['Weed edges', 'Creek mouths', 'Shallow bays'],
    typicalSize: {'length_min': 20, 'length_max': 40, 'weight_min': 3, 'weight_max': 15},
    seasonalPatterns: {
      'spring': 'Shallow spawning',
      'summer': 'Deep weed edges',
      'fall': 'Active feeding',
      'winter': 'Under ice'
    },
  ),
  FishSpecies(
    id: 'musky',
    name: 'Muskellunge',
    scientificName: 'Esox masquinongy',
    description: 'The fish of 10,000 casts, apex predator',
    habitat: 'Clear lakes and large rivers',
    behavior: 'Ambush predator, highly territorial',
    bestBait: 'Large bucktails, jerkbaits, live suckers',
    bestTime: 'Late summer and fall',
    imageUrl: 'assets/images/species/musky.jpg',
    regulations: {'size_limit': '40 inches', 'bag_limit': '1 per day'},
    commonLocations: ['Weed edges', 'Rock reefs', 'Deep points'],
    typicalSize: {'length_min': 30, 'length_max': 60, 'weight_min': 15, 'weight_max': 70},
    seasonalPatterns: {
      'spring': 'Post-spawn recovery',
      'summer': 'Deep structure',
      'fall': 'Peak feeding',
      'winter': 'Suspended over deep water'
    },
    category: 'freshwater',
    family: 'Pike',
    techniques: ['Figure-8 Retrieves', 'Trolling', 'Casting'],
  ),
];

// Panfish Family
final List<FishSpecies> panFishes = [
  FishSpecies(
    id: 'panfish_bluegill',
    name: 'Bluegill',
    scientificName: 'Lepomis macrochirus',
    description: 'Common sunfish, great for beginners',
    habitat: 'Warm water lakes and ponds',
    behavior: 'Schooling fish, active during day',
    bestBait: 'Worms, small jigs',
    bestTime: 'Mid-morning to afternoon',
    imageUrl: 'assets/images/species/panfish_bluegill.jpg',
    regulations: {'size_limit': 'None', 'bag_limit': '25 per day'},
    commonLocations: ['Docks', 'Weed beds', 'Shallow areas'],
    typicalSize: {'length_min': 4, 'length_max': 10, 'weight_min': 0.25, 'weight_max': 1},
    seasonalPatterns: {
      'spring': 'Moving shallow',
      'summer': 'Active feeding',
      'fall': 'Schooling',
      'winter': 'Deep water'
    },
  ),
  FishSpecies(
    id: 'crappie_black',
    name: 'Black Crappie',
    scientificName: 'Pomoxis nigromaculatus',
    description: 'Popular panfish known for excellent table fare',
    habitat: 'Lakes and slow rivers with vegetation',
    behavior: 'Schooling fish, suspended around structure',
    bestBait: 'Small jigs, minnows, soft plastics',
    bestTime: 'Dawn and dusk',
    imageUrl: 'assets/images/species/crappie_black.jpg',
    regulations: {'size_limit': '10 inches', 'bag_limit': '25 per day'},
    commonLocations: ['Brush piles', 'Dock posts', 'Weed edges'],
    typicalSize: {'length_min': 8, 'length_max': 16, 'weight_min': 0.5, 'weight_max': 4},
    seasonalPatterns: {
      'spring': 'Spawning in shallows',
      'summer': 'Deep structure',
      'fall': 'Following baitfish',
      'winter': 'Deep basin areas'
    },
    category: 'freshwater',
    family: 'Panfish',
    techniques: ['Vertical Jigging', 'Spider Rigging', 'Light Tackle'],
  ),
];

// Additional Panfish Species
final List<FishSpecies> panfishSpecies = [
  FishSpecies(
    id: 'perch_yellow',
    name: 'Yellow Perch',
    scientificName: 'Perca flavescens',
    description: 'Popular panfish known for taste',
    habitat: 'Lakes, ponds, slow rivers',
    behavior: 'Schooling fish, active year-round',
    bestBait: 'Minnows, worms, small jigs',
    bestTime: 'Morning and evening',
    imageUrl: 'assets/images/species/perch_yellow.jpg',
    regulations: {'size_limit': 'None', 'bag_limit': '50 per day'},
    commonLocations: ['Weed edges', 'Drop-offs', 'Deep basins'],
    typicalSize: {'length_min': 6, 'length_max': 15, 'weight_min': 0.25, 'weight_max': 2},
    seasonalPatterns: {
      'spring': 'Spawning',
      'summer': 'Deep water',
      'fall': 'Active feeding',
      'winter': 'Ice fishing'
    },
    category: 'freshwater',
    family: 'Percidae',
    techniques: ['Live bait', 'Jigging', 'Ice fishing'],
  ),
  FishSpecies(
    id: 'crappie_white',
    name: 'White Crappie',
    scientificName: 'Pomoxis annularis',
    description: 'Popular panfish, excellent table fare',
    habitat: 'Lakes, reservoirs, slow rivers',
    behavior: 'Schooling, structure oriented',
    bestBait: 'Minnows, jigs, small spinners',
    bestTime: 'Dawn and dusk',
    imageUrl: 'assets/images/species/crappie_white.jpg',
    regulations: {'size_limit': '10 inches', 'bag_limit': '25 per day'},
    commonLocations: ['Brush piles', 'Standing timber', 'Bridge pilings'],
    typicalSize: {'length_min': 8, 'length_max': 15, 'weight_min': 0.5, 'weight_max': 2},
    seasonalPatterns: {
      'spring': 'Spawning',
      'summer': 'Deep structure',
      'fall': 'Schooling',
      'winter': 'Deep water'
    },
    category: 'freshwater',
    family: 'Centrarchidae',
    techniques: ['Spider rigging', 'Vertical jigging', 'Dock shooting'],
  ),
];

// Catfish Family
final List<FishSpecies> catfishes = [
  FishSpecies(
    id: 'catfish_channel',
    name: 'Channel Catfish',
    scientificName: 'Ictalurus punctatus',
    description: 'Popular game fish known for size and taste',
    habitat: 'Rivers and lakes with deep holes',
    behavior: 'Bottom feeder, most active at night',
    bestBait: 'Cut bait, stink bait, worms',
    bestTime: 'Night fishing',
    imageUrl: 'assets/images/species/catfish_channel.jpg',
    regulations: {'size_limit': '12 inches', 'bag_limit': '10 per day'},
    commonLocations: ['Deep holes', 'Channel edges', 'Structure'],
    typicalSize: {'length_min': 12, 'length_max': 30, 'weight_min': 2, 'weight_max': 20},
    seasonalPatterns: {
      'spring': 'Moving to spawning areas',
      'summer': 'Night feeding',
      'fall': 'Deep holes',
      'winter': 'Minimal activity'
    },
  ),
  FishSpecies(
    id: 'catfish_blue',
    name: 'Blue Catfish',
    scientificName: 'Ictalurus furcatus',
    description: 'Largest species of North American catfish, trophy potential',
    habitat: 'Large rivers and reservoirs with deep channels',
    behavior: 'Bottom feeder, most active at night',
    bestBait: 'Cut bait, live shad, chicken liver',
    bestTime: 'Night and early morning',
    imageUrl: 'assets/images/species/catfish_blue.jpg',
    regulations: {'size_limit': 'None', 'bag_limit': '10 per day'},
    commonLocations: ['River channels', 'Deep holes', 'Dam tailwaters'],
    typicalSize: {'length_min': 20, 'length_max': 60, 'weight_min': 5, 'weight_max': 100},
    seasonalPatterns: {
      'spring': 'Pre-spawn feeding',
      'summer': 'Deep channels',
      'fall': 'Following bait schools',
      'winter': 'Deepest holes'
    },
    category: 'freshwater',
    family: 'Catfish',
    techniques: ['Bottom Fishing', 'Drift Fishing', 'Anchoring'],
  ),
  FishSpecies(
    id: 'catfish_flathead',
    name: 'Flathead Catfish',
    scientificName: 'Pylodictis olivaris',
    description: 'Predatory catfish known for large size and live bait preference',
    habitat: 'Rivers and lakes with wood cover',
    behavior: 'Aggressive predator, structure oriented',
    bestBait: 'Live bluegill, bullheads, large minnows',
    bestTime: 'Night fishing',
    imageUrl: 'assets/images/species/catfish_flathead.jpg',
    regulations: {'size_limit': '15 inches', 'bag_limit': '5 per day'},
    commonLocations: ['Log jams', 'Deep holes', 'River bends'],
    typicalSize: {'length_min': 15, 'length_max': 50, 'weight_min': 3, 'weight_max': 80},
    seasonalPatterns: {
      'spring': 'Moving to spawning areas',
      'summer': 'Night feeding',
      'fall': 'Aggressive feeding',
      'winter': 'Deep wintering holes'
    },
    category: 'freshwater',
    family: 'Catfish',
    techniques: ['Live Bait Fishing', 'Rod and Reel', 'Limb Lines'],
  ),
];

// Additional Catfish Species
final List<FishSpecies> catfishSpecies = [
  FishSpecies(
    id: 'catfish_flathead',
    name: 'Flathead Catfish',
    scientificName: 'Pylodictis olivaris',
    description: 'Large predatory catfish',
    habitat: 'Rivers, reservoirs, deep holes',
    behavior: 'Nocturnal predator, structure oriented',
    bestBait: 'Live bait, sunfish, shad',
    bestTime: 'Night fishing',
    imageUrl: 'assets/images/species/catfish_flathead.jpg',
    regulations: {'size_limit': 'Varies by location', 'bag_limit': '5 per day'},
    commonLocations: ['Log jams', 'Deep holes', 'River bends'],
    typicalSize: {'length_min': 20, 'length_max': 60, 'weight_min': 5, 'weight_max': 100},
    seasonalPatterns: {
      'spring': 'Pre-spawn',
      'summer': 'Night fishing',
      'fall': 'Feeding heavily',
      'winter': 'Deep holes'
    },
    category: 'freshwater',
    family: 'Ictaluridae',
    techniques: ['Live bait', 'Bottom fishing', 'Night fishing'],
  ),
  FishSpecies(
    id: 'catfish_blue',
    name: 'Blue Catfish',
    scientificName: 'Ictalurus furcatus',
    description: 'Largest North American catfish species',
    habitat: 'Large rivers, reservoirs',
    behavior: 'Opportunistic feeder, migratory',
    bestBait: 'Cut bait, shad, skipjack',
    bestTime: 'Day or night',
    imageUrl: 'assets/images/species/catfish_blue.jpg',
    regulations: {'size_limit': 'Varies by location', 'bag_limit': '10 per day'},
    commonLocations: ['Channel edges', 'Deep holes', 'Current breaks'],
    typicalSize: {'length_min': 24, 'length_max': 80, 'weight_min': 10, 'weight_max': 150},
    seasonalPatterns: {
      'spring': 'Moving shallow',
      'summer': 'Deep water',
      'fall': 'Feeding heavily',
      'winter': 'Deep holes'
    },
    category: 'freshwater',
    family: 'Ictaluridae',
    techniques: ['Drift fishing', 'Anchoring', 'Bottom fishing'],
  ),
];

// Additional Exotic Freshwater Species
final List<FishSpecies> exoticFreshwaterSpecies = [
  FishSpecies(
    id: 'peacock_bass',
    name: 'Peacock Bass',
    scientificName: 'Cichla ocellaris',
    description: 'Aggressive tropical game fish',
    habitat: 'Warm waters, canals, lakes',
    behavior: 'Aggressive predator, structure oriented',
    bestBait: 'Live shiners, topwater lures',
    bestTime: 'Morning and evening',
    imageUrl: 'assets/images/species/peacock_bass.jpg',
    regulations: {'size_limit': '14 inches', 'bag_limit': '2 per day'},
    commonLocations: ['Canal edges', 'Structure', 'Drop-offs'],
    typicalSize: {'length_min': 12, 'length_max': 30, 'weight_min': 2, 'weight_max': 20},
    seasonalPatterns: {
      'spring': 'Active feeding',
      'summer': 'Peak season',
      'fall': 'Good fishing',
      'winter': 'Less active'
    },
    category: 'freshwater',
    family: 'Cichlidae',
    techniques: ['Topwater', 'Live bait', 'Sight fishing'],
  ),
  FishSpecies(
    id: 'arapaima',
    name: 'Arapaima',
    scientificName: 'Arapaima gigas',
    description: 'Ancient air-breathing giant',
    habitat: 'Tropical waters, flood plains',
    behavior: 'Surface breather, powerful fighter',
    bestBait: 'Large live bait, artificial lures',
    bestTime: 'Daytime',
    imageUrl: 'assets/images/species/arapaima.jpg',
    regulations: {'size_limit': 'Protected species', 'bag_limit': 'Catch and release only'},
    commonLocations: ['Flood plains', 'Backwaters', 'Lagoons'],
    typicalSize: {'length_min': 60, 'length_max': 240, 'weight_min': 50, 'weight_max': 440},
    seasonalPatterns: {
      'spring': 'Spawning',
      'summer': 'Active',
      'fall': 'Feeding',
      'winter': 'Less active'
    },
    category: 'freshwater',
    family: 'Arapaimidae',
    techniques: ['Surface fishing', 'Sight fishing', 'Float fishing'],
  ),
];

// Update the combined freshwater species list
final List<FishSpecies> freshwaterSpecies = [
  ...bassFishes,
  ...troutFishes,
  ...pikeFishes,
  ...panFishes,
  ...panfishSpecies,
  ...catfishes,
  ...catfishSpecies,
  ...exoticFreshwaterSpecies,
];
