//
//  DaysView.swift
//  SwiftUIbasics
//
//  Created by AUSTINE on 22/09/2021.
//  Copyright © 2021 AUSTINE. All rights reserved.
//

import SwiftUI

struct DaysView: View {
    var body: some View {
        
        VStack{
                    
            Text("TUE")
                .font(.system(size:16,weight: .medium))
                .foregroundColor(.white)
            
            Image(systemName: "cloud.sun.fill")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
            
            Text("76°")
                .font(.system(size: 28,weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct DaysView_Previews: PreviewProvider {
    static var previews: some View {
        DaysView()
    }
}
