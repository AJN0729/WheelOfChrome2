//
//  ContentView.swift
//  WheelApp
//
//  Created by Student on 10/17/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var selected: Int = 0
    var height = UIScreen.main.bounds.height
    var width = UIScreen.main.bounds.width
    
    var body: some View {
        
        VStack(alignment: .center) {
            Text("Wheel of Chrome")
                .font(.system(size: 45))
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
                .padding(.top, 50)
            
            TabView(selection: $selected) {
                // Images
                
                ForEach(1...4, id: \.self) { index in
                    
                    ZStack {
                        GeometryReader { reader in
                            Image("p\(index)")
                                .resizable()
                                .frame(width: width, height:
                                        height / 2)
                                .aspectRatio(contentMode:
                                                .fill)
                                .offset(x: -reader.frame(in:
                                    .global).minX)
                        }
                        .frame(height: height / 2)
                        .cornerRadius(15)
                        .padding(10)
                        .background(Color.white)
                        .cornerRadius(15)
                        .shadow(color: Color.black.opacity(0.2),
                                radius: 5, x: 5, y: 5)
                        .shadow(color: Color.black.opacity(0.2),
                                radius: 5, x: -5, y: 5)
                        
                        
                        
                        
                        Image("p5")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 55, height: 55)
                            .clipShape(Circle())
                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 5, y: 5)
                            .offset(x: 0, y: 0)
                            .padding(5)
                            .background(Color.white)
                            .clipShape(Circle())
                            .offset(x: width / 3, y: height / 3.9)
                        
                        
                        
                        
                        
                       
                    }
                    .padding(.horizontal, width / 20)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
