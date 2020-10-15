//
//  Hotel.swift
//  Hotels
//
//  Created by Vinay Bharwani on 09/10/19.
//  Copyright © 2019 Vinay Bharwani. All rights reserved.
//

import Foundation
import SwiftUI

struct Hotel: Identifiable{
//    var id: ObjectIdentifier
    var id = UUID()
    var hotelName : String
    var hotelCapacity: Int
    var imgName: String
    
}

#if DEBUG
let testData = [
    Hotel(hotelName: "Hotel Taj", hotelCapacity: 400, imgName: "hotel_taj"),
    Hotel(hotelName: "Hotel Shangrila", hotelCapacity: 500, imgName: "hotel_shangrila"),
    Hotel(hotelName: "The Leela Palace", hotelCapacity: 350, imgName: "hotel_leela"),
    Hotel(hotelName: "Le Meridien", hotelCapacity: 750, imgName: "hotel_meridien"),
    Hotel(hotelName: "The Apra International", hotelCapacity: 100, imgName: "hotel_apra")    
]
#endif
