//
//  MarginLabel.swift
//  MarginLabel
//
//  Created by LC on 2023/12/25.
//  Copyright © 2023 MarginLabel. All rights reserved.
//

import UIKit

open class MarginLabel: UILabel {

    public var contentInset: UIEdgeInsets = .zero
    
    public override func textRect(forBounds bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
        var rect: CGRect = super.textRect(forBounds: bounds.inset(by: contentInset), limitedToNumberOfLines: numberOfLines)
        rect.origin.x -= contentInset.left
        rect.origin.y -= contentInset.top
        rect.size.width += contentInset.left + contentInset.right
        rect.size.height += contentInset.top + contentInset.bottom
        return rect
    }
    
    public override func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: contentInset))
    }
}

