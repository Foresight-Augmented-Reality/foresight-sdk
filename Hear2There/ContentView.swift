//
//  ContentView.swift
//  HereToThereDemo
//
//  Created by clark rinker on 8/23/24.
//

import SwiftUI
import Hear2ThereSDK

struct ContentView: View {
    @StateObject var beaconFinder = BeaconFinder()
    @StateObject private var hear2ThereApi = Hear2ThereAPIManager()
    private var isLoading = true
    
    var body: some View {
           TabView {
               List(hear2ThereApi.lighthouses) { record in
                   VStack(alignment: .leading) {
                       Text(record.spokenDescription.unsafelyUnwrapped)
                           .font(.headline)
                       Text(record.spokenDetails.unsafelyUnwrapped) // Example of displaying additional data
                       // Add more Text views to display other relevant properties
                   }
               }.tabItem {
                   Label("Lighthouses", systemImage: "list.dash")
               }

               List(beaconFinder.beacons) { record in
                   VStack(alignment: .leading) {
                       HStack {
                              Text("Description:")
                                  .font(.caption)
                              Text(record.description)
                          }
                          HStack {
                              Text("RSSI:")
                                  .font(.caption)
                              Text(String(record.rssi))
                          }
                   }
               }.tabItem {
                   Label("Beacons", systemImage: "list.dash")
               }
           }.onAppear {
               hear2ThereApi.fetchLighthouses()
           }
    }
    
}

#Preview {
    ContentView()
}
