import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Backgroundview(topColor: .blue, bottomColor: Color("lighBlue"))
            VStack {
                CityTextView(citynAME: "Banten, Indonesia")
                
                MainWeatherstatusView(imagename: "cloud.sun.fill", temperatur: 32)
                
                HStack(spacing: 20) {
                    Weatherdayview(dayofweek: "Senin", imagename: "cloud.sun.fill", temperature: 30)
                    Weatherdayview(dayofweek: "Selasa", imagename: "cloud.drizzle.fill", temperature: 29)
                    Weatherdayview(dayofweek: "Rabu", imagename: "cloud.sun.fill", temperature: 30)
                    Weatherdayview(dayofweek: "Kamis", imagename: "cloud.bolt.fill", temperature: 30)
                    Weatherdayview(dayofweek: "Jumat", imagename: "cloud.sun.fill", temperature: 30)
                    
                }
                
                Spacer()
                
                Button {
                    print("tapped")
                } label: {
                    Text("Change daya time")
                        .frame(width: 200, height: 50)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}

struct Weatherdayview: View {
    var dayofweek: String
    var imagename: String
    var temperature: Int
    var body: some View {
        VStack {
            Text(dayofweek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imagename)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct Backgroundview: View {
    var topColor: Color
    var bottomColor: Color
    var body: some View {
        
        LinearGradient(gradient: Gradient(colors: [.blue, .white]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct CityTextView: View {
    var citynAME: String
    var body: some View {
        Text("Banten, Indonesia")
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(Color.white)
            .padding(.bottom)
    }
}

struct MainWeatherstatusView: View {
    var imagename: String
    var temperatur: Int
    var body: some View {
        VStack(spacing: 8) {
            Image(systemName: imagename)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperatur)")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
            
        }
    }
}
