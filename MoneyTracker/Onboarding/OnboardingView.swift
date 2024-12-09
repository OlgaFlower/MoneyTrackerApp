//
//  OnboardingView.swift
//  MoneyTracker
//
//  Created by Olha Bereziuk on 01.11.24.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - States
    @StateObject private var viewModel = OnboardingViewModel()
    @Binding var isFirstLaunch: Bool
    @State private var showCurrencyPicker = false
    @State private var showCountryPicker = false
    @State private var showLanguagePicker = false
    @State private var currencyPickerScale: CGFloat = 1
    @State private var countryPickerScale: CGFloat = 1
    @State private var languagePickerScale: CGFloat = 1
    
    // MARK: - Properties
    let height: CGFloat = 60
    
    // MARK: - Body
    var body: some View {
        ZStack {
            BackgroundGradView()
            
            self.welcomeView
            self.preferencesListView
            self.startBtn
            
            self.pickerView
        }
        .animation(
            .easeOut(duration: 0.2),
            value: self.isPickerShown()
        )
    }
    
    // MARK: - Views
    private var startBtn: some View {
        VStack {
            Spacer()
            
            self.startButtonView
                .padding(.bottom, 32)
                .opacity(self.isPickerShown() ? 0 : 1)
        }
    }
    
    private var welcomeView: some View {
        VStack {
            TextLargeView(text: "welcome", alignCenter: true)
                .padding(.top, 60)
            Spacer()
        }
    }
    
    private var preferencesListView: some View {
        VStack(spacing: 6) {
            // Language
            HStack {
                TextSmallView(text: "language")
                    .opacity(0.7)
                Spacer()
            }
            self.makeLanguageView()
                .frame(height: self.height)
                .padding(.bottom, 24)
            
            // Country
            HStack {
                TextSmallView(text: "country")
                    .opacity(0.7)
                Spacer()
            }
            self.makeCountryView()
                .frame(height: self.height)
                .padding(.bottom, 24)
            
            // Currency
            HStack {
                TextSmallView(text: "currency")
                    .opacity(0.7)
                Spacer()
            }
            self.makeCurrencyView()
                .frame(height: self.height)
            
            Spacer()
        }
        .padding(.top, 170)
        .frame(width: Constants.buttonWidth)
        .blur(radius: self.isPickerShown() ? 8 : 0)
    }
    
    @ViewBuilder
    private var pickerView: some View {
        // Language Picker
        if self.showLanguagePicker {
            GenericPickerView(
                selectedItem: self.$viewModel.selectedLanguage,
                isPresented: self.$showLanguagePicker,
                scale: self.$languagePickerScale,
                items: self.viewModel.languages
            )
        }
        
        // Currency Picker
        if self.showCurrencyPicker {
            GenericPickerView(
                selectedItem: self.$viewModel.selectedCurrency,
                isPresented: self.$showCurrencyPicker, 
                scale: self.$currencyPickerScale,
                items: self.viewModel.currencies
            )
            .transition(.scale)
        }
        
        // Country Picker
        if self.showCountryPicker {
            GenericPickerView(
                selectedItem: self.$viewModel.selectedCountry,
                isPresented: self.$showCountryPicker, 
                scale: self.$countryPickerScale,
                items: self.viewModel.countries
            )
            .transition(.scale)
        }
    }
    
    /// Language view
    private func makeLanguageView() -> some View {
        self.languageEditorView
            .onTapGesture {
                self.showLanguagePicker.toggle()
            }
    }
    
    private var languageEditorView: some View {
        TextView(text: self.viewModel.selectedLanguage.rawValue)
            .overlay(
                RoundedRectangle(cornerRadius: Constants.cornerRadius)
                    .stroke(.white.opacity(0.5), lineWidth: 0.5)
                    .frame(width: Constants.buttonWidth, height: self.height)
            )
    }
    
    /// Country view
    private func makeCountryView() -> some View {
        self.countryEditorView
            .onTapGesture {
                self.showCountryPicker.toggle()
            }
    }
    
    private var countryEditorView: some View {
        TextView(text: self.viewModel.selectedCountry.rawValue)
            .overlay(
                RoundedRectangle(cornerRadius: Constants.cornerRadius)
                    .stroke(.white.opacity(0.5), lineWidth: 0.5)
                    .frame(width: Constants.buttonWidth, height: self.height)
            )
    }
    
    /// Currency view
    private func makeCurrencyView() -> some View {
        self.currencyEditorView
            .onTapGesture {
                self.showCurrencyPicker.toggle()
            }
    }
    
    private var currencyEditorView: some View {
        TextView(text: self.viewModel.selectedCurrency.rawValue)
            .overlay(
                RoundedRectangle(cornerRadius: Constants.cornerRadius)
                    .stroke(.white.opacity(0.5), lineWidth: 0.5)
                    .frame(width: Constants.buttonWidth, height: self.height)
            )
    }
    
    /// Start
    private var startButtonView: some View {
        Button {
            self.viewModel.savePreferences()
            self.viewModel.vibrate()
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                self.viewModel.vibrate()
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    self.isFirstLaunch.toggle()
                }
            }
        } label: {
            TextView(text: "start", style: .regular)
                .padding(.vertical, 10)
                .frame(width: Constants.buttonWidth)
        }
        .background(
            RoundedRectangle(cornerRadius: Constants.cornerRadius)
                .fill(.white.opacity(Constants.buttonFillOpacity))
        )
        .overlay(
            RoundedRectangle(cornerRadius: Constants.cornerRadius, style: .continuous)
                .stroke(.white, lineWidth: 0.5)
        )
    }
    
    // MARK: - Functions
    private func isPickerShown() -> Bool {
        return self.showCurrencyPicker || self.showCountryPicker || self.showLanguagePicker
    }
}

#Preview {
    OnboardingView(isFirstLaunch: .constant(true))
}
