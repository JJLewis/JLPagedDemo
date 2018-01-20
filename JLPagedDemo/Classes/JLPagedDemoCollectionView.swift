//
//  JLPagedDemoCollectionView.swift
//  JLPagedDemo
//
//  Created by jordanlewis on 19/1/18.
//

import UIKit

open class JLPagedDemoCollectionView: UICollectionView {
    
    private var _pages:JLPagedDemo = []
    public var pages:JLPagedDemo {
        get {
            return _pages
        }
        set {
            _pages = newValue
            reloadData()
        }
    }
    
    public func setup() {
        delegate = self
        dataSource = self
        
        register(UICollectionViewCell.self, forCellWithReuseIdentifier: "JLPD Template Cell")
        
        isPagingEnabled = true
        bounces = false
        
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        collectionViewLayout = layout
    }
    
    public override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        
        setup()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        setup()
    }
}

extension JLPagedDemoCollectionView: UICollectionViewDelegateFlowLayout {
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    public func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemWidth = collectionView.bounds.width
        let itemHeight = collectionView.bounds.height
        return CGSize(width: itemWidth, height: itemHeight)
    }
}

extension JLPagedDemoCollectionView: UICollectionViewDataSource {
    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pages.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "JLPD Template Cell", for: indexPath)
        
        let contentView = pages[indexPath.row].page
        cell.addSubview(contentView)
        cell.fitToSuperView(view: contentView)
        
        return cell
    }
}
