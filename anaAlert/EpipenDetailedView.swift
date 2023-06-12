//
//  EpipenDetailedView.swift
//  anaAlert
//
//  Created by Hisham Helwani on 11/15/22.
//
import MapKit
import SwiftUI


struct EpipenDetailedView: View {
    @Environment(\.dismiss) var dismiss
    
    
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .fill(.gray)
            .frame(width: 350, height: 640)
          
            VStack {
                Spacer()
                Spacer()
                Spacer()
                Text("Inhaler in route")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                Rectangle()
                
                        .fill(.red)
                    .frame(width: 300, height: 350)
                
                Spacer()
                VStack{
                    
                    Button("Facetime ana assistant") {
                        dismiss()
                    }
                    .font(.title)
                    .padding()
                    .background(.green
                    )
                    
                    
                    Button("Arrived"){
                        dismiss()}
                    .font(.title)
                    .padding()
                    .background(.white)
                    .controlSize(/*@START_MENU_TOKEN@*/.regular/*@END_MENU_TOKEN@*/)
                    
                }
                Spacer()
                Spacer()
                
            }
        }}}

struct EpipenDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        EpipenDetailedView()
    }
}
 
