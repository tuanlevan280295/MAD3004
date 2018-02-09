//
//  RequestClass.swift
//  ErrorHandling
//
//  Created by levantuan on 2018-02-09.
//  Copyright © 2018 levantuan. All rights reserved.
//

import Foundation

class RequestLimitIncrease{
    var requestsReceive = [
        "S1100" : requestsFromAccount(type: "Saving", balance: 1234.09, reqStatus: "In Process"),
        "S1200" : requestsFromAccount(type: "Saving", balance: 5090.09, reqStatus: "In Process"),
        "S1300" : requestsFromAccount(type: "Saving", balance: 10000.09, reqStatus: "In Process"),
        "S1400" : requestsFromAccount(type: "Saving", balance: 5400, reqStatus: "In Process")
    ]
    
    func increaseLimit(accountNo acno: String) throws {
        guard let reqAcc = requestsReceive[acno] else{
            throw limitIncreaseError.ineligible
        }
        
        guard reqAcc.type == "Saving" else{
            throw limitIncreaseError.noSavingAccount
        }
        guard reqAcc.balance >= 5000 else{
            throw limitIncreaseError.insuffucientBalance(balanceNeeded: 5000-reqAcc.balance)
            
        }
        var approvedRequest = reqAcc
        approvedRequest.reqStatus = "Approved"
        print("Your request is approved")
    }
}
