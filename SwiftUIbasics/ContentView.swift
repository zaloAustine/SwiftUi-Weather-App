//
//  ContentView.swift
//  SwiftUIbasics
//
//  Created by AUSTINE on 22/09/2021.
//  Copyright © 2021 AUSTINE. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        
        ZStack{
            
            BackgroundView(isNight: $isNight)
        
            VStack{
            
                Citytext(cityName: "Nairobi")
                MainWeatherStatusView(imageName: self.isNight ? "moon.fill": "cloud.sun.fill", temp: "76")
        
                HStack{
                    HStack(spacing: 20){
                        DaysView()
                        DaysView()
                        DaysView()
                        DaysView()
                    }
                }
                
                Spacer()
                
                Button(action:{
                    
                    self.isNight.toggle()
                    
                },label:{
                    WeatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
                })
                
                Spacer()
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct BackgroundView: View {
    
    @Binding var  isNight:Bool
    var body: some View {
                LinearGradient(gradient: Gradient(colors:[isNight ? .black : .blue, Color("lightBlue")]),
                       startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}



struct Citytext: View {
    var cityName:String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32,weight: .medium))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var imageName:String
    var temp:String
    
    var body: some View {
        VStack{
            Image(systemName:imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temp)°")
                .font(.system(size: 70,weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
    }
}

//"cloud.sun.fill"

struct WeatherButton: View {
    var title:String
    var textColor:Color
    var backgroundColor:Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size:20))
            .cornerRadius(10.0)
    }
}
