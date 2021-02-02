//
//  ContentView.swift
//  LoginUI
//
//  Created by Ahda Dzia Ulhaq on 28/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("co_nf")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack{
                HandleView()
                FormBox()
            }
        }
    }
}

struct HandleView : View {
    var body: some View {
        VStack {
            Image(systemName: "hand.draw.fill")
                .resizable()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .background(Color.black)
                .foregroundColor(.white)
                .padding()
                .background(Color.black)
                .cornerRadius(20)
            
            Text("Hello Swift").foregroundColor(.white)
        }
    }
}

struct FormBox: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack (alignment: .leading){
            Text("Username").font(.callout).bold()
            TextField("Username", text:$username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Text("Password").font(.callout).bold()
            SecureField("Password", text:$password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
    
            Button(action: {print("Hello button")}){
                /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
            }
            // ini design button
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .foregroundColor(.white)
        }
        
        // ini design vstack
        .padding(.all, 20)
        .background(Color.blue)
        .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
