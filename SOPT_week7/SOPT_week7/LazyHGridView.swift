//
//  LazyHGridView.swift
//  SOPT_week7
//
//  Created by 이나연 on 5/24/25.
//

import SwiftUI

struct LazyHGridView: View {
    let rows = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows) {
                    ForEach(1...20, id:  \.self) { index in
                                Text("\(index)")
                            }
                    .frame(width: 80, height: 80)
                    .padding()
                    .background(Color.orange)
                    .cornerRadius(16)
            }
            .frame(height: 300)
        }
        }
}

#Preview {
    LazyHGridView()
}
