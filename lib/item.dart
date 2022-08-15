class Item{
  final String name;
  final String id;
  int favorite;
  final String imageUrl;

  Item({
    required this.name,
    required this.imageUrl,
    required this.favorite,
    required this.id,
  });
}

//para definir el texto que va a buscar nvoy a hacerlo vacío para mostrar toda la lista
String text ="";

//definir todos los items de la lista

List<Item>ITEM_LIST = [
  Item(name: "Featured",
  id:       "Featured",
  favorite: 0,
  imageUrl: "https://cdn.icon-icons.com/icons2/3601/PNG/512/gas_flight_balloon_aircraft_air_icon_226288.png",
  ),
  Item(name: "Meditation essentials",
  id:       "Meditation",
  favorite: 0,
  imageUrl: "https://cdn.icon-icons.com/icons2/3601/PNG/512/research_institute_observatory_lab_capital_icon_226315.png",
  ),
  Item(name: "Stress & anxiety",
  id:       "Meditation",
  favorite: 0,
  imageUrl: "https://cdn.icon-icons.com/icons2/3601/PNG/512/rainforest_jungle_forest_foliage_exotic_icon_226324.png",
  ),
  Item(name: "Falling asleep & waking up",
  id:       "Fallinng",
  favorite: 0,
  imageUrl: "https://cdn.icon-icons.com/icons2/3601/PNG/512/cruise_ship_sea_ocean_boat_icon_226297.png",
  ),
  Item(name: "Personal growth",
  id:       "Persomal",
  favorite: 0,
  imageUrl: "https://cdn.icon-icons.com/icons2/3601/PNG/512/snow_christmas_xmas_snowman_winter_icon_226327.png",
  ),
  Item(name: "Work & productivity",
  id:       "Meditation",
  favorite: 0,
  imageUrl: "https://cdn.icon-icons.com/icons2/3601/PNG/512/construction_architecture_building_development_city_icon_226310.png",
  ),
 Item(
  name: "Sleep",
  id:       "Sleep",
  favorite: 0,
  imageUrl: "https://cdn.icon-icons.com/icons2/3601/PNG/512/outdoor_snow_nature_mountains_mountain_icon_226314.png",
  ),

  Item(
  name: "Walk",
  id:       "Walk",
  favorite: 0,
  imageUrl: "https://cdn.icon-icons.com/icons2/3601/PNG/512/journey_road_street_asph_highway_icon_226304.png",
  ),

  Item(name: "Relax",
  id:       "Relax",
  favorite: 0,
  imageUrl: "https://cdn.icon-icons.com/icons2/3601/PNG/512/park_nature_forest_trees_tree_icon_226313.png",
  ),

  Item(name: "Morning",
  id:       "Morning",
  favorite: 0,
  imageUrl: "https://cdn.icon-icons.com/icons2/3601/PNG/512/mountains_landscape_hills_scenic_nature_icon_226305.png",
  ),
 
];