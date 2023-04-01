//
//  InfoView.swift
//  Mini4
//
//  Created by Vinicius on 30/03/23.
//

import Foundation
import SwiftUI
struct InfoView: View {
    
    var title: String
    
    @Binding var show: Bool
    var body: some View {
        ZStack {
            GeometryReader(){ geo in
                if show {
                    // PopUp Window
                    Color.black.opacity(show ? 0.3 : 0).edgesIgnoringSafeArea(.all)
                    ZStack {
                        Image("cardInfo").resizable()
                        VStack {
                            Button(action: {
                                // Dismiss the PopUp
                                withAnimation(.linear(duration: 0.3)) {
                                    show = false
                                }
                            }, label: {
                                Image("close").resizable().frame(width: 30, height: 30)
                            }).position(CGPoint(x: geo.size.width * 0.7, y: geo.size.height / 25))
                            Text(title)
                                .font(Font.system(size: 20, weight: .semibold))
                                .foregroundColor(Color.white)
                                .position(CGPoint(x: geo.size.width * 0.35, y: geo.size.height / 25))
                            //MARK: CLose button
                            
                            
                        }
                        
                       
                        
                        //MARK: Informacoes title
                       
                        //MARK: COMO JOGAR
                        Button(action: {
                            // Dismiss the PopUp
                            withAnimation(.linear(duration: 0.3)) {
//                                show = false
                            }
                        }, label: {
                            
                            Image("questions").resizable().frame(width:30 ,height: 30).position(CGPoint(x: 50, y: 100))
                            Text("Como Jogar").frame(width:120 ,height: 25).position(CGPoint(x: -20, y: 100))
                            
                            
                                .foregroundColor(Color.white)
                            
                                .font(Font.system(size: 20, weight: .semibold))
                            
                            
                        })
                        
                        //MARK: FORMAS
                        Button(action: {
                            // Dismiss the PopUp
                            withAnimation(.linear(duration: 0.3)) {
//                                show = false
                            }
                        }, label: {
                            
                            Image("formasInfo").resizable().frame(width:30 ,height: 30).position(CGPoint(x: 50, y: 150))
                            Text("Formas").frame(width:90 ,height: 25).position(CGPoint(x: -40, y: 150))
                            
                            
                                .foregroundColor(Color.white)
                            
                                .font(Font.system(size: 20, weight: .semibold))
                            
                            
                        })
                        
                        
                        //                        //MARK: SObre
                        //
                        Button(action: {
                            // Dismiss the PopUp
                            withAnimation(.linear(duration: 0.3)) {
//                                show = false
                            }
                        }, label: {
                            
                            Image("info.circle").resizable().frame(width:30 ,height: 30).position(CGPoint(x: 50, y: 200))
                            Text("Sobre").frame(width:90 ,height: 25).position(CGPoint(x: -50, y: 200))
                            
                            
                                .foregroundColor(Color.white)
                            
                                .font(Font.system(size: 20, weight: .semibold))
                            
                            
                        })
                        
                        
                    }.frame(width: 300, height: 300).position(CGPoint(x: geo.size.width * 0.5, y: geo.size.height * 0.5))
                }
            }
        }
    }
}

