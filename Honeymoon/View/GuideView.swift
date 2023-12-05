//
//  GuideView.swift
//  Honeymoon
//
//  Created by Jordan Isac on 30/06/2023.
//

import SwiftUI

struct GuideView: View {
    //MARK: -PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    //MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                HeaderComponent()
                Spacer(minLength: 10)
                
                Text("Get Started")
                    .fontWeight(.black)
                    .modifier(TitleModeifier())
                
                Text("Discover and pick the perfect destination for your romantic Honeymoon!")
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                
                Spacer(minLength: 10)

                VStack(alignment: .leading, spacing: 25){
                    GuideComponent(title: "Like",
                                   subtitle: "Swipe right",
                                   description: "Do you like this destination ? Touch the screen and swipe right. It will be saved to the favorites",
                                   icon: "heart.circle")
                    
                    GuideComponent(title: "Dismiss",
                                   subtitle: "Swipe left",
                                   description: "Would ypu rather skip this place? Touch the screen and swipe left. You will no longer see it",
                                   icon: "xmark.circle")
                    
                    GuideComponent(title: "Book",
                                   subtitle: "Tap button",
                                   description: "Our selction of honeymoon resorts is perfect setting for you to embark your new life together.",
                                   icon: "checkmark.square")
                }
                
                Spacer(minLength: 10)
                
                Button(action: {
                    //ACTION
                    //print("A button was tapped")
                    self.presentationMode.wrappedValue.dismiss()
                    
                }, label: {
                    Text("Continue".uppercased())
                            .modifier(ButtonModifier())
                })

            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.top, 15)
            .padding(.bottom, 25)
            .padding(.horizontal, 25)
        }
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
    }
}
