//
//  Signal.swift
//  PIedra papel o tijeras
//
//  Created by 2020-1 on 9/23/19.
//  Copyright © 2019 unam. All rights reserved.
//

import Foundation
import GameplayKit

let randomchoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSignal() -> Sign{

    let sign = randomchoice.nextInt()
    if sign == 0 {
        return .rock
    }else if sign == 1 {
        return .paper
    }else {
        return .scissors
    }
}


enum Sign{
    case rock
    case paper
    case scissors
}
