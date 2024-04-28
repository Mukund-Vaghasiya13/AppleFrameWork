//
//  ContentView.swift
//  AppleFrameWork
//
//  Created by Mukund vaghasiya  on 28/04/24.
//

import SwiftUI

struct FrameWorkGridView: View {
    @State var Path:NavigationPath = NavigationPath()
    var GridColumn = [
    
        GridItem(.flexible(),spacing: nil,alignment: nil),
        GridItem(.flexible(),spacing: 5,alignment: nil),
        GridItem(.flexible(),spacing: 5,alignment: nil)
        
    ]
    
    var body: some View {
        
        NavigationStack(path: $Path){
            ZStack{
                ScrollView(.vertical,showsIndicators: false){
                    LazyVGrid(columns: GridColumn, content: {
                        ForEach(MockData.frameworks, id: \.id) { item in
                            FrameWorkItem(framework: item)
                                .onTapGesture {
                                    Path.append(item)
                                }
                        }
                    })
                    .navigationDestination(for: Framework.self) { item in
                        DetailView(framework: item)
                    }
                }
                .padding()
                
            }
            .navigationTitle("Frameworks 🍎")
        }
    }
}

#Preview {
    FrameWorkGridView()
}


