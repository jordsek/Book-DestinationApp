//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Jordan Isac on 29/06/2023.
//

import SwiftUI

struct HeaderView: View {
    //MARK: - PROPERTIES
    @Binding var showGuideView: Bool
    @Binding var showInfoView: Bool
    let haptics = UINotificationFeedbackGenerator()
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {
                //ACTION
                playSound(sound: "sound-click", type: "mp3")
                //print("information
                self.haptics.notificationOccurred(.success)
                self.showInfoView.toggle()
            }, label: {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
            })
            .accentColor(Color.primary)
            .sheet(isPresented: $showInfoView){
                InfoView()
            }
            
            Spacer()
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
            Spacer()
            
            Button(action: {
                //ACTION
                playSound(sound: "sound-click", type: "mp3")
                //print("Guide")
                self.haptics.notificationOccurred(.success)
                self.showGuideView.toggle()
            }, label: {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
            })
            .accentColor(Color.primary)
            .sheet(isPresented: $showGuideView){
                GuideView()
            }
        }
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    @State static var showGuide: Bool = false
    @State static var showInfo: Bool = false
    static var previews: some View {
        HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
    }
}
