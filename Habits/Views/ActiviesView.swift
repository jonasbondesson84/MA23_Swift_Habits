//
//  ActiviesView.swift
//  Habits
//
//  Created by Jonas Bondesson on 2024-04-24.
//

import SwiftUI

struct ActiviesView: View {
    @EnvironmentObject var userData: UserViewModel
    
    
    var body: some View {
        ZStack {
            AppColors.backgroundColor
                .ignoresSafeArea()
            VStack {
                MyActivityList()
                    .padding(.bottom, 30)
                MyOfficeWorkoutList()
                    .padding(.bottom, 30)
            }
        
        }
    }
}

struct MyOfficeWorkoutList: View {
    @EnvironmentObject var userData: UserViewModel
    var body: some View {
        Text("My Office Workouts")
            .foregroundColor(.white)
            .font(.system(size: 12))
            .fontDesign(.rounded)
            .frame(maxWidth: .infinity,alignment: .leading)
            .padding(.leading, 30)
            .fontWeight(.bold)
        
        List {
            
            ForEach (userData.user.officeWorkOut) {officeWorkOut in
                HStack {
                    Text(officeWorkOut.name)
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.white)
                }
            }
            .padding(.vertical, 2)
            .listRowInsets(.init())
            .listRowBackground(AppColors.backgroundColor)
            
        }
        .padding(.horizontal, 40)
        .scrollContentBackground(.hidden)
        .listStyle(.plain)
        
        Button(action: {
            
        }, label: {
            Label("Add Office Workout", systemImage: "plus")
        })
        .buttonStyle(AddButton())
        .padding(.horizontal, 40)
    }
}

struct MyActivityList: View {
    @EnvironmentObject var userData: UserViewModel
    
    var body: some View {
        Text("My Activities")
            .foregroundColor(.white)
            .font(.system(size: 12))
            .fontDesign(.rounded)
            .frame(maxWidth: .infinity,alignment: .leading)
            .padding(.leading, 30)
            .fontWeight(.bold)
        
        List {
            ForEach (userData.activities) { activity in
                HStack {
                    Text(activity.name)
                        .foregroundColor(.white)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.white)
                }
            }
            .padding(.vertical, 2)
            .listRowInsets(.init())
            .listRowBackground(AppColors.backgroundColor)
        }
        .listStyle(.plain)
        .padding(.horizontal, 40)
        .scrollContentBackground(.hidden)
        
        Button(action: {
            
        }, label: {
            Label("Add activity", systemImage: "plus")
        })
        .buttonStyle(AddButton())
        .padding(.horizontal, 40)
        
    }
}



struct AddButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
        
            .frame(maxWidth: .infinity)
            
            .frame(height: 40)
            
            .background(AppColors.buttonColor)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    ActiviesView()
        .environmentObject(UserViewModel())
}





struct ActivitiesView: View {
    @EnvironmentObject var user: UserViewModel
    
    var body: some View {
        Text("My Activities")
            .foregroundColor(.white)
            .font(.system(size: 12))
            .fontDesign(.rounded)
            .frame(maxWidth: .infinity,alignment: .leading)
            .padding(.leading, 30)
            .fontWeight(.bold)
        List {
            ForEach (user.activities) { activity in
                Text(activity.name)
                    .foregroundColor(.white)
            }
            .padding(.vertical, 2)
            .listRowInsets(.init())
            .listRowBackground(AppColors.backgroundColor)
        }
        .padding(.horizontal, 40)
        .listStyle(.plain)
        .scrollContentBackground(.hidden)
        Button(action: {
            
        }, label: {
            Label("Add activity", systemImage: "plus.app")
        })
        .buttonStyle(AddButton())
        
    }
}
