

import Foundation

enum RestaurantCategory: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }

    case american = "American"
    case chinese = "Chinese"
    case japanese = "Japanese"
       case italian = "Italian"

//    case mexican = "Mexican"
//    case vegan = "Vegan"

    case thai = "Thai"
    case breakfastAndBrunch = "Breakfast and Brunch"
    case fastFood = "Fast Food"
    case coffeeAndTea = "Sweets"
    case pizza = "Pizza"
    case healthy = "Healthy"
}

struct Restaurant: Identifiable, Hashable {
    var id = UUID()
    var category: RestaurantCategory.RawValue
    var name: String
    var image: String
    var rating: Double
    var address: String
    var menu: [Dish]
    var isPopular: Bool
    
    init(category: RestaurantCategory.RawValue, name: String, image: String, rating: Double, address: String, menu: [Dish],  isPopular: Bool = false) {
        self.category = category
        self.name = name
        self.image  = image
        self.rating = rating
        self.address = address
        self.menu = menu
        self.isPopular = isPopular
    }
}

extension Restaurant {
    static let all: [Restaurant] = [
        // AMERICAN
        Restaurant(
            category: "American",
            name: "B-Factory",
            image: "https://s3-media0.fl.yelpcdn.com/bphoto/fv29eaWdSfj2AtgZNuP1DQ/o.jpg",
            rating: 4.3,
            address: "Via Nazario Sauro, 8, 80132 Napoli NA",
            menu: Dish.all.filter { $0.restaurant == "B-Factory" },
            isPopular: true
        ),
        Restaurant(
            category: "American",
            name: "Gnam",
            image: "https://scontent-fco2-1.xx.fbcdn.net/v/t39.30808-6/300948899_927362668216525_466447595728261374_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=5f2048&_nc_ohc=3zzvfTuf-TMQ7kNvgESWnvr&_nc_ht=scontent-fco2-1.xx&oh=00_AYCTeSqynoWrhxA-BZC8xfxze7-w0tDU7DUwwuDK8dqqCw&oe=666CDDF5",
            rating: 3.6,
            address: "Via Ponte di Tappia, 66, 80133 Napoli NA",
            menu: Dish.all.filter { $0.restaurant == "Gnam" }
        ),
        Restaurant(
            category: "American",
            name: "12 Morsi | Napoli",
            image: "https://scattidigusto.b-cdn.net/wp-content/uploads/2016/06/hamburger-12-Morsi-Sposito.jpg",
            rating: 4.4,
            address: "Via Alabardieri, 34/35/36, 80121 Napoli NA",
            menu: Dish.all.filter { $0.restaurant == "12 Morsi | Napoli" },
            isPopular: true
        ),
        Restaurant(
            category: "American",
            name: "Frank Pub",
            image: "https://www.napolike.it/turismo/wp-content/uploads/2017/01/pub-hamburgeria.jpg",
            rating: 3.4,
            address: "Via Santa Teresa degli Scalzi, 118, 80135 Napoli NA",
            menu: Dish.all.filter { $0.restaurant == "Frank Pub" }
        ),


        // CHINESE
        Restaurant(
            category: "Chinese",
            name: "La Muraglia Chuanchao",
            image: "https://citynews-napolitoday.stgy.ovh/~media/horizontal-hi/7847824910662/copertina-cucina-cinese-2.jpg",
            rating: 4.2,
            address: "Via Giulio Cesare Cortese, 8, 80133 Napoli NA",
            menu: Dish.all.filter { $0.restaurant == "La Muraglia Chuanchao" },
            isPopular: true
        ),
        Restaurant(
            category: "Chinese",
            name: "Naples Asian food",
            image: "https://scontent-fco2-1.xx.fbcdn.net/v/t39.30808-6/302468192_592034765949594_6662978128699929513_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=5f2048&_nc_ohc=etFghdFQTykQ7kNvgEBu1GY&_nc_ht=scontent-fco2-1.xx&oh=00_AYD_SRlTJGMJ-cMhEH5aULt9IxBg1xJNvKePYLqdHxB3MQ&oe=666CD7CD",
            rating: 3.9,
            address: "150, Via Francesco Saverio Correra, 147, 80135 Napoli NA",
            menu: Dish.all.filter { $0.restaurant == "Naples Asian food" }
        ),
        Restaurant(
            category: "Chinese",
            name: "好味道点心店",
            image: "https://www.thespruceeats.com/thmb/-mtgGMcCCmJhjY2KqImVP3OtFL4=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/chinese-take-out-472927590-57d31fff3df78c5833464e7b.jpg",
            rating: 4.6,
            address: "Corso Novara, 3, 80142 Napoli NA",
            menu: Dish.all.filter { $0.restaurant == "好味道点心店" }
        ),
        Restaurant(
            category: "Chinese",
            name: "La città d'oro",
            image: "https://scontent-fco2-1.xx.fbcdn.net/v/t39.30808-6/395407702_827411096051150_6563208955926103293_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=5f2048&_nc_ohc=CPDtReOIFV0Q7kNvgGRWqnr&_nc_ht=scontent-fco2-1.xx&oh=00_AYDZ2tCW38w1lNs1A6VIIOhoY0tnJzm_sKJoYxYTAMDEgw&oe=666CF0CF",
            rating: 4.1,
            address: "Piazza Francese, 22, 80133 Napoli NA",
            menu: Dish.all.filter { $0.restaurant == "La città d'oro" },
            isPopular: true
        ),


//        // JAPANESE
//        Restaurant(
//            category: "Japanese",
//            name: "Tenya Japanese Eatery",
//            image: "https://media-cdn.tripadvisor.com/media/photo-s/0d/ed/4a/25/caption.jpg",
//            rating: 4.3,
//            address: "10 East End Center",
//            menu: Dish.all.filter { $0.restaurant == "Tenya Japanese Eatery" },
//            isPopular: true
//        ),
//        Restaurant(
//            category: "Japanese",
//            name: "CoCo Ichibanya",
//            image: "https://cdn.vox-cdn.com/thumbor/O4hfza3mIKtZfc6AR6jpTl_gaSI=/0x0:900x631/1200x800/filters:focal(378x244:522x388)/cdn.vox-cdn.com/uploads/chorus_image/image/66371464/cocoich2.0.jpg",
//            rating: 4.2,
//            address: "945 Woodland Rd",
//            menu: Dish.all.filter { $0.restaurant == "CoCo Ichibanya" }
//        ),
//        Restaurant(
//            category: "Japanese",
//            name: "Tonchin",
//            image: "https://savorjapan.com/gg/content_image/t0005_001_20171208021347.jpg",
//            rating: 3.8,
//            address: "Co Shopping Center, 255 Market St",
//            menu: Dish.all.filter { $0.restaurant == "Tonchin" }
//        ),
//        Restaurant(
//            category: "Japanese",
//            name: "Sushi Tama",
//            image: "https://i.pinimg.com/564x/6f/b5/93/6fb59351d5fd5cef192116703bc11208.jpg",
//            rating: 3.7,
//            address: "2090 E Lincoln Hwy, Lancaster",
//            menu: Dish.all.filter { $0.restaurant == "Sushi Tama" },
//            isPopular: true
//        ),
//        Restaurant(
//            category: "Japanese",
//            name: "Ootoya",
//            image: "https://ootoya.us/wp-content/uploads/2020/04/43_katsu-ju.jpg",
//            rating: 4.8,
//            address: "800 Lehigh Center",
//            menu: Dish.all.filter { $0.restaurant == "Ootoya" }
//        ),
//        Restaurant(
//            category: "Japanese",
//            name: "Ippudo",
//            image: "https://static01.nyt.com/images/2021/01/06/dining/04Burner-Ramen/04Burner-Ramen-superJumbo.jpg",
//            rating: 4.5,
//            address: "223 Shoemaker Rd",
//            menu: Dish.all.filter { $0.restaurant == "Ippudo" }
//        ),


//        // THAI
//        Restaurant(
//            category: "Thai",
//            name: "Lotus of Siam",
//            image: "https://media-cdn.tripadvisor.com/media/photo-p/1c/7f/2a/ba/photo1jpg.jpg",
//            rating: 4.2,
//            address: "1502 Scranton Carbondale Hwy",
//            menu: Dish.all.filter { $0.restaurant == "Lotus of Siam" },
//            isPopular: true
//        ),
//        Restaurant(
//            category: "Thai",
//            name: "Ruan Thai",
//            image: "https://img2.10bestmedia.com/Images/Photos/336849/KK1fish1_55_660x440.jpg",
//            rating: 4.4,
//            address: "407 W Eisenhower Dr",
//            menu: Dish.all.filter { $0.restaurant == "Ruan Thai" }
//        ),
//        Restaurant(
//            category: "Thai",
//            name: "Sticky Rice",
//            image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXjY_zBQL2jwfwx1b_LDsb8GrAgn3I3YM5ABnUzcv6p51SHYz5949jl9M3jIzuIq3BcAM&usqp=CAU",
//            rating: 3.9,
//            address: "935 Wayne Ave",
//            menu: Dish.all.filter { $0.restaurant == "Sticky Rice" }
//        ),
//        
//        // BREAKFAST
//        Restaurant(
//            category: "Breakfast and Brunch",
//            name: "Paris Baguette",
//            image: "https://d1ralsognjng37.cloudfront.net/7be804de-b778-4b33-acdc-af9e09b42f98.jpeg",
//            rating: 4.7,
//            address: "3816 Chesnut Street",
//            menu: Dish.all.filter { $0.restaurant == "Paris Baguette" }
//        ),
//        Restaurant(
//            category: "Breakfast and Brunch",
//            name: "IHOP",
//            image: "https://www.chewboom.com/wp-content/uploads/2020/06/IHOP-Introduces-New-Crepes-Cakes-Breakfast-678x381.jpg",
//            rating: 4.2,
//            address: "1320 Walnut Street",
//            menu: Dish.all.filter { $0.restaurant == "IHOP" }
//        ),
//        Restaurant(
//            category: "Breakfast and Brunch",
//            name: "Hatch & Coop",
//            image: "https://img.hoodline.com/uploads/story/image/99240/Hatch_&_Coop_Photo_2_Enhanced.jpg",
//            rating: 4.5,
//            address: "3328 Chambers Rd",
//            menu: Dish.all.filter { $0.restaurant == "Hatch & Coop" }
//        ),
//        
//        
//        // FAST FOOD
//        Restaurant(
//            category: "Fast Food",
//            name: "Chick-fil-A",
//            image: "https://i.insider.com/568bf337dd0895b53c8b4751?width=750&format=jpeg&auto=webp",
//            rating: 4.5,
//            address: "2204 S Columbus Blvd",
//            menu: Dish.all.filter { $0.restaurant == "Chick-fil-A" },
//            isPopular: true
//        ),
//        Restaurant(
//            category: "Fast Food",
//            name: "Wendy's",
//            image: "https://tb-static.uber.com/prod/image-proc/processed_images/c63d052b73170f4d672bf961e731467a/3ac2b39ad528f8c8c5dc77c59abb683d.jpeg",
//            rating: 4.1,
//            address: "1515 Cowpath Rd",
//            menu: Dish.all.filter { $0.restaurant == "Wendy's" },
//            isPopular: true
//        ),
//        Restaurant(
//            category: "Fast Food",
//            name: "McDonalds's",
//            image: "https://www.mcdonalds.com/content/dam/sites/usa/nfl/publication/1PUB_McDelivery_v4_1168x520.jpg",
//            rating: 4.2,
//            address: "Grays Ferry",
//            menu: Dish.all.filter { $0.restaurant == "McDonalds's" },
//            isPopular: true
//        ),
//        Restaurant(
//            category: "Fast Food",
//            name: "Popeyes",
//            image: "https://d1ralsognjng37.cloudfront.net/47f86765-ddd1-463f-b4a2-f102fb472dcd.jpeg",
//            rating: 4.5,
//            address: "120 Chestnut Street",
//            menu: Dish.all.filter { $0.restaurant == "Popeyes" }
//        ),
//        
//        // COFFEE AND TEA
//        Restaurant(
//            category: "Coffee and Tea",
//            name: "Starbucks",
//            image: "https://i.pinimg.com/564x/b6/9c/65/b69c656092e42d47d26674ec9a17fb5e.jpg",
//            rating: 4.7,
//            address: "16th & Walnut",
//            menu: Dish.all.filter { $0.restaurant == "Starbucks" },
//            isPopular: true
//        ),
//        Restaurant(
//            category: "Coffee and Tea",
//            name: "Dunkin'",
//            image: "https://d1ralsognjng37.cloudfront.net/f2211e35-5e6b-4f33-a351-470f644fc483.jpeg",
//            rating: 4.5,
//            address: "30th & Market Street Station",
//            menu: Dish.all.filter { $0.restaurant == "Dunkin'" },
//            isPopular: true
//        ),
//        Restaurant(
//            category: "Coffee and Tea",
//            name: "Gong Cha",
//            image: "https://img.cdn4dd.com/cdn-cgi/image/fit=cover,width=600,height=400,format=auto,quality=80/https://doordash-static.s3.amazonaws.com/media/store/header/1a81cd83-73f2-496e-ab80-ac9a876d9661.jpg",
//            rating: 4.3,
//            address: "917 Arch St.",
//            menu: Dish.all.filter { $0.restaurant == "Gong Cha" }
//        ),
//        Restaurant(
//            category: "Coffee and Tea",
//            name: "A La Mousse",
//            image: "https://duyt4h9nfnj50.cloudfront.net/resized/9e075563df92a6bf674a45ca051adb37-w2880-21.jpg",
//            rating: 4.9,
//            address: "425 W Dekalb Pike",
//            menu: Dish.all.filter { $0.restaurant == "A La Mousse" }
//        ),
//        
//        // PIZZA
//        Restaurant(
//            category: "Pizza",
//            name: "Brooklyn Pizza",
//            image: "https://restaurantclicks.com/wp-content/uploads/2021/09/brooklyn-style-pizza-grimaldis.jpg",
//            rating: 4.3,
//            address: "1681 Wesel Blvd",
//            menu: Dish.all.filter { $0.restaurant == "Brooklyn Pizza" },
//            isPopular: true
//        ),
//        Restaurant(
//            category: "Pizza",
//            name: "Papa Johns",
//            image: "https://i.pinimg.com/564x/b7/40/90/b74090f29bff32f11a7d9bbbd3647908.jpg",
//            rating: 4.5,
//            address: "Girard Ave",
//            menu: Dish.all.filter { $0.restaurant == "Papa Johns" },
//            isPopular: true
//        ),
//        Restaurant(
//            category: "Pizza",
//            name: "&pizza Rittenhouse",
//            image: "https://tb-static.uber.com/prod/image-proc/processed_images/e2d9438ba8edd40cc7458cb51dabf4d3/3ac2b39ad528f8c8c5dc77c59abb683d.jpeg",
//            rating: 4.8,
//            address: "213 S 15th St, Lewisburg",
//            menu: Dish.all.filter { $0.restaurant == "&pizza Rittenhouse" },
//            isPopular: true
//        ),
//        
//        // HEALTHY
//        Restaurant(
//            category: "Healthy",
//            name: "DIG - Rittenhouse Square",
//            image: "https://d1ralsognjng37.cloudfront.net/787906c3-b043-421b-bf54-eff6d11bb663.jpeg",
//            rating: 4.6,
//            address: "240 Marketplace Boulevard",
//            menu: Dish.all.filter { $0.restaurant == "DIG - Rittenhouse Square" }
//        ),
//        Restaurant(
//            category: "Healthy",
//            name: "Honeygrow",
//            image: "https://images.getbento.com/accounts/4f414de3ec33336001dcb4ead38fcfb1/media/images/85935Spicy_Garlic.png?w=1800&fit=max&auto=compress,format&h=1800",
//            rating: 4.8,
//            address: "25 Liberty Ln",
//            menu: Dish.all.filter { $0.restaurant == "Honeygrow" }
//        ),
//        
//        // VEGAN
//        Restaurant(
//            category: "Vegan",
//            name: "Monster Vegan",
//            image: "https://d1ralsognjng37.cloudfront.net/d1546c0b-5630-4200-9753-71314811f80c.jpeg",
//            rating: 4.6,
//            address: "1229 Spruce St",
//            menu: Dish.all.filter { $0.restaurant == "Monster Vegan" }
//        ),
//        Restaurant(
//            category: "Vegan",
//            name: "Vegan vs Fries",
//            image: "https://cdn.doordash.com/media/photosV2/770f91e7-6e32-4d23-8bb4-1cb692508fcb-retina-large.jpg",
//            rating: 4.4,
//            address: "1978 Montour Blvd",
//            menu: Dish.all.filter { $0.restaurant == "Vegan vs Fries" }
//        )
    ]
}
        
