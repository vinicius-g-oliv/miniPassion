//
//  BottomButtons.swift
//  Mini4
//
//  Created by Barbara Argolo on 27/03/23.
//

import SwiftUI

struct BottomButtons: View {
    @State var arraycerto = randomImage()
    @Binding var clickedButtonIDs: [String]
    //@State var num = 1
    var forms = GeometryForm.forms
    
    
    let gridItens = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    
    //>>>>>>> TransicaoTelas
    var body: some View {
        HStack {
            GeometryReader() { geon in
                LazyVGrid(columns: gridItens, spacing: 10) {
                    ForEach(forms, id: \.self) { form in
                        Button {
                            
                            if clickedButtonIDs.count < 9 {
                                clickedButtonIDs.append(form.image)
                                print("\(clickedButtonIDs)")
                            }
                            
                        }
                    label: {
                        ////<<<<<<< HEAD
                        //                            Image(systemName: "\(form.name)")
                        //                            Rectangle()
                        //                                .fill(form.color)
                        //                                .frame(width: 80, height: 80)
                        //=======
                        ZStack {
                            Rectangle()
                                .fill(form.color)
                            
                                .frame(width: 80, height: 80)
                            
                            
                            Image(form.image).resizable().frame(width: 30, height: 30)
                            
                        }
                        
                        
                        //>>>>>>> TransicaoTelas
                    }
                    }
                }
                .position(CGPoint(x: geon.size.width * 0.5, y: geon.size.height * 0.85))
                
                Button(action: {
                    clickedButtonIDs.removeAll()
                    print("\(clickedButtonIDs)")
                    print("Bolinha 1")
                }, label: {
                    Circle()
                        .frame(width: 50, height: 50)
                    
                })
                .position(x: 80,y: 700)
                
                Button(action: {
                    
                    saveArray()
                    if clickedButtonIDs == arraycerto.randomImages {
                        //tela vitória
                                     
                        
                    } else {
                        print("Não foi dessa vez, tente novamente!")
                    }
                    print("Bolinha 2")
                }, label: {
                    Circle()
                        .frame(width: 50, height: 50)
                })
                .position(x: 320,y: 700)
            }
        }
    }
    
    
    func saveArray() {
        let userDefaults = UserDefaults.standard
        userDefaults.set(clickedButtonIDs, forKey: "clickedButtonIDs")
        
        let saveArrayForms = userDefaults.array(forKey: "clickedButtonIDs") as? [String]
        
        print("\(String(describing: saveArrayForms))")
        
    }
}


