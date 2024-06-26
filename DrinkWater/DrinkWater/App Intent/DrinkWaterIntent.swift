//
//  DrinkWaterIntent.swift
//  DrinkWater
//
//  Created by 강동영 on 6/9/24.
//

import AppIntents
import WidgetKit

@available(iOS 16.0, macOS 13.0, watchOS 9.0, tvOS 16.0, *)
struct DrinkWaterIntent: AppIntent {
    
    static var title: LocalizedStringResource = "Drink Water"
    static var description = IntentDescription("Glasses of Today counter")
    
    func perform() async throws -> some IntentResult {
        GlassesCounter.countUp()
        return .result()
    }
}
