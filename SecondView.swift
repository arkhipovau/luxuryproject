import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack(spacing: 15) { //  отступ между блоками
            // Верхний блок
            TopBarView()

            // Блок подкастов
            PodcastsSectionView()

            // Блок историй
            StoriesSectionView()

            // Таббар
            TabBarView()
        }
        .background(Color.black)
        .ignoresSafeArea()
    }
}

struct TopBarView: View {
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Text("Сегодня")
                    .font(.system(size: 34, weight: .bold))
                    .foregroundColor(.white)
                
                Spacer()
                
                Image(systemName: "square.dashed")
                    .foregroundColor(.gray)
                    .font(.system(size: 20))
                
                Circle()
                    .fill(Color.gray.opacity(0.3))
                    .frame(width: 30, height: 30)
            }
            .padding(.horizontal, 20)
            .padding(.top, 100)
            HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(white: 0.2))
                        .frame(height: 36)
                        .overlay(
                            HStack {
                                Image(systemName: "magnifyingglass")
                                    .foregroundColor(.gray)
                                Text("Поиск")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 17))
                                Spacer()
                                Image(systemName: "mic")
                                    .foregroundColor(.gray)
                            }
                                .padding(.horizontal, 10)
                        )
                }
                .padding(.horizontal, 20)
            }
            .background(Color.black)
        }
    }

struct PodcastsSectionView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            // Заголовок секции
            HStack {
                Text("Подкасты")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.white)
                Spacer()
                Text(">")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.gray)
            }
            .padding(.horizontal, 20)

            // Горизонтально прокручиваемые карточки
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(0..<5, id: \ .self) { _ in
                        PodcastCardView()
                    }
                }
                .padding(.horizontal, 20)
            }
        }
    }
}

struct StoriesSectionView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            // Заголовок секции
            HStack {
                Text("Истории")
                    .font(.system(size: 24, weight: .bold))
                    .foregroundColor(.white)
                Spacer()
                Text(">")
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(.gray)
            }
            .padding(.horizontal, 20)

            Text("Интервью, успех, истории и вот это всё")
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.horizontal, 20)

            // Горизонтально прокручиваемые карточки
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(0..<5, id: \ .self) { _ in
                        StoryCardView()
                    }
                }
                .padding(.horizontal, 20)
            }
        }
    }
}

struct StoryCardView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Rectangle()
                .fill(Color.yellow.opacity(0.8))
                .frame(width: 150, height: 150)
                .cornerRadius(10)

            Text("Название")
                .font(.system(size: 14, weight: .bold))
                .foregroundColor(.white)

            Text("Автор")
                .font(.system(size: 12))
                .foregroundColor(.gray)
        }
        .frame(width: 150)
    }
}

struct TabBarView: View {
    var body: some View {
        HStack(spacing: 50) {
            TabBarItem(icon: "house.fill", title: "Главная", isSelected: false)
            NavigationLink(destination: ContentView()) {
                TabBarItem(icon: "magnifyingglass", title: "Search", isSelected: true)
            }
            TabBarItem(icon: "square.grid.2x2", title: "Browse", isSelected: false)
            TabBarItem(icon: "books.vertical.fill", title: "Library", isSelected: false)
        }
        .frame(height: 60)
        .background(Color.black)
    }
}

struct CustomTabBarItem: View {
    var icon: String
    var title: String
    var isSelected: Bool

    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.system(size: 23))
                .foregroundColor(isSelected ? .orange : .gray)
            Text(title)
                .font(.system(size: 10))
                .foregroundColor(isSelected ? .orange : .gray)
        }
    }
}

struct PodcastCardView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            ZStack {
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 250, height: 150)
                    .cornerRadius(10)
                Image(systemName: "bolt.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.black)
            }

            Text("Продолжить • Октябрь 30")
                .font(.system(size: 12))
                .foregroundColor(.gray)

            Text("Нейросети, панк и эстетики")
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(.white)

            Text("Честно признаюсь — мне тяжело смотреть на современное. Проще...")
                .font(.system(size: 12))
                .foregroundColor(.gray)

            HStack {
                Image(systemName: "play.fill")
                    .foregroundColor(.white)
                Text("56 мин")
                    .font(.system(size: 12))
                    .foregroundColor(.white)

                Spacer()

                Image(systemName: "arrow.down.to.line")
                    .foregroundColor(.gray)

                Image(systemName: "ellipsis")
                    .foregroundColor(.gray)
            }
        }
        .padding()
        .frame(width: 250)
        .background(Color.black.opacity(0.8))
        .cornerRadius(15)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
