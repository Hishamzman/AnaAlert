//
//  ContentView.swift
//  anaAlert
//
//  Created by Hisham Helwani on 11/14/22.
//
import MapKit
import SwiftUI


struct ContentView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 42.3314, longitude: -83.0458) , span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05))
    func anaInhaler(){
        print("Popup anainhaler")
    }
    func anaEpi(){
        print ("popup ana epi")
    }
    func settingButton(){
        print("popup settings")
    }
    func emergencyButton(){
        print("call 911")
    }
    
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
                .edgesIgnoringSafeArea(.all)
            ZStack {
                VStack{
                    HStack{
                        
                        Spacer()
                        Button("SET") {
                            settingButton()
                        }
                        Image ("Settings")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 175.0, height: 70.0)
                            .padding()
                        Spacer()
                        Spacer()
                        Spacer()
                    
                        Button("911") {
                            emergencyButton()
                        }
                        Image("EMERGENCY")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 175.0, height: 70.0)
                            .padding()
                        Spacer()
                        Spacer()
                
                    }
                    
                    Spacer()
                    HStack{
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    
                        Button("epipen") {
                            anaEpi()
                            
                        }; Image("anaepi")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 175, height: 90.0)
                            .padding()
      
                    
                        
                        Button("inhaler") {
                            anaInhaler()
                            
                        };Image("anainhaler")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 175.0, height: 90.0)
                        .padding()
                        Spacer()
                        
  
                        
                        
                    }
                    
                }}}}

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


