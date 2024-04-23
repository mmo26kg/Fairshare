//
//  FSTextField.swift
//  Fairshare
//
//  Created by Nguyễn Đức on 21/4/24.
//

import SwiftUI

struct FSTextField: View {
    @Binding var text: String
    var label: String?
    var placeholder: String
    var hasLabel: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            if hasLabel {
                Text(label?.uppercased() ?? "")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(Color(.systemGray))
                
            }
            
            ZStack(alignment: .leading) {
                Rectangle()
                    .fill(Color.gray.opacity(0.05))
                    .frame(height: 36) // Điều chỉnh chiều cao của hộp nền
                
                TextField(placeholder, text: $text)
                    .padding(.horizontal, 8) // Điều chỉnh khoảng cách với lề trái và phải
            }
            .cornerRadius(8)
            
        }
//        .padding()
    }
}


#Preview {
    FSTextField(text: .constant("abc"), label: "Label Name", placeholder: "Placeholder here", hasLabel: true)
}
