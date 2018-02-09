//
//  2.swift
//  TASKforDAY10
//
//  Created by levantuan on 2018-02-09.
//  Copyright © 2018 levantuan. All rights reserved.
//

import Foundation

class RequestTrafficTicket{
    // Seatbelt : If (sealbelt = 1: That means Passengers have been presented their seatbelt).While Seatbelt = 0 That means they do not do that.
    var requestReceive = [
        "s1" : RequestFromSystem(Speeding: 123, RedLightBrake: 5, SeatBelt: 1, InvalidLicence: "disaprove", Fine : 220),
        "s2" : RequestFromSystem(Speeding: 132, RedLightBrake: 4, SeatBelt: 0, InvalidLicence: "disaprove", Fine: 140),
        "s3" : RequestFromSystem(Speeding: 90, RedLightBrake: 2, SeatBelt: 1, InvalidLicence: "disaprove",Fine: 123)
    ]
    func DecreaseLimit(TicketNO TKNo: String) throws{
        guard let reqTK = requestReceive[TKNo] else{
            throw LitmitError.disaprove
        }
        guard reqTK.Speeding > 50 else{
            throw LitmitError.disaprove
    }
        guard reqTK.Fine < 100 else{
            throw LitmitError.decrease
        }
        guard reqTK.RedLightBrake >= 3 else{
            throw LitmitError.disaprove
        }
        guard reqTK.Fine < 100 else{
            throw LitmitError.decrease
        }
        guard reqTK.SeatBelt == 1 else{
            throw LitmitError.disaprove
        }
        guard reqTK.Fine < 100 else{
            throw LitmitError.decrease
        }
        var Fine = reqTK
        Fine.InvalidLicence = "disaprove"
        (print(" Your Free to Go"))
        }
}
