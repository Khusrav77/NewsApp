//
//  Extension+Date.swift
//  NewsApp
//
//  Created by Khusrav Safiev on 9/15/24.
//

import Foundation

extension Date {
    func convertDate() -> String {
        return formatted(.dateTime.hour().minute().day().month().year())
    }
}
