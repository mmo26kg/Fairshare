//
//  StartScreen.swift
//  Fairshare
//
//  Created by Nguyễn Đức on 21/4/24.
//

import SwiftUI

struct StartScreen: View {
    var body: some View {
        NavigationStack{
            Spacer()
            VStack(spacing: 8) {
                Image("fairshare-logo")
                    .resizable()
                    .scaledToFit()
                .frame(height: 100)
                
                Text("FairShare")
                    . font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("AccentColor"))
            }
            
            
            
            Spacer()
            
            NavigationLink {
                CreateNewGroupScreen()
            } label: {
                Label(
                    title: { Text("TẠO NHÓM") },
                    icon: { Image(systemName: "plus") }
                )
            }
            .fontWeight(.regular)
            .buttonStyle(.bordered)
            .controlSize(.large)
            .tint(Color("AccentColor"))
            
            
            Spacer()
            Text("Tạo nhóm đầu tiên của bạn để bắt đầu quản lý chi phí")
                .font(.footnote)
                .foregroundColor(Color(.lightGray))
        }
    }
}

#Preview {
    StartScreen()
}
