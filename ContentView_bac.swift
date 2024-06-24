////
////  ContentView.swift
////  Final project (img puzzle)
////
////  Created by student on 5/31/24.
////
//
////.shuffle
//
//
//import SwiftUI
//
//
//
//struct ContentView_bac: View {
//    
//    var solvedpuzzle = ["penguin11", "penguin12", "penguin13", "penguin21", "penguin22", "penguin23", "penguin31", "penguin32", "penguin33"] // array of imgs in solved order
////        @State private var puzzlepieces: [Puzzlepiece] = ["penguin33", "penguin12", "penguin13", "penguin22", "penguin21", "penguin23", "penguin31", "penguin32", "penguin11"]
////        @State private var draggingPuzzleItem: PuzzlePiece?
//    
//    @State private var colors: [Color] = [.red, .blue, .purple, .yellow, .black, .indigo, .cyan, . brown, .mint, .orange]
//    @State private var draggingItem: Color?
//    
//    
//    var body: some View {
//        NavigationStack {
//            ScrollView(.vertical) {
//                let columns = Array(repeating: GridItem(spacing: 10), count: 3)
//                LazyVGrid(columns: columns, spacing: 10, content: {
//                    ForEach(colors, id: \.self) { color in
//                        GeometryReader {
//                            let size = $0.size
//                            
//                            RoundedRectangle(cornerRadius: 10)
//                                .fill(color.gradient)
//                                .draggable(color) {
//                                    //custom preview view
//                                    RoundedRectangle(cornerRadius: 10)
//                                        .fill(.ultraThinMaterial)
//                                        .frame(width: size.width, height: size.height)
//                                        .onAppear{
//                                            draggingItem = color
//                                        }
//                                }
//                            ///Drop
//                                .dropDestination(for: Color.self){
//                                    items, location in return false
//                                } isTargeted: { status in
//                                    if let draggingItem, status, draggingItem != color {
//                                        if let sourceIndex = colors.firstIndex(of: draggingItem),
//                                           let destinationIndex = colors.firstIndex(of: color){
//                                            withAnimation(.bouncy) {
//                                                let sourceItem = colors.remove(at:sourceIndex)
//                                                colors.insert(sourceItem,at: destinationIndex)
//                                            }
//                                        }
//                                    }
//                                }
//                            
//                        }
//                        .frame(height: 100)
//                    }
//                    
//                })
//                .padding(15)
//            }
//            .navigationTitle("puzzle")
//        }
//        
//                          }
//}
//        
//#Preview {
//  ContentView_bac()
//}
//        

    



