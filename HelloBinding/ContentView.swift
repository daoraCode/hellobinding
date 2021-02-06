//
//  ContentView.swift
//  HelloBinding
//
//  Created by Antony Mboukou on 06/02/2021.
//

import SwiftUI

struct ContentView: View {
    @State private var isOn: Bool = false
    
    var body: some View {
        VStack {
         LightBulb(isOn: $isOn)
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(isOn ? Color.white : Color.black)
        .edgesIgnoringSafeArea(.all)
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct LightBulb : View {
    
    @Binding var isOn: Bool
    
    var body: some View {
        
        Group {
            if isOn {
                
                Image(systemName: "lightbulb")
                    .font(.largeTitle)
            } else {
                Image(systemName: "lightbulb.fill")
                    .font(.largeTitle)
                    .foregroundColor(Color.yellow)
            }
  
        }.onTapGesture {
            isOn.toggle()
        }
    }
}
