//
//  ContentView.swift
//  MyFirstProject
//
//  Created by Борис on 28.09.24.
//

    import SwiftUI

    struct ContentView: View {
            var body: some View {
                VStack(spacing: 0) {
                    // Title Container
                    VStack(alignment: .leading, spacing: 10) {
                        Text("Поиск")
                            .font(.system(size: 34, weight: .bold))
                            .foregroundColor(.white)
                            .padding(.top, 101)
                        SearchBar(text: .constant(""))
                            .padding(.bottom, 15)
                        Text("Категории")
                            .font(.system(size: 24, weight: .bold))
                            .foregroundColor(.white)
                            .padding(.bottom, 10)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, 20)
                    
                    // Categories
                    HStack(spacing: 10) {
                        CategoryView(backgroundColor: Color(red: 184/255, green: 116/255, blue: 227/255), title: "Статьи")
                        CategoryView(backgroundColor: Color(red: 227/255, green: 116/255, blue: 177/255), title: "Интервью")
                    }
                    .padding(10)
                
                    HStack(spacing: 10) {
                        CategoryView(backgroundColor: Color(red: 116/255, green: 220/255, blue: 227/255), title: "Подкасты")
                        CategoryView(backgroundColor: Color(red: 227/255, green: 116/255, blue: 118/255), title: "Пины")
                    }
                    
                    // Listen Now Bar
                    ListenNowBar()
                        .padding(10)
                        .padding(.top,180)
                    
                    // Tab Bar
                    TabBar()
                        .padding(20)
                    
                    Spacer()
                }
                .background(Color.black)
                .edgesIgnoringSafeArea(.all)
            }
        }

        struct SearchBar: View {
            @Binding var text: String
            
            var body: some View {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(red: 55/255, green: 55/255, blue: 57/255))
                        .frame(height: 36)
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.white)
                        Text("Поиск")
                            .foregroundColor(.white)
                    }
                    .padding(.leading, 6)
                }
                .opacity(0.5)
            }
        }

        struct CategoryView: View {
            var backgroundColor: Color
            var title: String
            
            var body: some View {
                VStack {
                    Spacer()
                    Text(title)
                        .font(.system(size: 17, weight: .semibold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Spacer()
                }
                .padding(20)
                .padding(.bottom, -70)
                .background(backgroundColor)
                .cornerRadius(18)
                .frame(width: 190, height: 122)
            }
        }

        struct ListenNowBar: View {
            var body: some View {
                ZStack {
                    Color(red: 40/255, green: 40/255, blue: 42/255)
                        .opacity(0.94)
                        .blur(radius: 50)
                        .frame(height: 64)
                    HStack {
                        Image("pst")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 48, height: 48)
                            .cornerRadius(5)
                        VStack(alignment: .leading) {
                            Text("Нейросети, панк и эстетики")
                                .font(.system(size: 15, weight: .semibold))
                                .foregroundColor(.white)
                                .lineLimit(1)
                            Text("Октябрь 30")
                                .font(.system(size: 15))
                                .foregroundColor(Color(white: 0.6))
                        }
                        Spacer()
                        Image(systemName: "play.fill")
                            .foregroundColor(.white)
                        Image(systemName: "forward.fill")
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal, 20)
                    

                }
            }
        }

        struct TabBar: View {
            var body: some View {
                VStack(spacing: 40) {
                    HStack(spacing: 50) {
                        TabBarItem(icon: "house", title: "Главная", isSelected: false)
                        TabBarItem(icon: "square.grid.2x2", title: "Browse", isSelected: false)
                        TabBarItem(icon: "books.vertical", title: "Library", isSelected: false)
                        TabBarItem(icon: "magnifyingglass", title: "Search", isSelected: true)
                    }
                    .frame(maxWidth: .infinity)
                    .frame(height: 51)
                    HomeIndicator()
                }
            }
        }

        struct TabBarItem: View {
            var icon: String
            var title: String
            var isSelected: Bool
            
            var body: some View {
                VStack {
                    Image(systemName: icon)
                        .font(.system(size: 23, weight: .semibold))
                        .foregroundColor(isSelected ? Color.orange : Color.gray)
                    Text(title)
                        .font(.system(size: 10, weight: .semibold))
                        .foregroundColor(isSelected ? Color.orange : Color.gray)
                }
            }
        }

        struct HomeIndicator: View {
            var body: some View {
                Color.white
                    .frame(width: 154, height: 5)
                    .cornerRadius(100)
                    .opacity(0.6)
                    .blur(radius: 80)
                    .padding(.bottom, 8)
            }
        }


#Preview {
    ContentView()
}
