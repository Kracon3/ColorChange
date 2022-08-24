//
//  ColorChangeView.swift
//  ColorChange
//
//  Created by Beckstead, Kayden on 8/24/22.
//

import SwiftUI

struct ColorChangeView: View
{
    var body: some View
    {
        VStack
        {
            Text("It's a stack!")
        
            Text("Hello, world!")
                .padding()
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
