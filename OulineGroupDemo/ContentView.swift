//
//  ContentView.swift
//  OulineGroupDemo
//
//  Created by Pankaj Talreja on 06/07/20.
//

import SwiftUI

struct ContentView: View {
    let data = Fruits.all()
    var body: some View {
        NavigationView {
            //Define List View
            List() {
                //Traverse through the data with ForEach
                ForEach(data) { dataValue in
                    //Define Section for ListView
                    Section(header: EmptyView()) {
                        // Define Outline group traverse through data and looking for tree
                        //1st Parameter Data contains root of collection of tree-Structure
                        //2nd Parameter Children: key path to a property whose non-nil value will be shown in a disclouse view.  If key path is nil, then outline group treats as a leaf(childless) in the tree
                        OutlineGroup(dataValue, id: \.id, children: \.children) { item in
                                Text ("\(item.description)").padding(.all)

                            }
                        }
                }
                
            }
                    //Type of style given to the List
                    .listStyle(SidebarListStyle())
                    .navigationTitle("Fruits & Vegitables")
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//fruits-->
//
//Apple
//orange
//Grapes
//Watermelon
//Pineapple

