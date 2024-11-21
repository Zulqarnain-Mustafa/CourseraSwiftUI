//
//  BulletView.swift
//  MrepSwiftUI
//
//  Created by Tharsol Ltd on 21/11/2024.
//

import SwiftUI

struct BulletView: View {
    
    var bulletText =  "dfasdfasdsaf"
    
    var body: some View {
        VStack(alignment: .leading){
            HStack(alignment: .top, spacing: 16){
                VStack(alignment:.center, spacing: 0) {
                    ZStack {
                        Circle().fill(Color.darkBlue2777B6).frame(width: 10, height: 10)
                        Circle().fill(Color.lightBlue54B3FF).frame(width: 4, height: 4)
                    }
                    Rectangle().fill(Color.lightBlue54B3FF).frame(width: 2)
                }
                Text(self.bulletText).lineLimit(nil)
            }
        }
        
    }
}

#Preview {
    BulletView()
}
