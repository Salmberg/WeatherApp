//
//  WelcomeView.swift
//  WeatherApp
//
//  Created by David Salmberg on 2023-04-10.
//

import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationManager: LocationManager
    
    
    var body: some View {
        
        VStack {
            VStack(spacing: 20){
                Text ("Welcome to Salmbergs Weather App")
                    .bold().font(.title)
                Text("Share your location to get the weather where you are!")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestLocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)

    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
