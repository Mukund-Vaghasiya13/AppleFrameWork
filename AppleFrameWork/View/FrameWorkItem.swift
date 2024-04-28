//
//  FrameWorkItem.swift
//  AppleFrameWork
//
//  Created by Mukund vaghasiya  on 28/04/24.
//

import SwiftUI

struct FrameWorkItem: View {
    
    let framework:Framework
    
    var body: some View {
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90,height: 90)
            
            Text(framework.name)
                .bold()
                .font(.title2)
                .minimumScaleFactor(0.6)
            
        }
        .frame(width: 150,height: 150)
    }
}
