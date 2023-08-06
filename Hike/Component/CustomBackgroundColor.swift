//
//  CustomBackgroundColor.swift
//  Hike
//
//  Created by Marcelo Moresco on 05/08/23.
//

import SwiftUI

struct CustomBackgroundColor: View {
    var body: some View {
        ZStack{
            Color.customGreenDark.cornerRadius(40).offset(y: 12)
            
            Color.customGreenLight.cornerRadius(40)
                .opacity(0.85)
                .offset(y: 3)
            
            LinearGradient(colors: [.customGreenLight,.customGreenMedium], startPoint: .topLeading, endPoint: .bottomLeading)
                .cornerRadius(40)
        }
        
    }
}

struct CustomBackgroundColor_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackgroundColor()
    }
}
