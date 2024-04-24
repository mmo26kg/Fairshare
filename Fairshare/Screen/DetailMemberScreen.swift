//
//  DetailMemberScreen.swift
//  Fairshare
//
//  Created by Nguyễn Đức on 23/4/24.
//

import SwiftUI

struct DetailMemberScreen: View {
    @State var user: User
    
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack(spacing: 32) {
                    
                    
                    HStack {
                        CircleImageView()
                        Spacer()
                    }
                    
                    FSTextField(text: $user.name, label: "HỌ VÀ TÊN", placeholder: "Nhập tên thành viên", hasLabel: true)
                    FSTextField(text: $user.name, label: "HỌ VÀ TÊN", placeholder: "Nhập tên thành viên", hasLabel: true)
                    FSTextField(text: $user.name, label: "HỌ VÀ TÊN", placeholder: "Nhập tên thành viên", hasLabel: true)
                    FSTextField(text: $user.name, label: "HỌ VÀ TÊN", placeholder: "Nhập tên thành viên", hasLabel: true)
                    FSTextField(text: $user.name, label: "HỌ VÀ TÊN", placeholder: "Nhập tên thành viên", hasLabel: true)
                    FSTextField(text: $user.name, label: "HỌ VÀ TÊN", placeholder: "Nhập tên thành viên", hasLabel: true)
                    FSTextField(text: $user.name, label: "HỌ VÀ TÊN", placeholder: "Nhập tên thành viên", hasLabel: true)
                    FSTextField(text: $user.name, label: "HỌ VÀ TÊN", placeholder: "Nhập tên thành viên", hasLabel: true)
                    FSTextField(text: $user.name, label: "HỌ VÀ TÊN", placeholder: "Nhập tên thành viên", hasLabel: true)
                    FSTextField(text: $user.name, label: "HỌ VÀ TÊN", placeholder: "Nhập tên thành viên", hasLabel: true)
     
                    
                    Spacer()
                    
                    
                }
            }
            .navigationTitle(user.name)
            //            .navigationBarItems(trailing: Button("Lưu") {
            //                // Save action here
            //            })
            .toolbar {
                ToolbarItem(placement: .bottomBar) {
                    HStack {
                        Button("Xóa thành viên") {
                            // Save action here
                        }
                        .fontWeight(.regular)
                        .controlSize(.regular)
                        .tint(.red)
//                        .padding()
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Text("Lưu")
                        }
                        .fontWeight(.regular)
                        .controlSize(.regular)
                        .tint(.accentColor)
//                        .padding()
                    }
                }
            }
            
            .padding()
        }
    }
}

struct CircleImageView: View {
    var body: some View {
        ZStack {
            Image("user-profile")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            
            ZStack {
                Image(systemName: "camera")
                    .foregroundColor(.accentColor)
                
            }
            .frame(width: 40, height: 40)
            .background(Color.white)
            .clipShape(Circle())
            .offset(x: 35, y: 35) // Adjust the offset to center the camera icon vertically within the circle
            .shadow(radius: 5) // Add drop shadow to the image
            
        }
    }
}



#Preview {
    DetailMemberScreen(user: User(id: 0, name: "User name here"))
}
