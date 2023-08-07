//
//  SettingsView.swift
//  Hike
//
//  Created by Marcelo Moresco on 06/08/23.
//

import SwiftUI

struct SettingsView: View {
    
    private var alternateAppIcons:[String] = [
        "AppIcon-MagnifyingGlass",
        "AppIcon-Camera",
        "AppIcon-Map",
        "AppIcon-Campfire",
        "AppIcon-Backpack",
        "AppIcon-Mushroom",
    ]
    
    var body: some View {
        List {
            //MARK : - SECTION
            
            Section {
                HStack{
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80,weight: .black))
                    
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66,weight: .black))
                        
                        Text("Editors' choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80,weight: .black))
                    
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(colors: [.customGreenLight,.customGreenMedium,.customGreenDark], startPoint: .top, endPoint: .bottom)
                )
                .padding(.top,8)
                
                VStack(spacing: 8) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike whichs look gorgeus in photos but is better once")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! It's time for a walk")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom,16)
                .frame(maxWidth: .infinity)
                
            }
            .listRowSeparator(.hidden)
            
            
            Section(header:Text("Alternate Icons")){
                ScrollView(.horizontal,showsIndicators: false){
                    
                    HStack(spacing: 12){
                        ForEach(alternateAppIcons.indices,id: \.self) { item in
                            Button{
                                UIApplication.shared.setAlternateIconName(alternateAppIcons[item]) {
                                    error in
                                    if error != nil {
                                        print("Failed request to update")
                                    }
                                }
                            } label: {
                                Image("\(alternateAppIcons[item])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80,height: 80)
                                    .cornerRadius(16)
                            }
                            .buttonStyle(.borderless)
                        }
                    }
                    
                } //: SCROLL VIEW
                .padding(.top,12)
                
                Text("Choose your favorite icon to the collection above")
                    .frame(minWidth: 0,maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)
                    .padding(.bottom,12)
            }
            .listRowSeparator(.hidden)
            
            
            Section(header:Text("ABOUT THE APP"),
                    footer: HStack{
                Spacer()
                Text("Copyright All right reserved.")
                Spacer()
            }
                .padding(.vertical,8)
            ) {
                CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "Hike", rowTintColor: .blue)
                
                CustomListRowView(rowLabel: "Compatible", rowIcon: "info.circle", rowContent: "iOS, iPadOS", rowTintColor: .red)
                
                CustomListRowView(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                
                CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                
                CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "Marcelo Moresco", rowTintColor: .mint)
                
                CustomListRowView(rowLabel: "Website", rowIcon: "globe", rowContent: "https://twitter.com/home", rowTintColor: .indigo)
                
            }
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
