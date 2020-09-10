//
//  LayoutAnchorExtensions.swift
//  BoseHealthUIConstraints
//
//  Created by Swagat Mishra on 9/1/20.
//  Copyright © 2020 Bose Corporation. All rights reserved.
//

import UIKit

// MARK: - NSLayoutAnchor Extensions API - INTERNAL

extension NSLayoutXAxisAnchor {
    @discardableResult func constraint(to: NSLayoutXAxisAnchor, offset: CGFloat, relation: NSLayoutConstraint.Relation) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint
        switch relation {
        case .equal:
            constraint = self.constraint(equalTo: to, constant: offset)
        case .greaterThanOrEqual:
            constraint = self.constraint(greaterThanOrEqualTo: to, constant: offset)
        case .lessThanOrEqual:
            constraint = self.constraint(lessThanOrEqualTo: to, constant: offset)
        default:
            fatalError("This should never happen")
        }
        return constraint
    }
}

extension NSLayoutYAxisAnchor {
    @discardableResult func constraint(to: NSLayoutYAxisAnchor, offset: CGFloat, relation: NSLayoutConstraint.Relation) -> NSLayoutConstraint {
        let constraint: NSLayoutConstraint
        switch relation {
        case .equal:
            constraint = self.constraint(equalTo: to, constant: offset)
        case .greaterThanOrEqual:
            constraint = self.constraint(greaterThanOrEqualTo: to, constant: offset)
        case .lessThanOrEqual:
            constraint = self.constraint(lessThanOrEqualTo: to, constant: offset)
        default:
            fatalError("This should never happen")
        }
        return constraint
    }
}
