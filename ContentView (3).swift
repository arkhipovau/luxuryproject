//
//  ContentView.swift
//  MyFirstProject
//
//  Created by Борис on 28.09.24.
//

    import SwiftUI

import SwiftUI

struct ContentView: View {
    @State private var progressValue: Float = 0.5
    @State private var volumeValue: Float = 0.5
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(red: 162/255, green: 165/255, blue: 66/255), Color(red: 204/255, green: 211/255, blue: 104/255), Color(red: 223/255, green: 223/255, blue: 118/255), Color(red: 210/255, green: 207/255, blue: 108/255), Color(red: 183/255, green: 180/255, blue: 83/255), Color(red: 95/255, green: 95/255, blue: 0)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("cvr")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 375, height: 375)
                    .clipped()
                    .cornerRadius(10)
                    .shadow(radius: 24)
                    .padding(.top, 100)
                    .zIndex(10)
                Spacer()
                VStack(alignment: .leading) {
                    Text("ОКТЯБРЬ 30")
                        .font(.system(size: 11, weight: .semibold))
                        .foregroundColor(Color(red: 230/255, green: 230/255, blue: 230/255))
                        .kerning(0.06)
                        .padding(.bottom, 4)
                    Text("Нейросети, панк и эстетики")
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundColor(.white)
                        .opacity(0.9)
                        .padding(.bottom, 3)
                    Text("Дизайн-комьюнити")
                        .font(.system(size: 17, weight: .regular))
                        .foregroundColor(Color(red: 230/255, green: 230/255, blue: 230/255)
)
                    HStack {
                        Spacer()
                        Button(action: {}) {
                            Image(systemName: "ellipsis")
                                .foregroundColor(.white)
                        }
                        .frame(width: 28, height: 28)
                        .background(LinearGradient(gradient: Gradient(colors: [Color(red: 127/255, green: 127/255, blue: 127/255, opacity: 0.40), Color(red: 127/255, green: 127/255, blue: 127/255, opacity: 0.40)]), startPoint: .top, endPoint: .bottom))
                        .cornerRadius(14)
                    }
                    Slider(value: $progressValue, in: 0...1, step: 0.01)
                        .accentColor(.white)
                        .opacity(0.5)
                    HStack {
                        Text("15:16")
                            .foregroundColor(Color(red: 230/255, green: 230/255, blue: 230/255))
                            .font(.system(size: 12, weight: .semibold))
                        Spacer()
                        Text("-56:55")
                            .foregroundColor(Color(red: 230/255, green: 230/255, blue: 230/255))
                            .font(.system(size: 11, weight: .semibold))
                            .kerning(0.06)
                    }
                }
                .padding([.leading, .trailing], 32)
                HStack(spacing: 30) {
                    Button(action: {}) {
                        Text("1x")
                            .font(.system(size: 16, weight: .medium))
                            .foregroundColor(Color(red: 230/255, green: 230/255, blue: 230/255))
                    }
                    Button(action: {}) {
                        Image(systemName: "backward.fill")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    Button(action: {}) {
                        Image(systemName: "play.fill")
                            .font(.system(size: 48))
                            .foregroundColor(.white)
                    }
                    .frame(width: 57, height: 57)
                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    Button(action: {}) {
                        Image(systemName: "speaker.wave.2.fill")
                            .font(.title2)
                            .foregroundColor(Color(red: 230/255, green: 230/255, blue: 230/255))
                    }
                }
                HStack {
                    Slider(value: $volumeValue, in: 0...1, step: 0.01)
                        .accentColor(.white)
                        .opacity(0.5)
                }
                .padding([.leading, .trailing], 32)
                .padding(.vertical, 0)
                HStack(spacing: 80) {
                    Button(action: {}) {
                        Image(systemName: "airplayaudio")
                            .foregroundColor(Color(red: 194/255, green: 194/255, blue: 194/255))
                    }
                    Button(action: {}) {
                        Image(systemName: "list.bullet")
                            .foregroundColor(Color(red: 194/255, green: 194/255, blue: 194/255))
                    }
                }
                .padding([.leading, .trailing], 32)
                .padding(.top, 27)
                .padding(.bottom, 14)
                Spacer()
                Color.white
                    .frame(width: 154, height: 5)
                    .cornerRadius(2.5)
                    .opacity(0.6)
                    .padding(.bottom, 8)
            }
        }
        .frame(width: 430, height: 932)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


#Preview {
    ContentView()
}
