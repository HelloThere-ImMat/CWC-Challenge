//
//  ContentView.swift
//  WAR-CHALLENGE
//
//  Created by Mathias DORR on 15/07/2021.
//

import SwiftUI

 
struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    
    var body: some View {
        
        ZStack {
            
            Image("background")
                .ignoresSafeArea()
            
                
            
            VStack {
                
                Spacer()
                
                
                Image("logo")
                    .aspectRatio(contentMode: .fit)
            
                
                Spacer()
        
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button(action: {
                    
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if playerRand > cpuRand {
                        
                        playerScore += 1
                    }
                    
                    else if playerRand < cpuRand {
                        
                        cpuScore += 1
                    }
                }
                       
                       , label: {
                        Image("dealbutton")
                            .resizable()
                            .frame(width: 180, height: 70, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                           
                })
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                            
                    }
                    
                    Spacer()
            
                }
            
                
                Button(action: {
                    
                    playerScore = 0
                    cpuScore = 0
                    
                }, label: {
                    Text("Reset")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.gray)
                        
                })
                
                Spacer ()
           
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
        }
}
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
