//
//  ContentView.swift
//  Lists Project Template
//
//  Created by Joseph Albright
//

import SwiftUI

struct ContentView: View {
    
    var spaceArts = [
        Article(title: "M1: The Crab Nebula", author: "M1: The Crab Nebula", rating: 4, excerpt: "The Crab Nebula is cataloged as M1, the first object on Charles Messier's famous 18th century list of things which are not comets. In fact, the Crab is now known to be a supernova remnant, debris from the death explosion of a massive star witnessed by astronomers in the year 1054. This sharp image from the James Webb Space Telescope’s NIRCam (Near-Infrared Camera) and MIRI (Mid-Infrared Instrument) explores the eerie glow and fragmented strands of the still expanding cloud of interstellar debris in infrared light. One of the most exotic objects known to modern astronomers, the Crab Pulsar, a neutron star spinning 30 times a second, is visible as a bright spot near the nebula's center. Like a cosmic dynamo, this collapsed remnant of the stellar core powers the Crab's emission across the electromagnetic spectrum. Spanning about 12 light-years, the Crab Nebula is a mere 6,500 light-years away in the head-strong constellation Taurus.", image: "M1-Webb"),
        Article(title: "Andromeda over the Alps", author: "Dzmitry Kananovich", rating: 3, excerpt: "Have you ever seen the Andromeda galaxy? Although M31 appears as a faint and fuzzy blob to the unaided eye, the light you see will be over two million years old, making it likely the oldest light you ever will see directly. The featured image captured Andromeda just before it set behind the Swiss Alps early last year. As cool as it may be to see this neighboring galaxy to our Milky Way with your own eyes, long duration camera exposures can pick up many faint and breathtaking details. The image is composite of foreground and background images taken consecutively with the same camera and from the same location. Recent data indicate that our Milky Way Galaxy will collide and coalesce with Andromeda galaxy in a few billion years.", image: "Alps"),
        Article(title: "Creature Aurora Over Norway", author: " Ole C. Salomonsen (Arctic Light Photo)", rating: 5, excerpt: "It was Halloween and the sky looked like a creature. Exactly which creature, the astrophotographer was unsure (but possibly you can suggest one). Exactly what caused this eerie apparition in 2013 was sure: one of the best auroral displays that year. This spectacular aurora had an unusually high degree of detail. Pictured here, the vivid green and purple auroral colors are caused by high atmospheric oxygen and nitrogen reacting to a burst of incoming electrons. Birch trees in Tromsø, Norway formed an also eerie foreground. Frequently, new photogenic auroras accompany new geomagnetic storms.", image: "Aurora"),
        Article(title: "Annular Solar Eclipse over Utah", author: "MaryBeth Kiczenski", rating: 2, excerpt: "Part of the Sun disappeared earlier this month, but few people were worried. The missing part, which included the center from some locations, just went behind the Moon in what is known as an annular solar eclipse. Featured here is an eclipse sequence taken as the Moon was overtaking the rising Sun in the sky. The foreground hill is Factory Butte in Utah, USA. The rays flaring out from the Sun are not real -- they result from camera aperture diffraction and are known as sunstar. The Moon is real, but appears only in silhouette in this ring-of-fire eclipse. As stunning as this eclipse sequence is, it was considered just practice by the astrophotographer. The reason? She hopes to use this experience to better photograph the total solar eclipse that will occur over North America on April 8, 2024.", image: "Utah"),
        Article(title: "Daytime Moon Meets Morning Star", author: "Katarzyna Kaczmarczk", rating: 3, excerpt: "Venus now appears as Earth's brilliant morning star, shining above the southeastern horizon before dawn. For early morning risers, the silvery celestial beacon rose predawn in a close pairing with a waning crescent Moon on Thursday, November 9. But from some northern locations, the Moon was seen to occult or pass in front of Venus. From much of Europe, the lunar occultation could be viewed in daylight skies. This time series composite follows the daytime approach of Moon and morning star in blue skies from Warsaw, Poland. The progression of eight sharp telescopic snapshots, made between 10:56am and 10:58am local time, runs from left to right, when Venus winked out behind the bright lunar limb.", image: "Katarzyna")
    ]
    
    var body: some View {
            VStack {
                List(spaceArts){ art in
                    ArtView(art: art)
                    
                }
                
            }
            .padding()
        }
    }



#Preview { ContentView() }

struct Article: Identifiable {
    var id = UUID()
    var title: String
    var author: String
    var rating: Int
    var excerpt: String
    var image: String
}

struct ArtView: View {

    @State var art: Article
    
    
    var body: some View {
        VStack{
            Image(art.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height:200)
                .cornerRadius(10)
            
            Text(art.title)
                .foregroundStyle(.black)
                .font(.system(.title, design: .rounded))
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            
            Text("By: " + art.author)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .opacity(0.6)
        Divider()
            HStack{
            
                Text("Rating: ")
                   .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                var starRating = art.rating
                let count = [1...starRating]
                  
                ForEach (0..<starRating) {_ in
                    Image(systemName: "star")
                }
                
                //Text("\(starRating)")
                //Image(systemName: "star")
                    
                //}
            }
            Divider()
            
            Text(art.excerpt)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
        }
    }
}
