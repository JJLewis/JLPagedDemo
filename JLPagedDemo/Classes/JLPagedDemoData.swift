//
//  JLPagedDemoData.swift
//  JLPagedDemo
//
//  Created by jordanlewis on 19/1/18.
//

import UIKit

open class JLPage {
    private var _page: UIView?
    public var page: UIView {
        get {
            if let p = _page {
                return p
            }
            _page = UIView()
            _page!.backgroundColor = .red
            return _page!
        }
        set {
            _page = newValue
        }
    }
    
    init(_ view: UIView?) {
        _page = view
    }
}

public typealias JLPagedDemo = [JLPage]
