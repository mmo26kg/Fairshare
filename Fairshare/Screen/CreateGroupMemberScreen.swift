//
//  CreateGroupMemberView.swift
//  Fairshare
//
//  Created by Nguyễn Đức on 23/4/24.
//

import SwiftUI

struct CreateGroupMemberView: View {
    @State var groupName: String
    @State private var userName = ""
    @State var users: [User] = []
    
    var body: some View {
        NavigationStack{
            VStack{
                
                HStack(spacing: 12) {
                    FSTextField(text: $userName, placeholder: "Nhập tên thành viên", hasLabel: false)
                    
                    
                    Button {
                        addUser()
                    } label: {
                        Text("Thêm")
                    }
                    .fontWeight(.regular)
                    .buttonStyle(.bordered)
                    .controlSize(.regular)
                    .tint(.accentColor)
                    .disabled(userName.isEmpty)
                }.padding()
                
                if users.isEmpty {
                                    NoMemberView()
                                } else {
                                    MemberList(users: $users)
                                }

                
                
                
                Spacer()
                
            }.navigationTitle(
                Text(groupName).font(.headline)
            )
        }
    }
    
    func addUser() {
        guard !userName.isEmpty else {
            return // Không thêm nếu tên rỗng
        }
        
        let newUser = User(id: users.count, name: userName)
        users.append(newUser)
        userName = "" // Xóa nội dung của text field sau khi thêm user
    }
}








#Preview {
    CreateGroupMemberView(groupName: "Test")
}

struct MemberList: View {
    @Binding var users: [User]
    var body: some View {
        VStack{
            HStack {
                Text("DANH SÁCH THÀNH VIÊN")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(.systemGray))
                
                Spacer()
            }
            
            List(users, id: \.id) { user in
                NavigationLink {
                    Text("User Detail View " + user.name)
                } label: {
                    Text(user.name)
                }
            }.listStyle(PlainListStyle())
            
                
            
        }.padding()

    }
    
}

struct NoMemberView: View {
    var body: some View {
        Spacer()
        VStack{
            Image(systemName: "person.badge.plus")
                .resizable()
                .scaledToFit()
                .frame(width: 50)
                .foregroundColor(Color(.tertiaryLabel))
            Text("Hãy tạo những thành viên \n đầu tiên của nhóm")
                .font(.body)
                .multilineTextAlignment(.center)
                .foregroundColor(Color(.tertiaryLabel))
        }
        Spacer()
    }
}
