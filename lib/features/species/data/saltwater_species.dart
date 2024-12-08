import 'fish_database.dart';

// Offshore Game Fish
final List<FishSpecies> offshoreFishes = [
  FishSpecies(
    id: 'tuna_yellowfin',
    name: 'Yellowfin Tuna',
    scientificName: 'Thunnus albacares',
    description: 'Prized game fish known for size and speed',
    habitat: 'Offshore pelagic waters',
    behavior: 'Schooling fish, follows bait schools',
    bestBait: 'Live bait, trolling lures',
    bestTime: 'Dawn and dusk',
    imageUrl: 'assets/images/species/tuna_yellowfin.jpg',
    regulations: {'size_limit': '27 inches', 'bag_limit': '3 per day'},
    commonLocations: ['Deep water', 'Temperature breaks', 'Offshore structure'],
    typicalSize: {'length_min': 30, 'length_max': 72, 'weight_min': 20, 'weight_max': 200},
    seasonalPatterns: {
      'spring': 'Moving inshore',
      'summer': 'Peak season',
      'fall': 'Following bait',
      'winter': 'Deep water'
    },
  ),
  FishSpecies(
    id: 'marlin_blue',
    name: 'Blue Marlin',
    scientificName: 'Makaira nigricans',
    description: 'Majestic billfish, prized game fish known for spectacular jumps',
    habitat: 'Deep offshore waters, near temperature breaks',
    behavior: 'Solitary hunter, follows bait schools',
    bestBait: 'Live bonito, artificial lures, trolling spreads',
    bestTime: 'Early morning and late afternoon',
    imageUrl: 'assets/images/species/marlin_blue.jpg',
    regulations: {'size_limit': 'Catch and release recommended', 'bag_limit': '1 per vessel per day'},
    commonLocations: ['Deep water canyons', 'Offshore humps', 'Temperature breaks'],
    typicalSize: {'length_min': 100, 'length_max': 180, 'weight_min': 100, 'weight_max': 600},
    seasonalPatterns: {
      'spring': 'Beginning migration',
      'summer': 'Peak season',
      'fall': 'Following bait schools',
      'winter': 'Warmer southern waters'
    },
    category: 'saltwater',
    family: 'Billfish',
    techniques: ['Trolling', 'Live Baiting', 'Kite Fishing'],
  ),
  FishSpecies(
    id: 'mahi_mahi',
    name: 'Mahi-Mahi',
    scientificName: 'Coryphaena hippurus',
    description: 'Colorful pelagic fish known for acrobatic fights and excellent taste',
    habitat: 'Offshore waters near floating debris and weedlines',
    behavior: 'Aggressive surface feeder, often found in pairs or schools',
    bestBait: 'Ballyhoo, small lures, live bait',
    bestTime: 'Early morning',
    imageUrl: 'assets/images/species/mahi_mahi.jpg',
    regulations: {'size_limit': '20 inches', 'bag_limit': '10 per person'},
    commonLocations: ['Weed lines', 'Floating debris', 'Current edges'],
    typicalSize: {'length_min': 20, 'length_max': 50, 'weight_min': 8, 'weight_max': 40},
    seasonalPatterns: {
      'spring': 'Beginning of run',
      'summer': 'Peak season',
      'fall': 'Still active',
      'winter': 'Moving to warmer waters'
    },
    category: 'saltwater',
    family: 'Dolphinfish',
    techniques: ['Trolling', 'Casting', 'Live Baiting'],
  ),
];

// Additional Offshore Game Fish
final List<FishSpecies> additionalOffshoreFishes = [
  FishSpecies(
    id: 'tuna_blackfin',
    name: 'Blackfin Tuna',
    scientificName: 'Thunnus atlanticus',
    description: 'Smaller tuna species known for fast runs and excellent table fare',
    habitat: 'Offshore waters, often near structures and dropoffs',
    behavior: 'Schooling species, aggressive feeder',
    bestBait: 'Live pilchards, small lures, butterfly jigs',
    bestTime: 'Dawn and dusk',
    imageUrl: 'assets/images/species/tuna_blackfin.jpg',
    regulations: {'size_limit': 'None', 'bag_limit': '2 per person'},
    commonLocations: ['Wrecks', 'Reefs', 'Deep water humps'],
    typicalSize: {'length_min': 20, 'length_max': 40, 'weight_min': 5, 'weight_max': 30},
    seasonalPatterns: {
      'spring': 'Moving inshore',
      'summer': 'Peak season',
      'fall': 'Feeding heavily',
      'winter': 'Deeper waters'
    },
    category: 'saltwater',
    family: 'Tuna',
    techniques: ['Chunking', 'Jigging', 'Live Baiting'],
  ),
  FishSpecies(
    id: 'wahoo',
    name: 'Wahoo',
    scientificName: 'Acanthocybium solandri',
    description: 'Fast-swimming pelagic known for blistering runs',
    habitat: 'Offshore waters, temperature breaks',
    behavior: 'Solitary or small groups, aggressive strikes',
    bestBait: 'High-speed lures, live bonito, ballyhoo',
    bestTime: 'Early morning',
    imageUrl: 'assets/images/species/wahoo.jpg',
    regulations: {'size_limit': 'None', 'bag_limit': '2 per person'},
    commonLocations: ['Ledges', 'Deep water humps', 'Current edges'],
    typicalSize: {'length_min': 35, 'length_max': 80, 'weight_min': 15, 'weight_max': 100},
    seasonalPatterns: {
      'spring': 'Beginning migration',
      'summer': 'Following bait',
      'fall': 'Peak season',
      'winter': 'Deep water'
    },
    category: 'saltwater',
    family: 'Scombridae',
    techniques: ['High-speed trolling', 'Live baiting', 'Deep jigging'],
  ),
];

// Additional Offshore Game Fish
final List<FishSpecies> moreOffshoreFishes = [
  FishSpecies(
    id: 'sailfish',
    name: 'Atlantic Sailfish',
    scientificName: 'Istiophorus albicans',
    description: 'Known for spectacular aerial displays and distinctive sail',
    habitat: 'Offshore waters, current edges',
    behavior: 'Aggressive surface feeder, highly acrobatic',
    bestBait: 'Live ballyhoo, mullet, artificial lures',
    bestTime: 'Early morning and late afternoon',
    imageUrl: 'assets/images/species/sailfish.jpg',
    regulations: {'size_limit': 'Catch and release recommended', 'bag_limit': '1 per person'},
    commonLocations: ['Current edges', 'Reef dropoffs', 'Bait schools'],
    typicalSize: {'length_min': 60, 'length_max': 110, 'weight_min': 30, 'weight_max': 100},
    seasonalPatterns: {
      'spring': 'Northward migration',
      'summer': 'Scattered fish',
      'fall': 'Peak season',
      'winter': 'Southern waters'
    },
    category: 'saltwater',
    family: 'Billfish',
    techniques: ['Kite fishing', 'Trolling', 'Live baiting'],
  ),
  FishSpecies(
    id: 'tuna_bigeye',
    name: 'Bigeye Tuna',
    scientificName: 'Thunnus obesus',
    description: 'Deep-water tuna known for size and quality',
    habitat: 'Deep offshore waters',
    behavior: 'Deep water hunter, follows thermoclines',
    bestBait: 'Live skipjack, deep jigs, chunking',
    bestTime: 'Dawn and dusk',
    imageUrl: 'assets/images/species/tuna_bigeye.jpg',
    regulations: {'size_limit': '27 inches curved fork length', 'bag_limit': '1 per vessel'},
    commonLocations: ['Deep canyons', 'Seamounts', 'Temperature breaks'],
    typicalSize: {'length_min': 40, 'length_max': 80, 'weight_min': 30, 'weight_max': 200},
    seasonalPatterns: {
      'spring': 'Following currents',
      'summer': 'Peak season',
      'fall': 'Deep water',
      'winter': 'Offshore grounds'
    },
    category: 'saltwater',
    family: 'Tuna',
    techniques: ['Deep dropping', 'Chunking', 'Night fishing'],
  ),
];

// Inshore Game Fish
final List<FishSpecies> inshoreFishes = [
  FishSpecies(
    id: 'redfish_red_drum',
    name: 'Red Drum (Redfish)',
    scientificName: 'Sciaenops ocellatus',
    description: 'Popular inshore game fish',
    habitat: 'Coastal waters, estuaries',
    behavior: 'Bottom feeder, tailing in shallows',
    bestBait: 'Live shrimp, crabs, artificial lures',
    bestTime: 'Morning and evening',
    imageUrl: 'assets/images/species/redfish.jpg',
    regulations: {'size_limit': '18-27 inches', 'bag_limit': '2 per day'},
    commonLocations: ['Grass flats', 'Oyster beds', 'Mangroves'],
    typicalSize: {'length_min': 18, 'length_max': 40, 'weight_min': 5, 'weight_max': 40},
    seasonalPatterns: {
      'spring': 'Moving to flats',
      'summer': 'Early morning/late evening',
      'fall': 'Schooling',
      'winter': 'Deep channels'
    },
  ),
  FishSpecies(
    id: 'snook_common',
    name: 'Common Snook',
    scientificName: 'Centropomus undecimalis',
    description: 'Popular inshore game fish known for strong runs and challenging fights',
    habitat: 'Mangroves, beaches, dock lights',
    behavior: 'Ambush predator, structure oriented',
    bestBait: 'Live mullet, shrimp, artificial lures',
    bestTime: 'Dawn and dusk',
    imageUrl: 'assets/images/species/snook_common.jpg',
    regulations: {'size_limit': '28-32 inches slot', 'bag_limit': '1 per person'},
    commonLocations: ['Mangrove shorelines', 'Beach passes', 'Dock lights'],
    typicalSize: {'length_min': 24, 'length_max': 40, 'weight_min': 5, 'weight_max': 30},
    seasonalPatterns: {
      'spring': 'Moving to beaches',
      'summer': 'Spawning season',
      'fall': 'Feeding heavily',
      'winter': 'Deep water refuges'
    },
    category: 'saltwater',
    family: 'Snook',
    techniques: ['Live Baiting', 'Artificial Lures', 'Sight Fishing'],
  ),
  FishSpecies(
    id: 'tarpon_atlantic',
    name: 'Atlantic Tarpon',
    scientificName: 'Megalops atlanticus',
    description: 'Silver King, known for spectacular jumps and challenging fights',
    habitat: 'Coastal waters, passes, rivers',
    behavior: 'Migratory, follows bait schools',
    bestBait: 'Live crabs, mullet, artificial lures',
    bestTime: 'Early morning and evening',
    imageUrl: 'assets/images/species/tarpon_atlantic.jpg',
    regulations: {'size_limit': 'Catch and release only', 'bag_limit': 'Catch and release only'},
    commonLocations: ['Coastal passes', 'Beaches', 'River mouths'],
    typicalSize: {'length_min': 48, 'length_max': 96, 'weight_min': 30, 'weight_max': 200},
    seasonalPatterns: {
      'spring': 'Beginning migration',
      'summer': 'Peak season',
      'fall': 'Scattered fish',
      'winter': 'Deep holes'
    },
    category: 'saltwater',
    family: 'Tarpon',
    techniques: ['Live Baiting', 'Sight Casting', 'Fly Fishing'],
  ),
];

// Additional Inshore Game Fish
final List<FishSpecies> additionalInshoreFishes = [
  FishSpecies(
    id: 'permit',
    name: 'Permit',
    scientificName: 'Trachinotus falcatus',
    description: 'Challenging shallow water gamefish',
    habitat: 'Flats, channels, and reefs',
    behavior: 'Extremely wary, feeds on crustaceans',
    bestBait: 'Live crabs, shrimp, crab flies',
    bestTime: 'Rising tide',
    imageUrl: 'assets/images/species/permit.jpg',
    regulations: {'size_limit': '22 inches', 'bag_limit': '1 per person'},
    commonLocations: ['Sand flats', 'Channel edges', 'Wrecks'],
    typicalSize: {'length_min': 20, 'length_max': 48, 'weight_min': 8, 'weight_max': 50},
    seasonalPatterns: {
      'spring': 'Moving to flats',
      'summer': 'Peak flats fishing',
      'fall': 'Still active',
      'winter': 'Deeper waters'
    },
    category: 'saltwater',
    family: 'Jack',
    techniques: ['Sight fishing', 'Fly fishing', 'Live bait'],
  ),
  FishSpecies(
    id: 'cobia',
    name: 'Cobia',
    scientificName: 'Rachycentron canadum',
    description: 'Strong-fighting fish known for powerful runs',
    habitat: 'Coastal waters, structure, markers',
    behavior: 'Curious, often follows large marine life',
    bestBait: 'Live eels, crabs, large jigs',
    bestTime: 'Morning hours',
    imageUrl: 'assets/images/species/cobia.jpg',
    regulations: {'size_limit': '33 inches', 'bag_limit': '2 per person'},
    commonLocations: ['Buoys', 'Wrecks', 'Manta rays'],
    typicalSize: {'length_min': 30, 'length_max': 70, 'weight_min': 15, 'weight_max': 100},
    seasonalPatterns: {
      'spring': 'Migration begins',
      'summer': 'Peak season',
      'fall': 'Heading south',
      'winter': 'Southern waters'
    },
    category: 'saltwater',
    family: 'Rachycentridae',
    techniques: ['Sight casting', 'Live baiting', 'Jigging'],
  ),
];

// Additional Inshore Species
final List<FishSpecies> moreInshoreFishes = [
  FishSpecies(
    id: 'tripletail',
    name: 'Tripletail',
    scientificName: 'Lobotes surinamensis',
    description: 'Unique species known for surface orientation',
    habitat: 'Floating debris, markers, structure',
    behavior: 'Mimics floating debris, ambush predator',
    bestBait: 'Live shrimp, small crabs, artificial shrimp',
    bestTime: 'Mid-day sight fishing',
    imageUrl: 'assets/images/species/tripletail.jpg',
    regulations: {'size_limit': '18 inches', 'bag_limit': '2 per person'},
    commonLocations: ['Buoys', 'Floating debris', 'Channel markers'],
    typicalSize: {'length_min': 15, 'length_max': 35, 'weight_min': 2, 'weight_max': 30},
    seasonalPatterns: {
      'spring': 'Moving inshore',
      'summer': 'Peak season',
      'fall': 'Still active',
      'winter': 'Moving offshore'
    },
    category: 'saltwater',
    family: 'Lobotidae',
    techniques: ['Sight fishing', 'Live bait', 'Float fishing'],
  ),
  FishSpecies(
    id: 'sheepshead',
    name: 'Sheepshead',
    scientificName: 'Archosargus probatocephalus',
    description: 'Structure-oriented fish with distinctive teeth',
    habitat: 'Docks, bridges, oyster beds',
    behavior: 'Bottom feeder, structure dependent',
    bestBait: 'Fiddler crabs, oysters, shrimp',
    bestTime: 'High tide',
    imageUrl: 'assets/images/species/sheepshead.jpg',
    regulations: {'size_limit': '12 inches', 'bag_limit': '8 per person'},
    commonLocations: ['Pilings', 'Reefs', 'Rock jetties'],
    typicalSize: {'length_min': 12, 'length_max': 24, 'weight_min': 2, 'weight_max': 12},
    seasonalPatterns: {
      'spring': 'Spawning aggregations',
      'summer': 'Scattered',
      'fall': 'Moving inshore',
      'winter': 'Peak season'
    },
    category: 'saltwater',
    family: 'Sparidae',
    techniques: ['Bottom fishing', 'Structure fishing', 'Vertical jigging'],
  ),
];

// Reef Fish
final List<FishSpecies> reefFishes = [
  FishSpecies(
    id: 'grouper_red',
    name: 'Red Grouper',
    scientificName: 'Epinephelus morio',
    description: 'Bottom dwelling reef fish',
    habitat: 'Coral reefs and rocky bottoms',
    behavior: 'Ambush predator near structure',
    bestBait: 'Live bait, large jigs',
    bestTime: 'Daytime',
    imageUrl: 'assets/images/species/grouper_red.jpg',
    regulations: {'size_limit': '20 inches', 'bag_limit': '2 per day'},
    commonLocations: ['Reefs', 'Wrecks', 'Rocky bottoms'],
    typicalSize: {'length_min': 20, 'length_max': 36, 'weight_min': 5, 'weight_max': 30},
    seasonalPatterns: {
      'spring': 'Moving shallow',
      'summer': 'Deep reefs',
      'fall': 'Active feeding',
      'winter': 'Deep water'
    },
  ),
  FishSpecies(
    id: 'snapper_red',
    name: 'Red Snapper',
    scientificName: 'Lutjanus campechanus',
    description: 'Popular reef fish prized for its food value',
    habitat: 'Offshore reefs and wrecks',
    behavior: 'Structure oriented, feeds near bottom',
    bestBait: 'Live bait, cut bait, jigs',
    bestTime: 'Daytime',
    imageUrl: 'assets/images/species/snapper_red.jpg',
    regulations: {'size_limit': '16 inches', 'bag_limit': '2 per person'},
    commonLocations: ['Natural reefs', 'Artificial reefs', 'Oil rigs'],
    typicalSize: {'length_min': 16, 'length_max': 30, 'weight_min': 4, 'weight_max': 20},
    seasonalPatterns: {
      'spring': 'Moving to spawning areas',
      'summer': 'Peak season',
      'fall': 'Still active',
      'winter': 'Deeper water'
    },
    category: 'saltwater',
    family: 'Snapper',
    techniques: ['Bottom Fishing', 'Vertical Jigging', 'Live Baiting'],
  ),
];

// Additional Reef Fish
final List<FishSpecies> additionalReefFishes = [
  FishSpecies(
    id: 'grouper_gag',
    name: 'Gag Grouper',
    scientificName: 'Mycteroperca microlepis',
    description: 'Popular grouper known for strong bottom runs',
    habitat: 'Rocky bottoms and reefs',
    behavior: 'Structure oriented, ambush predator',
    bestBait: 'Live pinfish, large jigs, cut bait',
    bestTime: 'Year round',
    imageUrl: 'assets/images/species/grouper_gag.jpg',
    regulations: {'size_limit': '24 inches', 'bag_limit': '2 per person'},
    commonLocations: ['Rock piles', 'Ledges', 'Artificial reefs'],
    typicalSize: {'length_min': 20, 'length_max': 50, 'weight_min': 10, 'weight_max': 80},
    seasonalPatterns: {
      'spring': 'Moving shallow',
      'summer': 'Deeper reefs',
      'fall': 'Active feeding',
      'winter': 'Spawning season'
    },
    category: 'saltwater',
    family: 'Grouper',
    techniques: ['Bottom fishing', 'Vertical jigging', 'Trolling deep'],
  ),
  FishSpecies(
    id: 'snapper_mutton',
    name: 'Mutton Snapper',
    scientificName: 'Lutjanus analis',
    description: 'Prized snapper species known for intelligence',
    habitat: 'Reefs and rubble areas',
    behavior: 'Cautious feeder, more active at night',
    bestBait: 'Live pilchards, cut bait, shrimp',
    bestTime: 'Dawn and dusk',
    imageUrl: 'assets/images/species/snapper_mutton.jpg',
    regulations: {'size_limit': '18 inches', 'bag_limit': '5 per person'},
    commonLocations: ['Reef edges', 'Patch reefs', 'Channel walls'],
    typicalSize: {'length_min': 16, 'length_max': 34, 'weight_min': 5, 'weight_max': 25},
    seasonalPatterns: {
      'spring': 'Pre-spawn gathering',
      'summer': 'Spawning season',
      'fall': 'Scattered fish',
      'winter': 'Deeper waters'
    },
    category: 'saltwater',
    family: 'Snapper',
    techniques: ['Bottom fishing', 'Live baiting', 'Drift fishing'],
  ),
];

// Additional Reef Species
final List<FishSpecies> moreReefFishes = [
  FishSpecies(
    id: 'grouper_warsaw',
    name: 'Warsaw Grouper',
    scientificName: 'Epinephelus nigritus',
    description: 'Deep-water grouper known for enormous size',
    habitat: 'Deep reefs and wrecks',
    behavior: 'Deep water ambush predator',
    bestBait: 'Large live baits, deep jigs',
    bestTime: 'Year round in deep water',
    imageUrl: 'assets/images/species/grouper_warsaw.jpg',
    regulations: {'size_limit': 'Protected in some areas', 'bag_limit': 'Check local regulations'},
    commonLocations: ['Deep wrecks', 'Rock ledges', 'Deep reefs'],
    typicalSize: {'length_min': 40, 'length_max': 90, 'weight_min': 20, 'weight_max': 400},
    seasonalPatterns: {
      'spring': 'Deep structure',
      'summer': 'Deep water',
      'fall': 'Feeding period',
      'winter': 'Deep refuges'
    },
    category: 'saltwater',
    family: 'Grouper',
    techniques: ['Deep dropping', 'Electric reels', 'Heavy tackle'],
  ),
  FishSpecies(
    id: 'snapper_yellowtail',
    name: 'Yellowtail Snapper',
    scientificName: 'Ocyurus chrysurus',
    description: 'Fast-swimming reef fish known for light tackle action',
    habitat: 'Reef edges and drop-offs',
    behavior: 'Schooling, active in current',
    bestBait: 'Small live baits, chum, jigs',
    bestTime: 'Dawn and dusk',
    imageUrl: 'assets/images/species/snapper_yellowtail.jpg',
    regulations: {'size_limit': '12 inches', 'bag_limit': '10 per person'},
    commonLocations: ['Reef edges', 'Channel humps', 'Wrecks'],
    typicalSize: {'length_min': 12, 'length_max': 24, 'weight_min': 1, 'weight_max': 8},
    seasonalPatterns: {
      'spring': 'Active feeding',
      'summer': 'Peak season',
      'fall': 'Good action',
      'winter': 'Deeper water'
    },
    category: 'saltwater',
    family: 'Snapper',
    techniques: ['Chumming', 'Light tackle', 'Drift fishing'],
  ),
];

// Coastal Pelagics
final List<FishSpecies> coastalPelagics = [
  FishSpecies(
    id: 'mackerel_spanish',
    name: 'Spanish Mackerel',
    scientificName: 'Scomberomorus maculatus',
    description: 'Fast-moving coastal predator',
    habitat: 'Coastal waters and bays',
    behavior: 'Schooling fish, fast swimmer',
    bestBait: 'Small spoons, live bait',
    bestTime: 'Early morning',
    imageUrl: 'assets/images/species/mackerel_spanish.jpg',
    regulations: {'size_limit': '12 inches', 'bag_limit': '15 per day'},
    commonLocations: ['Inlets', 'Beaches', 'Bait schools'],
    typicalSize: {'length_min': 12, 'length_max': 24, 'weight_min': 1, 'weight_max': 6},
    seasonalPatterns: {
      'spring': 'Moving north',
      'summer': 'Peak season',
      'fall': 'Moving south',
      'winter': 'Southern waters'
    },
  ),
  FishSpecies(
    id: 'kingfish',
    name: 'King Mackerel',
    scientificName: 'Scomberomorus cavalla',
    description: 'Fast-swimming predator known for blistering runs',
    habitat: 'Coastal waters, reefs, and wrecks',
    behavior: 'Aggressive predator, follows bait schools',
    bestBait: 'Live blue runners, ribbonfish, spoons',
    bestTime: 'Early morning',
    imageUrl: 'assets/images/species/kingfish.jpg',
    regulations: {'size_limit': '24 inches', 'bag_limit': '3 per person'},
    commonLocations: ['Reef edges', 'Shipping channels', 'Bait schools'],
    typicalSize: {'length_min': 24, 'length_max': 60, 'weight_min': 8, 'weight_max': 50},
    seasonalPatterns: {
      'spring': 'Beginning migration',
      'summer': 'Peak season',
      'fall': 'Fall run',
      'winter': 'Southern waters'
    },
    category: 'saltwater',
    family: 'Mackerel',
    techniques: ['Trolling', 'Live Baiting', 'Drift Fishing'],
  ),
];

// Coastal Gamefish
final List<FishSpecies> coastalGamefish = [
  FishSpecies(
    id: 'bluefish',
    name: 'Bluefish',
    scientificName: 'Pomatomus saltatrix',
    description: 'Aggressive predator known for savage strikes',
    habitat: 'Coastal waters, inlets, beaches',
    behavior: 'Schooling, aggressive feeding',
    bestBait: 'Metal lures, live mullet, topwater',
    bestTime: 'Early morning and evening',
    imageUrl: 'assets/images/species/bluefish.jpg',
    regulations: {'size_limit': '12 inches', 'bag_limit': '10 per person'},
    commonLocations: ['Inlets', 'Beach fronts', 'Rips'],
    typicalSize: {'length_min': 12, 'length_max': 36, 'weight_min': 2, 'weight_max': 20},
    seasonalPatterns: {
      'spring': 'Migration north',
      'summer': 'Peak season',
      'fall': 'Feeding blitzes',
      'winter': 'Southern waters'
    },
    category: 'saltwater',
    family: 'Pomatomidae',
    techniques: ['Casting', 'Trolling', 'Surf fishing'],
  ),
  FishSpecies(
    id: 'jack_crevalle',
    name: 'Jack Crevalle',
    scientificName: 'Caranx hippos',
    description: 'Hard-fighting jack known for endurance',
    habitat: 'Coastal waters, inlets, bays',
    behavior: 'Aggressive schooling predator',
    bestBait: 'Live mullet, topwater lures, jigs',
    bestTime: 'Morning and evening',
    imageUrl: 'assets/images/species/jack_crevalle.jpg',
    regulations: {'size_limit': 'None', 'bag_limit': 'None'},
    commonLocations: ['Inlets', 'Beaches', 'Bays'],
    typicalSize: {'length_min': 20, 'length_max': 40, 'weight_min': 5, 'weight_max': 40},
    seasonalPatterns: {
      'spring': 'Moving inshore',
      'summer': 'Peak season',
      'fall': 'Feeding heavily',
      'winter': 'Moving south'
    },
    category: 'saltwater',
    family: 'Jack',
    techniques: ['Surface plugs', 'Live bait', 'Jigging'],
  ),
];

// Deep Water Species
final List<FishSpecies> deepWaterSpecies = [
  FishSpecies(
    id: 'swordfish',
    name: 'Swordfish',
    scientificName: 'Xiphias gladius',
    description: 'Deep water predator known for its sword-like bill',
    habitat: 'Deep offshore waters, temperature breaks',
    behavior: 'Solitary, follows temperature breaks',
    bestBait: 'Squid, mackerel, deep-dropping jigs',
    bestTime: 'Night fishing',
    imageUrl: 'assets/images/species/swordfish.jpg',
    regulations: {'size_limit': '47 inches LJFL', 'bag_limit': '1 per person'},
    commonLocations: ['Deep canyons', 'Shelf edges', 'Temperature breaks'],
    typicalSize: {'length_min': 50, 'length_max': 120, 'weight_min': 50, 'weight_max': 500},
    seasonalPatterns: {
      'spring': 'Following currents',
      'summer': 'Deep water',
      'fall': 'Peak season',
      'winter': 'Southern waters'
    },
    category: 'saltwater',
    family: 'Xiphiidae',
    techniques: ['Deep dropping', 'Night fishing', 'Drifting'],
  ),
  FishSpecies(
    id: 'tilefish_golden',
    name: 'Golden Tilefish',
    scientificName: 'Lopholatilus chamaeleonticeps',
    description: 'Deep water bottom dweller known for taste',
    habitat: 'Deep water mud bottoms',
    behavior: 'Bottom dweller, makes burrows',
    bestBait: 'Cut bait, squid, strip baits',
    bestTime: 'Daytime',
    imageUrl: 'assets/images/species/tilefish_golden.jpg',
    regulations: {'size_limit': 'None', 'bag_limit': '8 per person'},
    commonLocations: ['Mud bottoms', 'Deep drops', 'Canyon edges'],
    typicalSize: {'length_min': 20, 'length_max': 40, 'weight_min': 5, 'weight_max': 50},
    seasonalPatterns: {
      'spring': 'More active',
      'summer': 'Deep water',
      'fall': 'Good fishing',
      'winter': 'Deep water'
    },
    category: 'saltwater',
    family: 'Malacanthidae',
    techniques: ['Deep dropping', 'Electric reels', 'Bottom fishing'],
  ),
];

// Additional Coastal Species
final List<FishSpecies> additionalCoastalSpecies = [
  FishSpecies(
    id: 'drum_black',
    name: 'Black Drum',
    scientificName: 'Pogonias cromis',
    description: 'Large bottom feeder known for size and power',
    habitat: 'Coastal waters, inlets, bridges',
    behavior: 'Bottom feeder, uses barbels to detect prey',
    bestBait: 'Crabs, shrimp, clams',
    bestTime: 'High tide',
    imageUrl: 'assets/images/species/drum_black.jpg',
    regulations: {'size_limit': '14-24 inches slot', 'bag_limit': '5 per person'},
    commonLocations: ['Bridge pilings', 'Oyster beds', 'Channel edges'],
    typicalSize: {'length_min': 20, 'length_max': 50, 'weight_min': 5, 'weight_max': 100},
    seasonalPatterns: {
      'spring': 'Spawning season',
      'summer': 'Scattered',
      'fall': 'Good fishing',
      'winter': 'Deep holes'
    },
    category: 'saltwater',
    family: 'Sciaenidae',
    techniques: ['Bottom fishing', 'Structure fishing', 'Sight fishing'],
  ),
  FishSpecies(
    id: 'flounder_summer',
    name: 'Summer Flounder',
    scientificName: 'Paralichthys dentatus',
    description: 'Popular flatfish known for table fare',
    habitat: 'Sandy bottoms, inlets, bays',
    behavior: 'Ambush predator, lies on bottom',
    bestBait: 'Live minnows, strip baits, jigs',
    bestTime: 'Moving tide',
    imageUrl: 'assets/images/species/flounder_summer.jpg',
    regulations: {'size_limit': '18 inches', 'bag_limit': '4 per person'},
    commonLocations: ['Inlet edges', 'Sandy bottoms', 'Drop-offs'],
    typicalSize: {'length_min': 14, 'length_max': 30, 'weight_min': 1, 'weight_max': 15},
    seasonalPatterns: {
      'spring': 'Moving inshore',
      'summer': 'Peak season',
      'fall': 'Migration',
      'winter': 'Offshore'
    },
    category: 'saltwater',
    family: 'Paralichthyidae',
    techniques: ['Drift fishing', 'Jigging', 'Live bait'],
  ),
];

// Exotic Species
final List<FishSpecies> exoticSpecies = [
  FishSpecies(
    id: 'roosterfish',
    name: 'Roosterfish',
    scientificName: 'Nematistius pectoralis',
    description: 'Distinctive game fish with rooster-like dorsal fin',
    habitat: 'Sandy beaches, rocky points',
    behavior: 'Aggressive predator, surf zone hunter',
    bestBait: 'Live mullet, poppers, stick baits',
    bestTime: 'Early morning',
    imageUrl: 'assets/images/species/roosterfish.jpg',
    regulations: {'size_limit': 'Varies by location', 'bag_limit': 'Check local regulations'},
    commonLocations: ['Beach breaks', 'Rocky points', 'Surf zones'],
    typicalSize: {'length_min': 20, 'length_max': 60, 'weight_min': 10, 'weight_max': 100},
    seasonalPatterns: {
      'spring': 'Starting to appear',
      'summer': 'Peak season',
      'fall': 'Good fishing',
      'winter': 'Less active'
    },
    category: 'saltwater',
    family: 'Nematistiidae',
    techniques: ['Surf casting', 'Live bait', 'Popping'],
  ),
  FishSpecies(
    id: 'trevally_giant',
    name: 'Giant Trevally',
    scientificName: 'Caranx ignobilis',
    description: 'Powerful jack known for explosive strikes',
    habitat: 'Reef edges, blue water',
    behavior: 'Aggressive predator, powerful fighter',
    bestBait: 'Live bait, poppers, stick baits',
    bestTime: 'Dawn and dusk',
    imageUrl: 'assets/images/species/trevally_giant.jpg',
    regulations: {'size_limit': 'Varies by location', 'bag_limit': 'Check local regulations'},
    commonLocations: ['Reef edges', 'Passes', 'Blue water'],
    typicalSize: {'length_min': 30, 'length_max': 70, 'weight_min': 20, 'weight_max': 170},
    seasonalPatterns: {
      'spring': 'Active feeding',
      'summer': 'Peak season',
      'fall': 'Good fishing',
      'winter': 'Less active'
    },
    category: 'saltwater',
    family: 'Carangidae',
    techniques: ['Popping', 'Live bait', 'Jigging'],
  ),
];

// Update the combined saltwater species list
final List<FishSpecies> saltwaterSpecies = [
  ...offshoreFishes,
  ...additionalOffshoreFishes,
  ...moreOffshoreFishes,
  ...inshoreFishes,
  ...additionalInshoreFishes,
  ...moreInshoreFishes,
  ...reefFishes,
  ...additionalReefFishes,
  ...moreReefFishes,
  ...coastalPelagics,
  ...coastalGamefish,
  ...deepWaterSpecies,
  ...additionalCoastalSpecies,
  ...exoticSpecies,
];
