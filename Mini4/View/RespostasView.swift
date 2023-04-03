//
//  RespostasView.swift
//  Mini4
//
//  Created by Luana Moraes on 24/03/23.
//

import SwiftUI
struct RespostasView: View {
    
    @State var clickedButtonsIDs: [String] = []
    
    private let color: Color = .gray
    
    @State var showResult: Bool = false
  
    var body: some View {
        GeometryReader() { geo in
           
            NavigationView {
                ZStack {
                    
                    VStack {
    //                        Text("Fácil")
    //                            .font(.system(size: 30, weight: .medium, design: .rounded))
                        
                        ZStack {
                            Grid {
                                GridRow {
                                    ForEach(0..<3) { index in
                                        ZStack {
                                            Rectangle()
                                                .frame(width: 90, height: 70)
                                                
                                                .foregroundColor(Color("roundedretangle"))
                                                .cornerRadius(15).padding(.horizontal, 10).padding(.vertical, 10)
                                            if ( index*3 < clickedButtonsIDs.count){
                                                //                                                Image()
                                                Image("\(clickedButtonsIDs[index*3])").resizable()
                                                    .scaledToFit()
                                                    .frame(width: 30,height: 30)
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 30, weight: .medium, design: .rounded))
                                            }
                                        }
                                    }
                                }
                                GridRow {
                                    ForEach(0..<3) { index in
                                        ZStack {
                                            Rectangle()
                                                .frame(width: 90, height: 70)
                                                .foregroundColor(Color("roundedretangle"))
                                                .cornerRadius(15).padding(.horizontal, 10).padding(.vertical, 10)
                                            if ( index*3+1 < clickedButtonsIDs.count){
                                                Image("\(clickedButtonsIDs[index*3+1])").resizable()
                                                    .scaledToFit()
                                                    .frame(width: 30,height: 30)
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 30, weight: .medium, design: .rounded))
                                            }
                                        }
                                        
                                    }
                                }
                                GridRow {
                                    ForEach(0..<3) { index in
                                        ZStack {
                                            Rectangle()
                                                .frame(width: 90, height: 70)
                                                .foregroundColor(Color("roundedretangle"))
                                                .cornerRadius(15).padding(.horizontal, 10).padding(.vertical, 10)
                                            if ( index*3+2 < clickedButtonsIDs.count){
                                                Image("\(clickedButtonsIDs[index*3+2])").resizable()
                                                    .scaledToFit()
                                                    .frame(width: 30,height: 30)
                                                    .foregroundColor(.white)
                                                    .font(.system(size: 30, weight: .medium, design: .rounded))
                                            }
                                        }
                                        
                                    }                                }
                            }
                        }
                        
                    }.frame(width: 100).position(x:geo.size.width * 0.5 ,y: geo.size.height * 0.3)
                    BottomButtons(clickedButtonIDs: $clickedButtonsIDs)
                    
                }.background(Color("background"))
                
            } .navigationBarTitleDisplayMode(.inline)
        }
    }
}


struct ColunaGrid : View {
    var i : Int
    var body : some View {
        VStack {
            
            ZStack {
                Rectangle()
                    .frame(width: 90, height: 70)
                    .foregroundColor(.gray)
                    .cornerRadius(15)
                Text("\(i)")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .medium, design: .rounded))
                
            }
            
            
            ZStack {
                Rectangle()
                    .frame(width: 90, height: 70)
                    .foregroundColor(.gray)
                    .cornerRadius(15)
                Text("\(i+1)")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .medium, design: .rounded))
                
            }
            
            ZStack {
                Rectangle()
                    .frame(width: 90, height: 70)
                    .foregroundColor(.gray)
                    .cornerRadius(15)
                Text("\(i+2)")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .medium, design: .rounded))
                
                
            }
           
        
            
        }
        .frame(width: 100)
        
        
    }
}

//func compareArrays( firstArray: [String],  secondArray: [String]) -> any View {
//    if firstArray != secondArray {
//        return ContentView() //teste, pra chamar a view de "perdeu"
//    } else {
//        return ConfView() // teste, pra chamar a view de "ganhou
//    }
//}

//struct Card: View {
//    let word: String
////    private let color: Color = .gray
//
////    var body: some View {
////        VStack {
////            ZStack {
////                Rectangle()
////                    .frame(width: 90, height: 70)
////                    .foregroundColor(color)
////                    .cornerRadius(15)
////                Text(word)
////                    .foregroundColor(.white)
////                    .font(.system(size: 30, weight: .medium, design: .rounded))
////            }
////        }
////        .frame(width: 100)
////    }
////}
//
//func getCard(word: String) -> Card {
//    return Card(word: word)
//}
////        struct ContentView_Previews: PreviewProvider {
////            static var previews: some View {
////                RespostasView(forms: GeometryForm)
////            }
////        }
//
//
//
