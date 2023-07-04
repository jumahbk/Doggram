//
//  CarsoulView.swift
//  Doggram
//
//  Created by Bander Jumah on 01/12/1444 AH.
//

import SwiftUI

struct CarsoulView: View {
    @State var selection : Int = 1
    let maxCount = 8
    @State var timerAdded : Bool = false
    var body: some View {
        TabView(selection: .constant(selection)) {
            ForEach(1..<maxCount){count in
                Image("dog\(count)").resizable().scaledToFit().tag(count)

            }


        }.tabViewStyle(PageTabViewStyle()).frame(height:300).background(Color.red).animation(.default).onAppear {
            if(!timerAdded){
                addTimer()

            }
        }
    }
    func addTimer(){
        self.timerAdded = true
        let timer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: true) { (timer) in
            
            if(selection == maxCount){
                selection = 1
            }
            else{
                selection==1
            }
            
        }
        timer.fire()
    }
}

struct CarsoulView_Previews: PreviewProvider {
    static var previews: some View {
        CarsoulView()
    }
}
