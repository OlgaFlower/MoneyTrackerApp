//
//  HomeHeaderView.swift
//  Savvvy
//
//  Created by Olha Bereziuk on 15.12.24.
//

import SwiftUI

struct HomeHeaderView: View {
    
    // MARK: - Body
    var body: some View {
        
        VStack(spacing: -4) {
            HStack {
                self.dayOfWeekView
                self.monthView
            }
            self.yearView
            Spacer()
        }
        .padding(.top)
    }
    
    // MARK: - Views
    private var dayOfWeekView: some View {
        HStack {
            Text("Sun")
                .font(.system(size: 35, weight: .bold, design: .default))
            Circle()
                .frame(height: 25)
                .foregroundStyle(.pink)
                .padding(.top, 1)
        }
        .frame(height: 25)
    }
    
    private var monthView: some View {
        HStack {
            Spacer()
            Text("November 24")
                .font(.system(size: 18, weight: .bold, design: .default))
                .foregroundStyle(Color(uiColor: .secondaryLabel))
        }
        .frame(height: 25)
    }

    private var yearView: some View {
        HStack {
            Spacer()
            Text("2024")
                .font(.system(size: 18, weight: .bold, design: .default))
                .foregroundStyle(Color(uiColor: .tertiaryLabel))
        }
    }
}

#Preview {
    HomeHeaderView()
}