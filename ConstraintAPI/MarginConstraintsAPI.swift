//
//  MarginConstraintsAPI.swift
//  BoseHealthUIConstraints
//
//  Created by Swagat Mishra on 9/1/20.
//  Copyright © 2020 Bose Corporation. All rights reserved.
//

import UIKit

// MARK: - API Helper functions

public extension UIView {

    func anchor(
        top: NSLayoutYAxisAnchor? = nil,
        left: NSLayoutXAxisAnchor? = nil,
        bottom: NSLayoutYAxisAnchor? = nil,
        right: NSLayoutXAxisAnchor? = nil,
        topRelation: NSLayoutConstraint.Relation = .equal,
        leftRelation: NSLayoutConstraint.Relation = .equal,
        bottomRelation: NSLayoutConstraint.Relation = .equal,
        rightRelation: NSLayoutConstraint.Relation = .equal,
        topConstant: CGFloat = 0.0,
        leftConstant: CGFloat = 0.0,
        bottomConstant: CGFloat = 0.0,
        rightConstant: CGFloat = 0.0,
        topPriority: UILayoutPriority = .required,
        leftPriority: UILayoutPriority = .required,
        bottomPriority: UILayoutPriority = .required,
        rightPriority: UILayoutPriority = .required
    ) {
        anchorMargins(
            top: top,
            left: left,
            bottom: bottom,
            right: right,
            topRelation: topRelation,
            leftRelation: leftRelation,
            bottomRelation: bottomRelation,
            rightRelation: rightRelation,
            topConstant: topConstant,
            leftConstant: leftConstant,
            bottomConstant: bottomConstant,
            rightConstant: rightConstant,
            topPriority: topPriority,
            leftPriority: leftPriority,
            bottomPriority: bottomPriority,
            rightPriority: rightPriority
        )
    }

    func anchor(
        top: NSLayoutYAxisAnchor? = nil,
        leading: NSLayoutXAxisAnchor? = nil,
        bottom: NSLayoutYAxisAnchor? = nil,
        trailing: NSLayoutXAxisAnchor? = nil,
        topRelation: NSLayoutConstraint.Relation = .equal,
        leadingRelation: NSLayoutConstraint.Relation = .equal,
        bottomRelation: NSLayoutConstraint.Relation = .equal,
        trailingRelation: NSLayoutConstraint.Relation = .equal,
        topConstant: CGFloat = 0.0,
        leadingConstant: CGFloat = 0.0,
        bottomConstant: CGFloat = 0.0,
        trailingConstant: CGFloat = 0.0,
        topPriority: UILayoutPriority = .required,
        leadingPriority: UILayoutPriority = .required,
        bottomPriority: UILayoutPriority = .required,
        trailingPriority: UILayoutPriority = .required
    ) {
        anchorSides(
            top: top,
            leading: leading,
            bottom: bottom,
            trailing: trailing,
            topRelation: topRelation,
            leadingRelation: leadingRelation,
            bottomRelation: bottomRelation,
            trailingRelation: trailingRelation,
            topConstant: topConstant,
            leadingConstant: leadingConstant,
            bottomConstant: bottomConstant,
            trailingConstant: trailingConstant,
            topPriority: topPriority,
            leadingPriority: leadingPriority,
            bottomPriority: bottomPriority,
            trailingPriority: trailingPriority
        )
    }
}
