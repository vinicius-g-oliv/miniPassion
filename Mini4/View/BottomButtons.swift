//
//  BottomButtons.swift
//  Mini4
//
//  Created by Barbara Argolo on 27/03/23.
//

import SwiftUI

struct BottomButtons: View {
    
    @Binding var clickedButtonIDs: [String] // altera o array vazio e atualiza o @State
    //@State var num = 1
    var forms = GeometryForm.forms
    
    let gridItens = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    

    
    var body: some View {
        HStack {
            GeometryReader() { geon in
                LazyVGrid(columns: gridItens, spacing: 10) {
                    ForEach(forms, id: \.self) { form in
                        Button {
                            clickedButtonIDs.append(form.name) // adiciona o ID do botão clicado no array
                            print("\(clickedButtonIDs)")
                            
                        } label: {
                            ZStack {
                                Rectangle()
                                    .fill(form.color)
                                
                                    .frame(width: 80, height: 80)
                                
                                           
                                Image(form.image).resizable().frame(width: 30, height: 30)
                            
                                        }
//                          Image("trianguloBranco").frame(width: 80, height: 80)
                            
                            
                        }
                    } //
                }
                .position(CGPoint(x: geon.size.width * 0.5, y: geon.size.height * 0.85))
                
            }
        }
        
    }
    
    
}

//struct BottomButtons_Previews: PreviewProvider {
//    static var previews: some View {
//        BottomButtons(clickedButtonIDs: <#Binding<[Int]>#>)
//    }
//}
