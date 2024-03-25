//
//  BankCardView.swift
//  MoneyTracker
//
//  Created by Olha Bereziuk on 20.03.24.
//

import SwiftUI

struct BankCardView: View {
    
    //MARK: - Properties
    private let width = UIScreen.main.bounds.width - 42
    private let height = UIScreen.main.bounds.width * 0.55
    let bankCard: BankCardModel
    
    init(bankCard: BankCardModel) {
        self.bankCard = bankCard
    }
    
    // MARK: - Body
    var body: some View {
        
        ZStack {
            VStack {
                Spacer()
                ZStack {
                    Rectangle()
                        .fill(.black.opacity(0.3))
                        .frame(height: self.height / 2)
                        .background {
                            TransparentBlurView(removeAllFilters: true)
                                .blur(radius: 7, opaque: false)
                                .background(.black.opacity(0.1))
                        }
                    
                    VStack(spacing: 12) {
                        HStack {
                            Text(self.bankCard.bankName ?? "")
                            Spacer()
                            Text(self.bankCard.cardholderName ?? "")
                        }
                        .font(.title3.bold())
                        .opacity(0.8)
                        
                        HStack {
                            Text("\(self.bankCard.balance, specifier: "%.2f")")
                                .font(.title)
                            
                            Text(self.bankCard.currency)
                                .font(.title)
                                .opacity(0.8)
                        }
                        .padding(.bottom, 4)
                    }
                    .padding(.horizontal, 22)
                }
            }
            .foregroundStyle(.white)
            .frame(width: self.width, height: self.height)
            .background {
                self.bankCard.cardCoverImage
            }
            .clipShape(.rect(cornerRadius: 10, style: .continuous))
            ///Light White Border
            .background {
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .stroke(.black.opacity(0.5), lineWidth: 1.3)
            }
            /// Adding Shadow
            .shadow(color: .black.opacity(0.35), radius: 4, x: 6, y: 6)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
    
//    private var currencyView: some View {
//        
//    }
}

// MARK: - Preview
#Preview {
    BankCardView(bankCard: BankCardModel(cardCoverImage: Image("art_1"), bankName: "N26", cardholderName: "YEVA", currency: "€"))
}
