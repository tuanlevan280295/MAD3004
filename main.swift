//
//  main.swift
//  ErrorHandling
//
//  Created by levantuan on 2018-02-09.
//  Copyright © 2018 levantuan. All rights reserved.
//

import Foundation

// throw limiIncreaseError.ineligible


//var obj1 = RequestLimitIncrease()
//try obj1.increaseLimit(accountNo: "S1100")

var processRequest = RequestLimitIncrease()

do{
    try processRequest.increaseLimit(accountNo: "S1100")
    // General command in limitIncreaseError _____________( Attention
} catch is limitIncreaseError{
    print(" Something wrong with your account");
}

    /*
 // Command for specific value in limitIncreaseError _____________( Attention)
catch limitIncreaseError.insuffucientBalance {
print(" You do not have suffient balance.")
} catch limitIncreaseError.ineligible {
    print(" You do not have account with us.")
}catch limitIncreaseError.noSavingAccount{
    print(" Limit increase is onliy abalilable to saving accounts.")
}catch {
    print("Unexpected Error")
}
*/
