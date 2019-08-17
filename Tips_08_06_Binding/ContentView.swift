//
//  ContentView.swift
//  Tips_08_06_Binding
//
//  Created by Steven Lipton on 8/17/19.
//  Copyright © 2019 Steven Lipton. All rights reserved.
//

import SwiftUI
import Combine

class Lights{
    var isOn:Bool = false
}


struct ToggleButton: View{
    @State var isOn:Bool = false
    var body: some View{
        Button(action: {self.isOn = !self.isOn}) {
            Text(isOn ? "Is On":"Is Off")
        }
    }
    
}

struct ContentView: View {
    var body: some View {
        ToggleButton(isOn:true)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
