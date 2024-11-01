//
//  ContentView.swift
//  MyFirstProject
//
//  Created by Борис on 28.09.24.
//

    import SwiftUI

    struct ContentView: View {
        var body: some View {
            ZStack {
                Color(red: 28 / 255, green: 28 / 255, blue: 30 / 255)
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing: 0) {
                    RoundedRectangle(cornerRadius: 9)
                        .fill(Color.black.opacity(0.15))
                        .frame(width: 390, height: 20)
                        .padding(.top, 0)
                    
                    VStack {
                        HStack {
                            Button("Отмена") {
                                // Cancel action
                            }
                            .foregroundColor(Color(red: 3 / 255, green: 133 / 255, blue: 255 / 255))
                            Spacer()
                            Text("Новый материал")
                                .foregroundColor(.white)
                                .font(.system(size: 17, weight: .semibold))
                            Spacer()
                            Button("Готово") {
                                // Done action
                            }
                            .foregroundColor(Color(red: 3 / 255, green: 133 / 255, blue: 255 / 255))
                        }
                        .frame(height: 44)
                        .padding(.horizontal)
                    }
                    .frame(height: 58)
                    .padding(.vertical, 7)
                    
                    VStack {
                        Image("me")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 175, height: 175)
                            .clipShape(Circle())
                        Button("Редактировать") {
                            // Edit action
                        }
                        .foregroundColor(Color(red: 3 / 255, green: 133 / 255, blue: 255 / 255))
                    }
                    .frame(height: 291)
                    .padding(.vertical, 53)
                    
                    VStack(spacing: 44) {
                        SectionView(title: "Нейросети, панк и эстетики", description: "Описание")
                        Button(action: {
                            // Add link action
                        }) {
                            HStack {
                                Image(systemName: "plus.circle.fill")
                                    .foregroundColor(Color(red: 45 / 255, green: 210 / 255, blue: 87 / 255))
                                Text("добавить ссылку")
                                    .foregroundColor(.white)
                            }
                        }
                        .frame(height: 44)
                        .background(Color(red: 58 / 255, green: 58 / 255, blue: 60 / 255))
                        .cornerRadius(22)
                    }
                    .frame(height: 176)
                    
                    Spacer()
                    
                    HStack {
                        Spacer()
                        RoundedRectangle(cornerRadius: 100)
                            .fill(Color.white)
                            .frame(width: 154, height: 5)
                            .blur(radius: 80)
                            .padding(.bottom, 8)
                        Spacer()
                    }
                    .frame(height: 34)
                    .rotationEffect(.degrees(180))
                }
            }
        }
    }

    struct SectionView: View {
        let title: String
        let description: String
        
        var body: some View {
            VStack {
                HStack {
                    Text(title)
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding(.horizontal, 20)
                Divider().background(Color(red: 70 / 255, green: 70 / 255, blue: 73 / 255))
                HStack {
                    Text(description)
                        .foregroundColor(Color(red: 235 / 255, green: 235 / 255, blue: 245 / 255, opacity: 0.3))
                    Spacer()
                }
                .padding(.horizontal, 20)
            }
            .frame(height: 88)
            .background(Color(red: 58 / 255, green: 58 / 255, blue: 60 / 255))
        }
    }

#Preview {
    ContentView()
}
