//
//  ColorChangeView.swift
//  ColorChange
//
//  Created by Beckstead, Kayden on 8/24/22.
//

import SwiftUI

struct ColorChangeView: View
{
    @State private var backgroundColor : Color = .purple
    
    var body: some View
    {
        ZStack
        {
            backgroundColor     //changes background color with variable made in line 12
                .edgesIgnoringSafeArea(.all)  //Ignores the top white bar
        
        VStack
        {
            Text("It's a stack!")
        
            Text("Hello, world!")
                .padding()
        }
        }
    }
    
    func makeRandomColor() -> Color
    {
        let redPercent = Double( arc4random() % UInt32 (256) ) / 255.0
        let greenPercent = Double( arc4random() % UInt32 (256) ) / 255.0
        let bluePercent = Double( arc4random() % UInt32 (256) ) / 255.0
        
        
        return Color (red:redPercent, green: greenPercent, blue: bluePercent)
    }
}

struct ColorChangeView_Previews: PreviewProvider
{
    static var previews: some View
    {
        ColorChangeView()
    }
}
