//
//  SizeConstraintsAPI.swift
//  BoseHealthUIConstraints
//
//  Created by Swagat Mishra on 9/1/20.
//  Copyright © 2020 Bose Corporation. All rights reserved.
//

import UIKit

// MARK: - Size Constraints API

public extension UIView {
    @discardableResult func anchorSize(
        width: NSLayoutDimension? = nil,
        height: NSLayoutDimension? = nil,
        widthMultiplier: CGFloat = 1,
        heightMultiplier: CGFloat = 1,
        widthRelation: NSLayoutConstraint.Relation = .equal,
        heightRelation: NSLayoutConstraint.Relation = .equal,
        widthPriority: UILayoutPriority = .required,
        heightPriority: UILayoutPriority = .required,
        widthConstant: CGFloat = 0,
        heightConstant: CGFloat = 0,
        widthConstantRelation: NSLayoutConstraint.Relation = .equal,
        heightConstantRelation: NSLayoutConstraint.Relation = .equal,
        aspectRatio: CGFloat? = nil
    ) -> [NSLayoutConstraint] {

        translatesAutoresizingMaskIntoConstraints = false
        var anchors = [NSLayoutConstraint]()

        if let width = width {
            let constraint = widthAnchor.constraint(to: width, multiplier: widthMultiplier, relation: widthRelation)
            constraint.priority = widthPriority
            anchors.append(constraint)
        }

        if let height = height {
            let constraint = heightAnchor.constraint(to: height, multiplier: heightMultiplier, relation: heightRelation)
            constraint.priority = heightPriority
            anchors.append(constraint)
        }

        if widthConstant > 0 {
            let constraint = widthAnchor.constraint(toConstant: widthConstant, relation: widthConstantRelation)
            anchors.append(constraint)
        }

        if heightConstant > 0 {
            let constraint = heightAnchor.constraint(toConstant: heightConstant, relation: heightConstantRelation)
            anchors.append(constraint)
        }

        if let aspectRatio = aspectRatio {
            let constraint = widthAnchor.constraint(to: heightAnchor, multiplier: aspectRatio)
            anchors.append(constraint)
        }

        anchors.forEach { $0.isActive = true }
        return anchors
    }
}
