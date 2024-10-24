//
//  MakeNewMoneyRecordView.swift
//  MoneyTracker
//
//  Created by Olha Bereziuk on 04.04.24.
//

import SwiftUI
import CoreData

struct MakeNewMoneyRecordView: View {
    
    // MARK: - Environment
    @Environment(\.managedObjectContext) var viewContext
    @Environment(\.dismiss) var dismiss
    
    // MARK: - State
    @ObservedObject var viewModel: MakeNewMoneyRecordViewModel
    @FocusState var isKeyboardFocused: Bool
    @FocusState var isCurrencyKeyboardFocused: Bool
    @State var isIconGroupsViewPresented: Bool = false
    
    // MARK: - Body
    var body: some View {
        ZStack {
            BackgroundGradView()
            
            VStack {
                CancelButtonView(action: { dismiss() })
                TextHeaderView(text: "new record")
                    .padding(.top, 16)
                
                VStack(spacing: 22) {
                    /// Expense / Income
                    self.moneyTypeSelectionView
                    
                    /// Money Field
                    CurrencyTextFieldView(
                        inputAmount: self.$viewModel.moneyAmount,
                        currency: self.viewModel.newItem.currency,
                        useCase: .newRecord,
                        isKeyboardFocused: _isCurrencyKeyboardFocused
                    )
                    
                    /// Category
                    self.categorySelectionView
                        .padding(.top, 8)
                    
                    /// Description
                    DescriptionTextfieldView(
                        notes: self.$viewModel.newItem.notes
                    )
                    .focused(self.$isKeyboardFocused)
                    .padding(.top, 16)
                    
                    self.saveButtonView
                        .padding(.top, 62)
                }
                .padding(.top, 52)
                Spacer()
            }
            .foregroundStyle(.white)
        }
        .onTapGesture {
            self.isKeyboardFocused = false
            self.isCurrencyKeyboardFocused = false
        }
    }
    
    // MARK: - Views
    /// EXPENSE | INCOME
    private var moneyTypeSelectionView: some View {
        HStack {
            /// Expense
            Button(action: {
                self.viewModel.vibrateLight()
                self.viewModel.newItem.recordType = .expense
            }, label: {
                TextView(text: RecordType.expense.value, style: .medium)
                    .opacity(self.viewModel.newItem.recordType == .expense ? 0.9 : 0.5)
            })
            
            Spacer()
            Rectangle()
                .frame(width: 1)
            Spacer()
            
            /// Income
            Button(action: {
                self.viewModel.vibrateLight()
                self.viewModel.newItem.recordType = .income
            }, label: {
                TextView(text: RecordType.income.value, style: .medium)
                    .opacity(self.viewModel.newItem.recordType == .income ? 0.9 : 0.5)
            })
        }
        .frame(height: 24)
        .padding(.horizontal, 60)
    }
    /// CATEGORY
    private var categorySelectionView: some View {
        ZStack {
            BackgroundRectangleView(heigt: 50)
            HStack(spacing: 32) {
                /// ICON
                Image(systemName: self.viewModel.newItem.category.icon)
                    .font(.title)
                    .frame(width: 28, height: 28)
                    .opacity(self.viewModel.isCategoryChosen() ? 0.9 : 0.5)
                
                /// CATEGORY
                TextView(text: self.viewModel.newItem.category.name)
                    .multilineTextAlignment(.leading)
                    .opacity(self.viewModel.isCategoryChosen() ? 0.9 : 0.5)
                    .onTapGesture {
                        self.viewModel.vibrateLight()
                        self.isKeyboardFocused = false
                        self.isCurrencyKeyboardFocused = false
                        self.isIconGroupsViewPresented.toggle()
                    }
                    .sheet(isPresented: self.$isIconGroupsViewPresented) {
                        CategoryGroupSelectionView(
                            recordType: self.$viewModel.newItem.recordType,
                            selectedCategory: self.$viewModel.newItem.category)
                    }
            }
            .padding(.horizontal, 30)
        }
    }
    /// SAVE
    private var saveButtonView: some View {
        Button {
            self.viewModel.saveNewRecord(context: self.viewContext)
            self.viewModel.vibrateMedium()
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                self.viewModel.vibrateMedium()
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    self.viewModel.refreshCalculations()
                    self.dismiss()
                }
            }
        } label: {
            TextView(text: "save", style: .medium)
                .opacity(self.viewModel.isSaveBtnActive() ? 1 : 0.5)
                .padding(.vertical, 10)
                .frame(width: 130)
                .clipShape(.rect(cornerRadius: 8, style: .continuous))
        }
        .disabled(!self.viewModel.isSaveBtnActive())
        .animation(.linear(duration: 0.2), value: self.viewModel.isSaveBtnActive())
        .background {
            /// Border
            RoundedRectangle(cornerRadius: 8, style: .continuous)
                .fill(.lightBlue.opacity(self.viewModel.isSaveBtnActive() ? 1 : 0.5))
        }
    }
}

// MARK: - Preview
#Preview {
    MakeNewMoneyRecordView(viewModel: MakeNewMoneyRecordViewModel())
}
