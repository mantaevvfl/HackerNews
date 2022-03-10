//
//  Formatting.swift
//  HackerNews
//
//  Created by Ali Mantaev on 2022-02-23.
//

import Foundation

extension URL {
    var formatted: String {
        (self.host ?? "").replacingOccurrences(of: "www.", with: "")
    }
}

extension Int {
    var formatted: String {
        let nf = NumberFormatter()
        nf.numberStyle = .decimal
        return nf.string(from: NSNumber(value: self)) ?? ""
    }
}

extension Date {
    var timeAgo: String {
        let rdtf = RelativeDateTimeFormatter()
        rdtf.unitsStyle = .short
        return rdtf.localizedString(for: self, relativeTo: Date())
    }
}
