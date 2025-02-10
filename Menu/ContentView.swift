//
//  ContentView.swift
//  Menu
//
//  Created by Brandon Egnarski on 1/29/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var menuItems: [MenuItem] = [MenuItem]()
    
    var dataService = DataService()
    
    var body: some View {
        List(menuItems){ item in 
            
            HStack{
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 50)
                    .cornerRadius(10)
                Text(item.name)
                    .font(.headline)
                    .padding(.leading, 10)
                Spacer()
                Text(item.price)
                    .font(.caption)
                
            }
            .listRowSeparator(.hidden)
            .listRowBackground(Color.brown.opacity(0.1))
        }
        .listStyle(.plain)
        .onAppear(){
            menuItems = dataService.getData()
        }
        
        
    }
}

#Preview {
    ContentView()
}
