

import Foundation

enum RestaurantCategory: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }

    case american = "American"
    case chinese = "Chinese"
    case mexican = "Mexican"
    case italian = "Italian"
    case japanese = "Japanese"
    case thai = "Thai"
    case breakfastAndBrunch = "Breakfast and Brunch"
    case fastFood = "Fast Food"
    case coffeeAndTea = "Coffee and Tea"
    case pizza = "Pizza"
    case healthy = "Healthy"
    case vegan = "Vegan"
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
            name: "Red Lobster",
            image: "https://i.pinimg.com/564x/81/d6/0e/81d60e6d7fb5882827e9db01a7992432.jpg",
            rating: 4.3,
            address: "1951 E 3rd St, Williamsport",
            menu: Dish.all.filter { $0.restaurant == "Red Lobster" },
            isPopular: true
        ),
        Restaurant(
            category: "American",
            name: "Outback Steakhouse",
            image: "https://media-cdn.tripadvisor.com/media/photo-s/18/4e/c4/71/photo0jpg.jpg",
            rating: 4.7,
            address: "547 Arena Hub Plaza",
            menu: Dish.all.filter { $0.restaurant == "Outback Steakhouse" }
        ),
        Restaurant(
            category: "American",
            name: "Buffalo Wild Wings",
            image: "https://i.insider.com/577418514321f1d01a8b4e2f?width=1300&format=jpeg&auto=webp",
            rating: 4.2,
            address: "1201 Lower Allen Dr",
            menu: Dish.all.filter { $0.restaurant == "Buffalo Wild Wings" },
            isPopular: true
        ),
        Restaurant(
            category: "American",
            name: "Bonefish Grill",
            image: "https://i.pinimg.com/564x/32/3c/42/323c42a16b2c185cd976479e07c734e2.jpg",
            rating: 4.4,
            address: "1905 Waddle Rd",
            menu: Dish.all.filter { $0.restaurant == "Bonefish Grill" }
        ),
        Restaurant(
            category: "American",
            name: "The Cheesecake Factory",
            image: "https://www.bridgestreethuntsville.com/wp-content/uploads/2021/02/DSC6485-scaled.jpg",
            rating: 3.9,
            address: "100 Pointe Blvd, Lancaster",
            menu: Dish.all.filter { $0.restaurant == "The Cheesecake Factory" },
            isPopular: true
        ),
        Restaurant(
            category: "American",
            name: "Brasserie Louis",
            image: "https://images.rosewoodhotels.com/is/image/rwhg/IMG_6384:WIDE-LARGE-3-2",
            rating: 4.2,
            address: "600 Market St",
            menu: Dish.all.filter { $0.restaurant == "Brasserie Louis" },
            isPopular: true
        ),


        // CHINESE
        Restaurant(
            category: "Chinese",
            name: "Panda Express",
            image: "https://mallmaverick.imgix.net/web/property_managers/42/properties/56/all/20210610205356/pandaexpress-890x614.png",
            rating: 4.0,
            address: "380 Town Center Dr",
            menu: Dish.all.filter { $0.restaurant == "Panda Express" },
            isPopular: true
        ),
        Restaurant(
            category: "Chinese",
            name: "Mark Pi's",
            image: "https://www.mashed.com/img/gallery/chinese-chain-restaurants-ranked-worst-to-best/8-mark-pis-1611672738.jpg",
            rating: 4.5,
            address: "800 Krocks Rd",
            menu: Dish.all.filter { $0.restaurant == "Mark Pi's" }
        ),
        Restaurant(
            category: "Chinese",
            name: "P.F. Chang’s",
            image: "https://www.pfchangs.com/images/default-source/menu/noodles-rice/signaturelomein-1200x80001f21cdc-9969-422e-b18f-2baa8439b0f3.jpg?sfvrsn=829c8ba6_3",
            rating: 4.7,
            address: "200 Colonial Dr",
            menu: Dish.all.filter { $0.restaurant == "P.F. Chang’s" }
        ),
        Restaurant(
            category: "Chinese",
            name: "Leann Chin",
            image: "https://i.pinimg.com/originals/82/50/2b/82502b7b074c365a82be665ac0fbf975.jpg",
            rating: 3.6,
            address: "3200 Emrick Blvd",
            menu: Dish.all.filter { $0.restaurant == "Leann Chin" }
        ),
        Restaurant(
            category: "Chinese",
            name: "Din Tai Fung",
            image: "https://media.timeout.com/images/105868042/750/422/image.jpg",
            rating: 3.8,
            address: "200 Sheraton Dr",
            menu: Dish.all.filter { $0.restaurant == "Din Tai Fung" },
            isPopular: true
        ),


        // MEXICAN
        Restaurant(
            category: "Mexican",
            name: "Chipotle",
            image: "https://img.ctykit.com/cdn/va-rosslyn/images/tr:w-1800/chipotle---web.png",
            rating: 4.1,
            address: "3140 Vestal, NY",
            menu: Dish.all.filter { $0.restaurant == "Chipotle" },
            isPopular: true
        ),
        Restaurant(
            category: "Mexican",
            name: "Qdoba Mexican Eats",
            image: "https://pbs.twimg.com/media/Et9yTuSWYAMRdqv.jpg",
            rating: 3.9,
            address: "675 Lancaster Ave",
            menu: Dish.all.filter { $0.restaurant == "Qdoba Mexican Eats" }
        ),
        Restaurant(
            category: "Mexican",
            name: "Taco Bell",
            image: "https://i.pinimg.com/564x/23/10/50/231050876945793493d104b4b333c1dc.jpg",
            rating: 4.5,
            address: "134 Shawan Rd",
            menu: Dish.all.filter { $0.restaurant == "Taco Bell" },
            isPopular: true
        ),
        Restaurant(
            category: "Mexican",
            name: "Moe’s Southwest Grill",
            image: "https://gray-whsv-prod.cdn.arcpublishing.com/resizer/7Jr9w6RP0kaQnLwFtdSaC8oM-3I=/1200x675/smart/filters:quality(85)/cloudfront-us-east-1.images.arcpublishing.com/gray/MVAKFYVN4JAFNPO35S7GGKDMTM.jpg",
            rating: 4.6,
            address: "450 Montgomery Mall",
            menu: Dish.all.filter { $0.restaurant == "Moe’s Southwest Grill" },
            isPopular: true
        ),
        Restaurant(
            category: "Mexican",
            name: "Pappasito’s Cantina",
            image: "https://s3-media0.fl.yelpcdn.com/bphoto/9QOG5zDBn_xWPdUGRpDS-w/348s.jpg",
            rating: 4.2,
            address: "109 Boulevard Cir",
            menu: Dish.all.filter { $0.restaurant == "Pappasito’s Cantina" }
        ),


        // ITALIAN
        Restaurant(
            category: "Italian",
            name: "Fazoli’s",
            image: "https://i.pinimg.com/564x/64/69/31/64693173a86850b8412da3831ce527dc.jpg",
            rating: 4.0,
            address: "322 Ridge Pike",
            menu: Dish.all.filter { $0.restaurant == "Fazoli’s" },
            isPopular: true
        ),
        Restaurant(
            category: "Italian",
            name: "Olive Garden",
            image: "https://i.pinimg.com/564x/49/c9/c1/49c9c18a9c9fbb94ae7c8d76ad170a34.jpg",
            rating: 4.3,
            address: "607 Bel Air Bypass",
            menu: Dish.all.filter { $0.restaurant == "Olive Garden" },
            isPopular: true
        ),
        Restaurant(
            category: "Italian",
            name: "Spaghetti Warehouse",
            image: "https://cdnimg.webstaurantstore.com/images/products/large/66815/2113528.jpg",
            rating: 4.2,
            address: "4300 Jonestown Road",
            menu: Dish.all.filter { $0.restaurant == "Spaghetti Warehouse" },
            isPopular: true
        ),
        Restaurant(
            category: "Italian",
            name: "Carrabba’s Italian Grill",
            image: "https://az683702.vo.msecnd.net/assets/menu-photos/family_bundle_spaghetti_menu_item_200728.jpg",
            rating: 4.1,
            address: "4711 Carlisle Pike",
            menu: Dish.all.filter { $0.restaurant == "Carrabba’s Italian Grill" }
        ),
        Restaurant(
            category: "Italian",
            name: "Bertucci’s",
            image: "https://www.bertuccis.com/wp-content/uploads/2022/08/lunch-pizza.png",
            rating: 3.9,
            address: "160 Antherton St",
            menu: Dish.all.filter { $0.restaurant == "Bertucci’s" }
        ),


        // JAPANESE
        Restaurant(
            category: "Japanese",
            name: "Tenya Japanese Eatery",
            image: "https://media-cdn.tripadvisor.com/media/photo-s/0d/ed/4a/25/caption.jpg",
            rating: 4.3,
            address: "10 East End Center",
            menu: Dish.all.filter { $0.restaurant == "Tenya Japanese Eatery" },
            isPopular: true
        ),
        Restaurant(
            category: "Japanese",
            name: "CoCo Ichibanya",
            image: "https://cdn.vox-cdn.com/thumbor/O4hfza3mIKtZfc6AR6jpTl_gaSI=/0x0:900x631/1200x800/filters:focal(378x244:522x388)/cdn.vox-cdn.com/uploads/chorus_image/image/66371464/cocoich2.0.jpg",
            rating: 4.2,
            address: "945 Woodland Rd",
            menu: Dish.all.filter { $0.restaurant == "CoCo Ichibanya" }
        ),
        Restaurant(
            category: "Japanese",
            name: "Tonchin",
            image: "https://savorjapan.com/gg/content_image/t0005_001_20171208021347.jpg",
            rating: 3.8,
            address: "Co Shopping Center, 255 Market St",
            menu: Dish.all.filter { $0.restaurant == "Tonchin" }
        ),
        Restaurant(
            category: "Japanese",
            name: "Sushi Tama",
            image: "https://i.pinimg.com/564x/6f/b5/93/6fb59351d5fd5cef192116703bc11208.jpg",
            rating: 3.7,
            address: "2090 E Lincoln Hwy, Lancaster",
            menu: Dish.all.filter { $0.restaurant == "Sushi Tama" },
            isPopular: true
        ),
        Restaurant(
            category: "Japanese",
            name: "Ootoya",
            image: "https://ootoya.us/wp-content/uploads/2020/04/43_katsu-ju.jpg",
            rating: 4.8,
            address: "800 Lehigh Center",
            menu: Dish.all.filter { $0.restaurant == "Ootoya" }
        ),
        Restaurant(
            category: "Japanese",
            name: "Ippudo",
            image: "https://static01.nyt.com/images/2021/01/06/dining/04Burner-Ramen/04Burner-Ramen-superJumbo.jpg",
            rating: 4.5,
            address: "223 Shoemaker Rd",
            menu: Dish.all.filter { $0.restaurant == "Ippudo" }
        ),


        // THAI
        Restaurant(
            category: "Thai",
            name: "Lotus of Siam",
            image: "https://media-cdn.tripadvisor.com/media/photo-p/1c/7f/2a/ba/photo1jpg.jpg",
            rating: 4.2,
            address: "1502 Scranton Carbondale Hwy",
            menu: Dish.all.filter { $0.restaurant == "Lotus of Siam" },
            isPopular: true
        ),
        Restaurant(
            category: "Thai",
            name: "Ruan Thai",
            image: "https://img2.10bestmedia.com/Images/Photos/336849/KK1fish1_55_660x440.jpg",
            rating: 4.4,
            address: "407 W Eisenhower Dr",
            menu: Dish.all.filter { $0.restaurant == "Ruan Thai" }
        ),
        Restaurant(
            category: "Thai",
            name: "Sticky Rice",
            image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXjY_zBQL2jwfwx1b_LDsb8GrAgn3I3YM5ABnUzcv6p51SHYz5949jl9M3jIzuIq3BcAM&usqp=CAU",
            rating: 3.9,
            address: "935 Wayne Ave",
            menu: Dish.all.filter { $0.restaurant == "Sticky Rice" }
        ),
        
        // BREAKFAST
        Restaurant(
            category: "Breakfast and Brunch",
            name: "Paris Baguette",
            image: "https://d1ralsognjng37.cloudfront.net/7be804de-b778-4b33-acdc-af9e09b42f98.jpeg",
            rating: 4.7,
            address: "3816 Chesnut Street",
            menu: Dish.all.filter { $0.restaurant == "Paris Baguette" }
        ),
        Restaurant(
            category: "Breakfast and Brunch",
            name: "IHOP",
            image: "https://www.chewboom.com/wp-content/uploads/2020/06/IHOP-Introduces-New-Crepes-Cakes-Breakfast-678x381.jpg",
            rating: 4.2,
            address: "1320 Walnut Street",
            menu: Dish.all.filter { $0.restaurant == "IHOP" }
        ),
        Restaurant(
            category: "Breakfast and Brunch",
            name: "Hatch & Coop",
            image: "https://img.hoodline.com/uploads/story/image/99240/Hatch_&_Coop_Photo_2_Enhanced.jpg",
            rating: 4.5,
            address: "3328 Chambers Rd",
            menu: Dish.all.filter { $0.restaurant == "Hatch & Coop" }
        ),
        
        
        // FAST FOOD
        Restaurant(
            category: "Fast Food",
            name: "Chick-fil-A",
            image: "https://i.insider.com/568bf337dd0895b53c8b4751?width=750&format=jpeg&auto=webp",
            rating: 4.5,
            address: "2204 S Columbus Blvd",
            menu: Dish.all.filter { $0.restaurant == "Chick-fil-A" },
            isPopular: true
        ),
        Restaurant(
            category: "Fast Food",
            name: "Wendy's",
            image: "https://tb-static.uber.com/prod/image-proc/processed_images/c63d052b73170f4d672bf961e731467a/3ac2b39ad528f8c8c5dc77c59abb683d.jpeg",
            rating: 4.1,
            address: "1515 Cowpath Rd",
            menu: Dish.all.filter { $0.restaurant == "Wendy's" },
            isPopular: true
        ),
        Restaurant(
            category: "Fast Food",
            name: "McDonalds's",
            image: "https://www.mcdonalds.com/content/dam/sites/usa/nfl/publication/1PUB_McDelivery_v4_1168x520.jpg",
            rating: 4.2,
            address: "Grays Ferry",
            menu: Dish.all.filter { $0.restaurant == "McDonalds's" },
            isPopular: true
        ),
        Restaurant(
            category: "Fast Food",
            name: "Popeyes",
            image: "https://d1ralsognjng37.cloudfront.net/47f86765-ddd1-463f-b4a2-f102fb472dcd.jpeg",
            rating: 4.5,
            address: "120 Chestnut Street",
            menu: Dish.all.filter { $0.restaurant == "Popeyes" }
        ),
        
        // COFFEE AND TEA
        Restaurant(
            category: "Coffee and Tea",
            name: "Starbucks",
            image: "https://i.pinimg.com/564x/b6/9c/65/b69c656092e42d47d26674ec9a17fb5e.jpg",
            rating: 4.7,
            address: "16th & Walnut",
            menu: Dish.all.filter { $0.restaurant == "Starbucks" },
            isPopular: true
        ),
        Restaurant(
            category: "Coffee and Tea",
            name: "Dunkin'",
            image: "https://d1ralsognjng37.cloudfront.net/f2211e35-5e6b-4f33-a351-470f644fc483.jpeg",
            rating: 4.5,
            address: "30th & Market Street Station",
            menu: Dish.all.filter { $0.restaurant == "Dunkin'" },
            isPopular: true
        ),
        Restaurant(
            category: "Coffee and Tea",
            name: "Gong Cha",
            image: "https://img.cdn4dd.com/cdn-cgi/image/fit=cover,width=600,height=400,format=auto,quality=80/https://doordash-static.s3.amazonaws.com/media/store/header/1a81cd83-73f2-496e-ab80-ac9a876d9661.jpg",
            rating: 4.3,
            address: "917 Arch St.",
            menu: Dish.all.filter { $0.restaurant == "Gong Cha" }
        ),
        Restaurant(
            category: "Coffee and Tea",
            name: "A La Mousse",
            image: "https://duyt4h9nfnj50.cloudfront.net/resized/9e075563df92a6bf674a45ca051adb37-w2880-21.jpg",
            rating: 4.9,
            address: "425 W Dekalb Pike",
            menu: Dish.all.filter { $0.restaurant == "A La Mousse" }
        ),
        
        // PIZZA
        Restaurant(
            category: "Pizza",
            name: "Brooklyn Pizza",
            image: "https://restaurantclicks.com/wp-content/uploads/2021/09/brooklyn-style-pizza-grimaldis.jpg",
            rating: 4.3,
            address: "1681 Wesel Blvd",
            menu: Dish.all.filter { $0.restaurant == "Brooklyn Pizza" },
            isPopular: true
        ),
        Restaurant(
            category: "Pizza",
            name: "Papa Johns",
            image: "https://i.pinimg.com/564x/b7/40/90/b74090f29bff32f11a7d9bbbd3647908.jpg",
            rating: 4.5,
            address: "Girard Ave",
            menu: Dish.all.filter { $0.restaurant == "Papa Johns" },
            isPopular: true
        ),
        Restaurant(
            category: "Pizza",
            name: "&pizza Rittenhouse",
            image: "https://tb-static.uber.com/prod/image-proc/processed_images/e2d9438ba8edd40cc7458cb51dabf4d3/3ac2b39ad528f8c8c5dc77c59abb683d.jpeg",
            rating: 4.8,
            address: "213 S 15th St, Lewisburg",
            menu: Dish.all.filter { $0.restaurant == "&pizza Rittenhouse" },
            isPopular: true
        ),
        
        // HEALTHY
        Restaurant(
            category: "Healthy",
            name: "DIG - Rittenhouse Square",
            image: "https://d1ralsognjng37.cloudfront.net/787906c3-b043-421b-bf54-eff6d11bb663.jpeg",
            rating: 4.6,
            address: "240 Marketplace Boulevard",
            menu: Dish.all.filter { $0.restaurant == "DIG - Rittenhouse Square" }
        ),
        Restaurant(
            category: "Healthy",
            name: "Honeygrow",
            image: "https://images.getbento.com/accounts/4f414de3ec33336001dcb4ead38fcfb1/media/images/85935Spicy_Garlic.png?w=1800&fit=max&auto=compress,format&h=1800",
            rating: 4.8,
            address: "25 Liberty Ln",
            menu: Dish.all.filter { $0.restaurant == "Honeygrow" }
        ),
        
        // VEGAN
        Restaurant(
            category: "Vegan",
            name: "Monster Vegan",
            image: "https://d1ralsognjng37.cloudfront.net/d1546c0b-5630-4200-9753-71314811f80c.jpeg",
            rating: 4.6,
            address: "1229 Spruce St",
            menu: Dish.all.filter { $0.restaurant == "Monster Vegan" }
        ),
        Restaurant(
            category: "Vegan",
            name: "Vegan vs Fries",
            image: "https://cdn.doordash.com/media/photosV2/770f91e7-6e32-4d23-8bb4-1cb692508fcb-retina-large.jpg",
            rating: 4.4,
            address: "1978 Montour Blvd",
            menu: Dish.all.filter { $0.restaurant == "Vegan vs Fries" }
        )
    ]
}
        
