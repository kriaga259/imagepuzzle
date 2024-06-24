// Image Object
//  ContentView.swift
//  Final project (img puzzle)
//
//  Created by student on 5/31/24.
//

//.shuffle


import SwiftUI



struct ContentView: View {
    
    
    var solvedpuzzle = ["penguin11", "penguin12", "penguin13", "penguin21", "penguin22", "penguin23", "penguin31", "penguin32", "penguin33"] // array of imgs in solved order
    
    
//    @State private var colors: [Label] = [ Label("penguin33",image:"penguin33"),
//                                           Label("penguin12", image:"penguin12"),
//                                           Label("penguin13", image:"penguin13")] /*Label("penguin22"), Label("penguin21"), Label("penguin23"), Label("penguin31"), Label("penguin32"), Label("penguin11")*/
//
//    @State private var draggingItem = Label("penguin32",image:"penguin32")
    
    @State private var images: [Image] = [Image("penguin11"), Image("penguin21"), Image("penguin31"), Image("penguin12"), Image("penguin22"), Image("penguin32"), Image("penguin13"), Image("penguin23"), Image("penguin33")]
    
    @State private var images_Sh: [Image] = [Image("penguin33"), Image("penguin12"), Image("penguin13"), Image("penguin22"), Image("penguin21"), Image("penguin23"), Image("penguin31"), Image("penguin32"), Image("penguin11")]
    @State private var draggingItem: Image?
    
    
    
//    @State private var colors: [String] = ["penguin33", "penguin12", "penguin13", "penguin22", "penguin21", "penguin23", "penguin31", "penguin32", "penguin11"]
//    @State private var draggingItem: String?
    
    //    @State private var colors: [Color] = [.red, .blue, .purple, .yellow, .black, .indigo, .cyan, . brown, .mint, .orange]
    //    @State private var draggingItem: Color?
    
    
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                let columns = Array(repeating: GridItem(spacing: 1), count: 3)
                LazyVGrid(columns: columns, spacing: 1, content: {
                    ForEach(0..<images.count) { imageIdx in
                            
                        let limage = images[imageIdx]

                        GeometryReader {
                            let size = $0.size
                            
                            limage
//                                .aspectRatio(contentMode: .fit)
                                .resizable()
                                .scaledToFit()
                                .draggable(limage)
                                .onAppear{                  // shows the image ur dragging
                                        draggingItem = limage
                                }
                            
                                .dropDestination(for: Image.self){      //
                                    items,location in
                                    return false
                                }
                                   
                                isTargeted: { status in
                                   if let draggingItem, status, draggingItem != limage {
                                    if let sourceIndex = images.firstIndex(of: draggingItem),
                                          let destinationIndex = images.firstIndex(of: limage){
                                          withAnimation(.bouncy) {
                                              let tmpOldImage = images[destinationIndex] // saving target img that will be overriden first
                                              // swapping
                                              images[destinationIndex]=draggingItem //overriding
                                              images[sourceIndex] = tmpOldImage //moving target img to og location of dragged img
                                         }
                                      }
                                  }
                              }
                            
                        }
                        .frame(height: 70)
                    }
                    
                })
                .padding(10
                )
            }
            .navigationTitle("puzzle")
        }
        
    }
    
}
    
    #Preview {
        ContentView()
    }
    

                            

        

    




