//
//  LayoutDimensionExtensions.swift
//  BoseHealthUIConstraints
//
//  Created by Swagat Mishra on 9/1/20.
//  Copyright © 2020 Bose Corporation. All rights reserved.
//

import UIKit

// MARK: - NSLayoutDimension Extensions API - INTERNAL

extension NSLayoutDimension {
    func constraint(to: NSLayoutDimension, multiplier: CGFloat = 1, offset: CGFloat = 0, relation: NSLayoutConstraint.Relation = .equal) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint
        switch relation {
        case .equal:
            constraint = self.constraint(equalTo: to, multiplier: multiplier, constant: offset)
        case .lessThanOrEqual:
            constraint = self.constraint(lessThanOrEqualTo: to, multiplier: multiplier, constant: offset)
        case .greaterThanOrEqual:
            constraint = self.constraint(greaterThanOrEqualTo: to, multiplier: multiplier, constant: offset)
        @unknown default:
            fatalError("This should never happen.")
        }
        return constraint
    }

    func constraint(toConstant: CGFloat, relation: NSLayoutConstraint.Relation = .equal) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint
        switch relation {
        case .equal:
            constraint = self.constraint(equalToConstant: toConstant)
        case .lessThanOrEqual:
            constraint = self.constraint(lessThanOrEqualToConstant: toConstant)
        case .greaterThanOrEqual:
            constraint = self.constraint(greaterThanOrEqualToConstant: toConstant)
        @unknown default:
            fatalError("This should never happen.")
        }
        return constraint
    }
}
