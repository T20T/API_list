////
////  Bored API.swift
////  Api
////
////  Created by Taghrid Alkwayleet on 10/11/1444 AH.
////
//
//import SwiftUI
//
//
//    struct Bored: Codable {
//        var bored: [BoredApi]
//    }
//    
//    struct BoredApi: Codable {
//        var participants: Int
//        var activity: String
//        var type: String
//    }
//    
//struct Bored_API: View {
//    @State private var bored = [BoredApi]()
//    
//    
//    //    @StateObject var viewModel = ViewModel()
//    //
//    var body: some View {
//        List(bored, id: \.participants) { item in
//            VStack(alignment: .leading) {
//                Text(item.activity)
//                    .font(.headline)
//                Text(item.type)
//                
//            }
//            
//        }
//        
//        .task {
//            await loadData()
//        }
//    }
//    
//    func loadData() async {
//        
//        guard let url = URL(string: "http://www.boredapi.com/api/activity/
//") else {
//            print("Invalid URL")
//            return
//        }
//        do {
//            let (data, _) = try await URLSession.shared.data(from: url)
//            
//            if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
//                results = decodedResponse.results
//            }
//            
//        } catch {
//            print("Invalid data")
//        }
//    }
//}
//                
//
//struct Bored_API_Previews: PreviewProvider {
//    static var previews: some View {
//        Bored_API()
//    }
//}
