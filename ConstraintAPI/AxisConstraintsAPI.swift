//
//  AxisConstraintsAPI.swift
//  BoseHealthUIConstraints
//
//  Created by Swagat Mishra on 9/1/20.
//  Copyright © 2020 Bose Corporation. All rights reserved.
//

import UIKit

// MARK: - Axis Constraints API

public extension UIView {

    @discardableResult func anchorAxis(
        xAxis: NSLayoutXAxisAnchor? = nil,
        yAxis: NSLayoutYAxisAnchor? = nil,
        xAxisPriority: UILayoutPriority = .required,
        yAxisPriority: UILayoutPriority = .required
    ) -> [NSLayoutConstraint] {

        translatesAutoresizingMaskIntoConstraints = false
        var anchors = [NSLayoutConstraint]()

        if let xAxis = xAxis {
            let xAnchor = centerXAnchor.constraint(equalTo: xAxis)
            xAnchor.priority = xAxisPriority
            anchors.append(xAnchor)
        }
        if let yAxis = yAxis {
            let yAnchor = centerYAnchor.constraint(equalTo: yAxis)
            yAnchor.priority = yAxisPriority
            anchors.append(yAnchor)
        }

        anchors.forEach { $0.isActive = true }

        return anchors
    }
}
