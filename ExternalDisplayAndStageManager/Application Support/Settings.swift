//
//  Settings.swift
//  ExternalDisplayAndStageManager
//
//  Created by Geoff Hackworth on 21/09/2022.
//

import Combine
import Foundation

final class Settings {

    static let shared = Settings()

    @Published var externalDisplay: Bool = UserDefaults.standard.bool(forKey: CodingKeys.externalDisplay.stringValue) {
        didSet {
            UserDefaults.standard.set(externalDisplay, forKey: CodingKeys.externalDisplay.stringValue)
        }
    }

    private init() { }
}

extension Settings {

    private enum CodingKeys: String, CodingKey {
        case externalDisplay
    }
}
