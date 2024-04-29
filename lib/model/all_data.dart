import 'package:image_gallery/model/item_list.dart';

class Database {
  static List<CategoryItem> categoryList = [
    CategoryItem(
      categoryName: 'Mood',
      description:
          "Being in nature, Or Even Viewing Scenes of natural, Reduces anger fear, And Stress And Increases pleasant feelings",
      title: "Mood With Nature",
      image:
          'https://images.pexels.com/photos/395196/pexels-photo-395196.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      imageItem: [
        ImageItem(
            imageUrl:
                "https://images.pexels.com/photos/1292301/pexels-photo-1292301.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            title: "Mode Natural Image",
            description: ""),
        ImageItem(
            imageUrl:
                "https://images.pexels.com/photos/1287135/pexels-photo-1287135.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            title: "Natural Beauty",
            description: ""),
      ],
    ),
    CategoryItem(
      categoryName: 'Aesthetic',
      description:
          "Aesthetic images are basically pleasing pictures that focus on a certain feeling or mood. They can be anything from nature scenes to cityscapes, portraits to objects, as long as the overall impression is beautiful or evocative.",
      title: "Feeling or mood",
      image:
          'https://images.pexels.com/photos/3685271/pexels-photo-3685271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      imageItem: [
        ImageItem(
            imageUrl:
                "https://images.pexels.com/photos/4982737/pexels-photo-4982737.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            title: "Aesthetic Image",
            description:
                "Aesthetic images are basically pleasing pictures that focus on a certain feeling or mood. They can be anything from nature scenes to cityscapes, portraits to objects, as long as the overall impression is beautiful or evocative."),
        ImageItem(
            imageUrl:
                "https://images.pexels.com/photos/3135801/pexels-photo-3135801.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            title: "ss",
            description:
                "Aesthetic images are basically pleasing pictures that focus on a certain feeling or mood. They can be anything from nature scenes to cityscapes, portraits to objects, as long as the overall impression is beautiful or evocative."),
      ],
    ),
    CategoryItem(
        categoryName: 'Animals',
        description:
            "Animal images are pictures featuring all sorts of creatures, from the familiar pets we share our homes with to the exotic wildlife that roams across the globe. They can capture the majesty of a lion's roar, the playfulness of a puppy's chase, or the elegance of a bird in flight.",
        title: "The Majesty and Mystery of Animals",
        image:
            'https://images.pexels.com/photos/47547/squirrel-animal-cute-rodents-47547.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        imageItem: [
          ImageItem(
              imageUrl:
                  "https://images.pexels.com/photos/66898/elephant-cub-tsavo-kenya-66898.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              title: "Elephant",
              description:
                  "Animal images are pictures featuring all sorts of creatures, from the familiar pets we share our homes with to the exotic wildlife that roams across the globe. They can capture the majesty of a lion's roar, the playfulness of a puppy's chase, or the elegance of a bird in flight."),
          ImageItem(
              imageUrl:
                  "https://images.pexels.com/photos/34098/south-africa-hluhluwe-giraffes-pattern.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              title: "Giraffe",
              description:
                  "Animal images are pictures featuring all sorts of creatures, from the familiar pets we share our homes with to the exotic wildlife that roams across the globe. They can capture the majesty of a lion's roar, the playfulness of a puppy's chase, or the elegance of a bird in flight."),
          ImageItem(
              imageUrl:
                  "https://images.pexels.com/photos/37833/rainbow-lorikeet-parrots-australia-rainbow-37833.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              title: "Birds",
              description:
                  "Animal images are pictures featuring all sorts of creatures, from the familiar pets we share our homes with to the exotic wildlife that roams across the globe. They can capture the majesty of a lion's roar, the playfulness of a puppy's chase, or the elegance of a bird in flight."),
        ]),
    CategoryItem(
        categoryName: 'City',
        description:
            "City images transport us to the heart of bustling metropolises and charming towns. They capture the towering skyscrapers of financial districts, the winding alleyways of historic quarters, and the vibrant energy of street markets.  These photos can showcase a city's architectural wonders, its unique culture, or the everyday lives of its people. Whether bathed in the warm glow of sunrise or illuminated by the city lights at night, cityscapes offer a glimpse into the dynamic and ever-evolving world of urban life.",
        title: "A World of Urban Majesty",
        image:
            'https://images.pexels.com/photos/466685/pexels-photo-466685.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        imageItem: [
          ImageItem(
              imageUrl:
                  "https://images.pexels.com/photos/169647/pexels-photo-169647.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              title: "City 1",
              description:
                  "City images transport us to the heart of bustling metropolises and charming towns. They capture the towering skyscrapers of financial districts, the winding alleyways of historic quarters, and the vibrant energy of street markets.  These photos can showcase a city's architectural wonders, its unique culture, or the everyday lives of its people. Whether bathed in the warm glow of sunrise or illuminated by the city lights at night, cityscapes offer a glimpse into the dynamic and ever-evolving world of urban life."),
          ImageItem(
              imageUrl:
                  "https://images.pexels.com/photos/13739807/pexels-photo-13739807.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              title: "City 2",
              description:
                  "City images transport us to the heart of bustling metropolises and charming towns. They capture the towering skyscrapers of financial districts, the winding alleyways of historic quarters, and the vibrant energy of street markets.  These photos can showcase a city's architectural wonders, its unique culture, or the everyday lives of its people. Whether bathed in the warm glow of sunrise or illuminated by the city lights at night, cityscapes offer a glimpse into the dynamic and ever-evolving world of urban life."),
        ]),
    CategoryItem(
        categoryName: 'Travel',
        description:
            "Travel images ignite our sense of wanderlust and transport us to far-flung corners of the globe. They capture the breathtaking beauty of natural wonders, the bustling energy of foreign cities, and the serenity of peaceful landscapes.  These photos can document the unique cultures we encounter, the adventures we embark on, and the memories we create along the way. From the snow-capped peaks of mountain ranges to the turquoise waters of tropical beaches, travel photography allows us to experience the world's diversity and fuels our desire to explore.",
        title: "A Journey Through Travel Photography",
        image:
            'https://images.pexels.com/photos/1008155/pexels-photo-1008155.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        imageItem: [
          ImageItem(
              imageUrl:
                  "https://images.pexels.com/photos/1371360/pexels-photo-1371360.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              title: "Travel Image 1",
              description:
                  "Travel images ignite our sense of wanderlust and transport us to far-flung corners of the globe. They capture the breathtaking beauty of natural wonders, the bustling energy of foreign cities, and the serenity of peaceful landscapes.  These photos can document the unique cultures we encounter, the adventures we embark on, and the memories we create along the way. From the snow-capped peaks of mountain ranges to the turquoise waters of tropical beaches, travel photography allows us to experience the world's diversity and fuels our desire to explore"),
          ImageItem(
              imageUrl:
                  "https://images.pexels.com/photos/2174656/pexels-photo-2174656.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              title: "Travel Image 2",
              description:
                  "Travel images ignite our sense of wanderlust and transport us to far-flung corners of the globe. They capture the breathtaking beauty of natural wonders, the bustling energy of foreign cities, and the serenity of peaceful landscapes.  These photos can document the unique cultures we encounter, the adventures we embark on, and the memories we create along the way. From the snow-capped peaks of mountain ranges to the turquoise waters of tropical beaches, travel photography allows us to experience the world's diversity and fuels our desire to explore"),
        ]),
    CategoryItem(
        categoryName: 'Sky',
        description:
            "Sky images showcase the vast and ever-changing canvas above us. They capture the vibrant hues of sunrise and sunset, the serenity of a clear blue sky dotted with fluffy clouds, or the dramatic power of a storm brewing.  These photos can evoke a sense of peace, inspire awe at nature's grandeur, or even hint at the mysteries that lie beyond our atmosphere.  From the delicate dance of light and shadow at twilight to the mesmerizing spectacle of the Milky Way, sky images remind us of the beauty and wonder that surrounds us.",
        title: "Unveiling the Beauty of the Sky",
        image:
            'https://images.pexels.com/photos/844297/pexels-photo-844297.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        imageItem: [
          ImageItem(
              imageUrl:
                  "https://images.pexels.com/photos/844297/pexels-photo-844297.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              title: "Sky 1",
              description:
                  "Sky images showcase the vast and ever-changing canvas above us. They capture the vibrant hues of sunrise and sunset, the serenity of a clear blue sky dotted with fluffy clouds, or the dramatic power of a storm brewing.  These photos can evoke a sense of peace, inspire awe at nature's grandeur, or even hint at the mysteries that lie beyond our atmosphere.  From the delicate dance of light and shadow at twilight to the mesmerizing spectacle of the Milky Way, sky images remind us of the beauty and wonder that surrounds us."),
          ImageItem(
              imageUrl:
                  "https://images.pexels.com/photos/3783385/pexels-photo-3783385.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              title: "Sky 2",
              description:
                  "Sky images showcase the vast and ever-changing canvas above us. They capture the vibrant hues of sunrise and sunset, the serenity of a clear blue sky dotted with fluffy clouds, or the dramatic power of a storm brewing.  These photos can evoke a sense of peace, inspire awe at nature's grandeur, or even hint at the mysteries that lie beyond our atmosphere.  From the delicate dance of light and shadow at twilight to the mesmerizing spectacle of the Milky Way, sky images remind us of the beauty and wonder that surrounds us."),
        ]),
    CategoryItem(
        categoryName: 'Road',
        description:
            "Road images transport us on a visual journey down scenic routes and bustling highways. They capture the winding paths through lush forests, the endless stretches of desert highways, or the neon-lit streets of a city at night.  These photos can evoke a sense of wanderlust, the freedom of the open road, or the quiet contemplation of a solo journey.  Whether leading towards a majestic mountain range or disappearing into the horizon, road images represent the paths we take, the destinations we seek, and the adventures that await us.",
        title: "Journeys Down Scenic Routes",
        image:
            'https://images.pexels.com/photos/1955134/pexels-photo-1955134.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        imageItem: [
          ImageItem(
              imageUrl:
                  "https://images.pexels.com/photos/56832/road-asphalt-space-sky-56832.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              title: "Road 1",
              description:
                  "Road images transport us on a visual journey down scenic routes and bustling highways. They capture the winding paths through lush forests, the endless stretches of desert highways, or the neon-lit streets of a city at night.  These photos can evoke a sense of wanderlust, the freedom of the open road, or the quiet contemplation of a solo journey.  Whether leading towards a majestic mountain range or disappearing into the horizon, road images represent the paths we take, the destinations we seek, and the adventures that await us."),
          ImageItem(
              imageUrl:
                  "https://images.pexels.com/photos/52531/way-clouds-seat-belts-direction-52531.jpeg?auto=compress&cs=tinysrgb&w=600",
              title: "Road 1",
              description:
                  "Road images transport us on a visual journey down scenic routes and bustling highways. They capture the winding paths through lush forests, the endless stretches of desert highways, or the neon-lit streets of a city at night.  These photos can evoke a sense of wanderlust, the freedom of the open road, or the quiet contemplation of a solo journey.  Whether leading towards a majestic mountain range or disappearing into the horizon, road images represent the paths we take, the destinations we seek, and the adventures that await us."),
        ]),
    CategoryItem(
        categoryName: 'Flowers',
        description:
            "Flower images are a vibrant celebration of nature's artistry. They capture the delicate beauty of a single blossom, the explosion of color in a flower field, or the elegant symmetry of a rose.  These photos can showcase the vast diversity of the floral world, from the humble daisy to the exotic orchid.  Flower images can evoke feelings of joy, peace, or even a sense of romance. They can represent new beginnings, growth, or the delicate balance of nature. Whether bathed in soft morning light or sparkling with dewdrops, flower images remind us of the simple beauty that surrounds us.",
        title: "Flowers Nature",
        image:
            'https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
        imageItem: [
          ImageItem(
              imageUrl:
                  "https://images.pexels.com/photos/736230/pexels-photo-736230.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              title: "Image 1",
              description:
                  "Flower images are a vibrant celebration of nature's artistry. They capture the delicate beauty of a single blossom, the explosion of color in a flower field, or the elegant symmetry of a rose.  These photos can showcase the vast diversity of the floral world, from the humble daisy to the exotic orchid.  Flower images can evoke feelings of joy, peace, or even a sense of romance. They can represent new beginnings, growth, or the delicate balance of nature. Whether bathed in soft morning light or sparkling with dewdrops, flower images remind us of the simple beauty that surrounds us."),
          ImageItem(
              imageUrl:
                  "https://images.pexels.com/photos/736230/pexels-photo-736230.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              title: "Image 2",
              description:
                  "Flower images are a vibrant celebration of nature's artistry. They capture the delicate beauty of a single blossom, the explosion of color in a flower field, or the elegant symmetry of a rose.  These photos can showcase the vast diversity of the floral world, from the humble daisy to the exotic orchid.  Flower images can evoke feelings of joy, peace, or even a sense of romance. They can represent new beginnings, growth, or the delicate balance of nature. Whether bathed in soft morning light or sparkling with dewdrops, flower images remind us of the simple beauty that surrounds us."),
        ]),
  ];
}
