//
//  ContentView.swift
//  UI-23
//
//  Created by にゃんにゃん丸 on 2020/10/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
var tabs = ["i1","i2","i3","i4"]




struct Home : View {
    @State var selected = "i1"
    
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    
    var body: some View{
        
        VStack{
            
            TabView(selection : $selected){
                
                Image("p1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .tag(tabs[0])
                    .ignoresSafeArea(.all, edges: .top)
                
                
                Image("p2")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .tag(tabs[1])
                    .ignoresSafeArea(.all, edges: .top)
                
                
                Image("p3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .tag(tabs[2])
                    .ignoresSafeArea(.all, edges: .top)
                
                
                Image("p4")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .tag(tabs[3])
                    .ignoresSafeArea(.all, edges: .top)
                
                
                
                
                
                
                
            }
            
    
            HStack{
                ForEach(tabs,id:\.self){ value in
                    
                    
                Tabbutton(selected: $selected, value: value)
                    if value != tabs.last{Spacer()}
                    
                    
                    
                    
                }
              
              
                
                
                
            }
           
            
            
            
           
           
            
            
            
        }
        
        
        
    }
}




struct Tabbutton : View {
    
    @Binding var selected : String
    var value : String
    
    
    
    var body: some View{
        
        Button(action: {
            
            withAnimation(.spring()){
                
                selected = value
                
            }
            
            
        }, label: {
            
        VStack{
            
            Image(value)
                .resizable()
                .renderingMode(.template)
                .frame(width: 26, height: 26)
                .foregroundColor(selected == value ? Color.red : .black)
            
            
            Text(value)
                .font(.caption)
                .foregroundColor(.purple)
                .opacity(selected == value ? 1 : 0)
            
            
            
            
            
            
        }
        
        .frame(width: 75, height: 75)
            
        })
        
    }
}
