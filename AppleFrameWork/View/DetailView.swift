//
//  DetailView.swift
//  AppleFrameWork
//
//  Created by Mukund vaghasiya  on 28/04/24.
//

import SwiftUI

struct DetailView: View {
    let framework:Framework
    var body: some View {
        VStack(spacing: 15){
            Image(framework.imageName)
                .resizable()
                .frame(width: 150,height: 150)
            
            Text(framework.name)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Text(framework.description)
                .font(.system(size: 20))
                .multilineTextAlignment(.center)
            
            Spacer()
            
            Link(destination: URL(string: framework.urlString)!, label: {
                Text("Get more info!")
                    .font(.title3)
                    .frame(width: 200,height: 55)
                    .foregroundColor(.white)
                    .bold()
                    .background(.orange)
                    .cornerRadius(10)
            })
        }.padding()
    }
}

