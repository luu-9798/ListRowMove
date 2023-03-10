//
//  ContentView.swift
//  ListRowMove
//
//  Created by Trung Luu on 3/10/23.
//

import SwiftUI

struct ContentView: View {
    @State var animals = ["tiger", "lion", "wolf", "deer", "horse", "buffalo", "shark", "octopus", "crocodile", "eagle", "falcon"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(self.animals, id: \.self) { animal in
                    Text(animal)
                }.onMove(perform: moveRow)
            }.navigationBarTitle("Animals", displayMode: .inline)
                .navigationBarItems(trailing: EditButton())
        }
    }
    
    private func moveRow(source: IndexSet, destination: Int) {
        self.animals.move(fromOffsets: source, toOffset: destination)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
