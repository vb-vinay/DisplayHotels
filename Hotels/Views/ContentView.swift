//
//  ContentView.swift
//  Hotels
//
//  Created by Vinay Bharwani on 09/10/19.
//  Copyright © 2019 Vinay Bharwani. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
//    var hotels: [Hotel] = []
    var hotels = testData
    var body: some View {
        TabView(){
            NavigationView {
                List(hotels) { hotel in
                    HotelCell(hotel: hotel)
                }.navigationBarTitle("Hotels")
            }.tabItem{
                Text("Home")
                Image(systemName: "house.fill")
            }
                
            Text("This is the Second Tab")
                .tabItem{
                    Text("Store")
                    Image(systemName: "photo")
                }
            Text("This is the Third Tab")
                .tabItem{
                    Text("Buzz")
                    Image(systemName: "bolt.fill")
                }
            Text("This is the Fourth Tab")
                .tabItem{
                    Text("Profile")
                    Image(systemName: "person.fill")
                }
        }
        
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(hotels: testData)
            .environment(\.colorScheme, .dark)
    }
}
#endif

struct HotelCell: View {
    var hotel: Hotel
    var body: some View {
        
        NavigationLink(destination: Text("\(hotel.hotelName)")) {
            
           Image(hotel.imgName).resizable()
                .frame(width: 80.0, height: 80.0, alignment: .center)
                .cornerRadius(10.0)
                .padding(.trailing, 15.0)

            VStack(alignment: .leading, spacing: 20.0) {
                Text("\(hotel.hotelName)")
                    .kerning(1.2)
                    .bold()
                    
                
                Text("\(hotel.hotelCapacity) people")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
        }
    }
}
