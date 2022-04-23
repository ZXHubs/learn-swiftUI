//
//  ContentView.swift
//  learnswiftUI
//
//  Created by ZhangX on 2022/4/17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 8.0) {
                Spacer()
                Image("Logo 2")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 26.0, height: 26.0)
                    .cornerRadius(10)
                    .padding(9)
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .strokeStyle(cornerRadius: 16)
                Text("SwiftUI for iOS 15")
                    .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                    .foregroundStyle(.linearGradient(colors: [.red, .blue.opacity(0.5)], startPoint: .topLeading, endPoint: .topTrailing))
                Text("20 section - 3 hours".uppercased())
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(.secondary)
                    // foregroundStyle和foregroundColor的区别是：可以用更多选择比如渐变
                Text("Build an iOS app for iOS 15 with custom layouts, animations and ...")
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.secondary)
            }
            .padding(/*@START_MENU_TOKEN@*/.all, 20.0/*@END_MENU_TOKEN@*/)
            .padding(.vertical, 20)
            .frame(height: 350.0)
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
//            .cornerRadius(/*@START_MENU_TOKEN@*/30.0/*@END_MENU_TOKEN@*/)
//            .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 10)
            .strokeStyle()
            .padding(.horizontal, 20)
            .background(
                Image("Blob 1")
                    .offset(x: 250, y: -100)
            )
            .overlay(
                Image("Illustration 5")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 230)
                    .offset(x: 32, y: -80)
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
//            ContentView()
//                .preferredColorScheme(.dark)
        }
    }
}
