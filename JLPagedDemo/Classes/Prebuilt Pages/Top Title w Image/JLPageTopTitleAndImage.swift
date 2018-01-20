//
//  JLPageTopTitleAndImage.swift
//  JLPagedDemo
//
//  Created by jordanlewis on 19/1/18.
//

import UIKit

open class JLPageTopTitleAndImage: JLPrebuiltPage {

    @IBOutlet public var titleLabel: UILabel!
    @IBOutlet public var imageview: UIImageView!
    @IBOutlet public var stackview: UIStackView!
    
    open override class func instanceFromNib() -> JLPageTopTitleAndImage {
        return jlpdBundle.loadNibNamed("JLPageTopTitleAndImage", owner: nil, options: nil)!.first as! JLPageTopTitleAndImage
    }
}
