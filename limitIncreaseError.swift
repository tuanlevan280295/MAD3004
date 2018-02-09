//
//  limitIncreaseError.swift
//  ErrorHandling
//
//  Created by levantuan on 2018-02-09.
//  Copyright © 2018 levantuan. All rights reserved.
//

import Foundation

enum limitIncreaseError: Error{
    case insuffucientBalance(balanceNeeded: Double)
    case noSavingAccount
    case ineligible
}
struct requestsFromAccount{
    var type: String
    var balance: Double
    var reqStatus: String
}
