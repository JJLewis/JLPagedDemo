//
//  JLPrebuiltPage.swift
//  JLPagedDemo
//
//  Created by jordanlewis on 19/1/18.
//

import UIKit

open class JLPrebuiltPage: UIView {
    
    private var _page:JLPage?
    public var page:JLPage {
        get {
            if let p = _page {
                return p
            }
            _page = JLPage(self)
            return _page!
        }
    }
    
    open class func instanceFromNib() -> JLPrebuiltPage {
        return JLPrebuiltPage()
    }
}
