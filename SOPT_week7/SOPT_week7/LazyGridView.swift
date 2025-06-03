//
//  LazyGridView.swift
//  SOPT_week7
//
//  Created by 이나연 on 5/24/25.
//

import SwiftUI

struct LazyGridView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(1...20, id: \.self) { value in
                    VStack {
                        Rectangle().fill(Color.orange)
                            .frame(width: 150, height: 90, alignment: .center)
                            .cornerRadius(10)
                        
                        Text("아이템 \(value)")
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(16)
                    .shadow(radius: 10)
                    
                    }
                }
            }
        }
        
}



#Preview {
    LazyGridView()
}
