//
//  Helper+Dummy.swift
//  SUKabang
//
//  Created by solgoon on 11/12/23.
//

import Foundation

let homeListModel: [HomeDepositCellModel] = [
    homeDepositCellModel1,
    homeDepositCellModel2,
    homeDepositCellModel3,
    homeDepositCellModel4]

let homeDepositCellModel1 = HomeDepositCellModel(
    name: "통장1",
    balance: "100,000원",
    image: .profile,
    theme: .yellow,
    cardInfo: .init(name: "프렌드체크카드",
                    cardNumber: "3333-3333-2222-1111"),
    safeBoxInfo: .init(accountNumber: "3333-3333-3333-1111",
                       balance: "0원"))

let homeDepositCellModel2 = HomeDepositCellModel(
    name: "통장2",
    balance: "200,000원",
    image: .profile,
    theme: .red,
    cardInfo: nil,
    safeBoxInfo: .init(accountNumber: "3333-3333-3333-2222",
                       balance: "0원"))


let homeDepositCellModel3 = HomeDepositCellModel(
    name: "통장3",
    balance: "300,000원",
    image: .profile,
    theme: .pink,
    cardInfo: .init(name: "프렌드체크카드",
                    cardNumber: "3333-3333-2222-3333"),
    safeBoxInfo: nil)


let homeDepositCellModel4 = HomeDepositCellModel(
    name: "통장4",
    balance: "400,000원",
    image: .profile,
    theme: .blue,
    cardInfo: nil,
    safeBoxInfo: nil)

