//
//  CreateNewGroupScreen.swift
//  Fairshare
//
//  Created by Nguyễn Đức on 21/4/24.
//

import SwiftUI

struct CreateNewGroupScreen: View {
    @State private var groupName: String = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationStack {
            
            Spacer()
            
            FSTextField(text: $groupName, label: "Tên nhóm", placeholder: "Nhập tên nhóm", hasLabel: true)
                .padding()
            
            Spacer()
            
            NavigationLink {
                CreateGroupMemberView(groupName: groupName)
            } label: {
                Label(
                    title: { Text("Tiếp tục") },
                    icon: { Image(systemName: "forward") }
                )
            }
            .fontWeight(.regular)
            .buttonStyle(.bordered)
            .controlSize(.regular)
            .tint(.accentColor)
            .padding()
            .disabled(groupName.isEmpty)
            
            
            //            Spacer()
        }
        .navigationTitle("Tạo nhóm") // Use navigationBarTitle instead of navigationTitle
        .navigationBarItems(leading: Button("Hủy") {
            presentationMode.wrappedValue.dismiss()
        })
        .navigationBarBackButtonHidden(true)
        
        
        //        .toolbar {
        //            ToolbarItem(placement: .bottomBar) {
        //                NavigationLink {
        //                    CreateNewGroupScreen()
        //                } label: {
        //                   Text("Tiếp tục")
        //                }
        //                .fontWeight(.regular)
        //                .controlSize(.large)
        //                .tint(Color("AccentColor"))
        //
        //            }
        //        }
    }
}


#Preview {
    CreateNewGroupScreen()
}
