//
//  ConstraintsAPI.swift
//  BoseHealthUIConstraints
//
//  Created by Swagat Mishra on 9/1/20.
//  Copyright © 2020 Bose Corporation. All rights reserved.
//

import UIKit

// MARK: - Margins Constraints API - INTERNAL

extension UIView {

    @discardableResult func anchorMargins(
        top: NSLayoutYAxisAnchor? = nil,
        left: NSLayoutXAxisAnchor? = nil,
        bottom: NSLayoutYAxisAnchor? = nil,
        right: NSLayoutXAxisAnchor? = nil,
        topRelation: NSLayoutConstraint.Relation = .equal,
        leftRelation: NSLayoutConstraint.Relation = .equal,
        bottomRelation: NSLayoutConstraint.Relation = .equal,
        rightRelation: NSLayoutConstraint.Relation = .equal,
        topConstant: CGFloat = 0,
        leftConstant: CGFloat = 0,
        bottomConstant: CGFloat = 0,
        rightConstant: CGFloat = 0,
        topPriority: UILayoutPriority = .required,
        leftPriority: UILayoutPriority = .required,
        bottomPriority: UILayoutPriority = .required,
        rightPriority: UILayoutPriority = .required
    ) -> [NSLayoutConstraint] {

        translatesAutoresizingMaskIntoConstraints = false
        var anchors = [NSLayoutConstraint]()

        if let top = top {
            let constraint = topAnchor.constraint(to: top, offset: topConstant, relation: topRelation)
            constraint.priority = topPriority
            anchors.append(constraint)
        }

        if let bottom = bottom {
            let constraint = bottomAnchor.constraint(to: bottom, offset: -bottomConstant, relation: bottomRelation)
            constraint.priority = bottomPriority
            anchors.append(constraint)
        }

        if let left = left {
            let constraint = leftAnchor.constraint(to: left, offset: leftConstant, relation: leftRelation)
            constraint.priority = leftPriority
            anchors.append(constraint)
        }

        if let right = right {
            let constraint = rightAnchor.constraint(to: right, offset: -rightConstant, relation: rightRelation)
            constraint.priority = rightPriority
            anchors.append(constraint)
        }

        anchors.forEach { $0.isActive = true }
        return anchors
    }

    @discardableResult func anchorSides(
        top: NSLayoutYAxisAnchor? = nil,
        leading: NSLayoutXAxisAnchor? = nil,
        bottom: NSLayoutYAxisAnchor? = nil,
        trailing: NSLayoutXAxisAnchor? = nil,
        topRelation: NSLayoutConstraint.Relation = .equal,
        leadingRelation: NSLayoutConstraint.Relation = .equal,
        bottomRelation: NSLayoutConstraint.Relation = .equal,
        trailingRelation: NSLayoutConstraint.Relation = .equal,
        topConstant: CGFloat = 0,
        leadingConstant: CGFloat = 0,
        bottomConstant: CGFloat = 0,
        trailingConstant: CGFloat = 0,
        topPriority: UILayoutPriority = .required,
        leadingPriority: UILayoutPriority = .required,
        bottomPriority: UILayoutPriority = .required,
        trailingPriority: UILayoutPriority = .required
    ) -> [NSLayoutConstraint] {

        translatesAutoresizingMaskIntoConstraints = false
        var anchors = [NSLayoutConstraint]()

        if let top = top {
            let constraint = topAnchor.constraint(to: top, offset: topConstant, relation: topRelation)
            constraint.priority = topPriority
            anchors.append(constraint)
        }

        if let bottom = bottom {
            let constraint = bottomAnchor.constraint(to: bottom, offset: -bottomConstant, relation: bottomRelation)
            constraint.priority = bottomPriority
            anchors.append(constraint)
        }

        if let leading = leading {
            let constraint = leadingAnchor.constraint(to: leading, offset: leadingConstant, relation: leadingRelation)
            constraint.priority = leadingPriority
            anchors.append(constraint)
        }

        if let trailing = trailing {
            let constraint = trailingAnchor.constraint(to: trailing, offset: -trailingConstant, relation: trailingRelation)
            constraint.priority = trailingPriority
            anchors.append(constraint)
        }

        anchors.forEach { $0.isActive = true }
        return anchors
    }
}

