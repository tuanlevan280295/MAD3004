//
//  main.swift
//  TASKforDAY10
//
//  Created by levantuan on 2018-02-09.
//  Copyright © 2018 levantuan. All rights reserved.
//

import Foundation

var Process = RequestTrafficTicket()

do {
    try Process.DecreaseLimit(TicketNO: "s1")
}catch is LitmitError{
    print("You in Problem")
    
}

