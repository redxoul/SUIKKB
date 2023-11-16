//
//  HomeDepositCell.swift
//  SUKabang
//
//  Created by solgoon on 11/5/23.
//

import SwiftUI

struct HomeDepositCell: View {
    var model: HomeDepositCellModel
    
    init(model: HomeDepositCellModel) {
        self.model = model
    }
    
    var body: some View {
        ZStack {
            model.theme.backgroundColor
                .cornerRadius(20)
            VStack {
                Button(action: {}, label: {
                    VStack {
                        HStack {
                            Spacer()
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "ellipsis")
                            })
                            .tint(model.theme.foregroundColor)
                            .frame(height: 20)
                        }
                        
                        HStack {
                            RoundProfile(image: model.image, size: 36)
                            VStack(alignment: .leading, content: {
                                Text(model.name)
                                    .font(.system(size: 14, weight: .light))
                                Text(model.balance)
                                    .font(.system(size: 22, weight: .bold))
                            })
                            .foregroundStyle(model.theme.foregroundColor)
                            Spacer()
                        }
                        
                        HStack {
                            Spacer()
                            if model.cardExist {
                                RoundedButton(title: "카드")
                            }
                            RoundedButton(title: "이체")
                        }
                    }
                })
                
                if let safeboxInfo = model.safeBoxInfo, model.safeboxExist {
                    Spacer()
                    Divider()
                    Spacer()
                    Button(action: {}) {
                        HStack {
                            Text("세이프박스")
                                .font(.system(size: 14))
                            Spacer()
                            Text(safeboxInfo.balance)
                                .font(.system(size: 16, weight: .bold))
                        }
                        .foregroundStyle(model.theme.foregroundColor)
                    }
                }
            }
            .padding(16)
            
        }
        .frame(height: model.height)
        .tint(.black)
    }
}

#Preview {
    HomeDepositCell(model: homeDepositCellModel1)
}
