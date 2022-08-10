// Created by Florian Schweizer on 10.08.22

import ActivityKit
import WidgetKit
import SwiftUI

struct TimerActivityView: View {
    let context: ActivityViewContext<TimerAttributes>
    
    var body: some View {
        VStack {
            Text(context.attributes.timerName)
                .font(.headline)
            
            Text(context.state.endTime, style: .timer)
        }
        .padding(.horizontal)
    }
}

@main
struct Tutorial_Widget: Widget {
    let kind: String = "Tutorial_Widget"

    var body: some WidgetConfiguration {
        ActivityConfiguration(attributesType: TimerAttributes.self) { context in
            TimerActivityView(context: context)
        }
    }
}
