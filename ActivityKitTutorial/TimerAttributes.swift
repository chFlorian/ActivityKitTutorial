// Created by Florian Schweizer on 10.08.22

import ActivityKit
import SwiftUI

struct TimerAttributes: ActivityAttributes {
    public typealias TimerStatus = ContentState
    
    public struct ContentState: Codable, Hashable {
        var endTime: Date
    }
    
    var timerName: String
}
