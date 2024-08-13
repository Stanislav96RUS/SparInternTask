//
//  ContentView.swift
//  SparInternTask
//
//  Created by Stanislav on 10.08.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var flag = false
    
    var body: some View {
        VStack(spacing: 0) {
            HStack() {
                Button {
                    flag.toggle()
                } label: {
                    if flag == true {
                        Image("ChipsGrid")
                    }
                    if flag == false {
                        Image("ChipsList")
                    }
                }
                .frame(width: 40, height: 40)
                .padding(.leading, 8)
                Spacer()
            }
            .frame(height: 44)
            
            Color.gray
                .frame(height: 1)
            
            ScrollView {
                if flag == false {
                    GridView()
                }
                if flag == true {
                    ListView()
                }
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
