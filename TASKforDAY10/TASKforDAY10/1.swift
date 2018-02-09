//
//  1.swift
//  TASKforDAY10
//
//  Created by levantuan on 2018-02-09.
//  Copyright © 2018 levantuan. All rights reserved.
//

import Foundation

enum LitmitError: Error{
    case disaprove
    case decrease
}
struct RequestFromSystem {
    var Speeding: Int
    var RedLightBrake: Int
    var SeatBelt: Int
    var InvalidLicence: String
    var Fine: Int
}


