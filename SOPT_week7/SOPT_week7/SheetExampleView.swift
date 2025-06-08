//
//  ContentView.swift
//  SOPT_week7
//
//  Created by 이나연 on 5/24/25.
//

import SwiftUI

struct SheetExampleView: View {
    @State private var isSheetePresented = false
    
    var body: some View {
        VStack(spacing: 20) {
            Text("메인 화면")
                .font(.largeTitle)
            
            Button("시트 열기") {
                isSheetePresented = true
            }
        }
        .sheet(isPresented: $isSheetePresented) {
            SheetDetailView(isPresented: $isSheetePresented)
        }
    }
}

#Preview {
    SheetExampleView()
}
