//
//  SVGViewController.swift
//  Example
//
//  Created by Eric Hovhannisyan on 08.04.22.
//  Copyright © 2022 Exyte. All rights reserved.
//

import UIKit
import Macaw

final class SVGViewController: UIViewController {
    @IBOutlet private var svgView: SVGView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(svgView.node.allAttributes)
        print(svgView.node)
        
        let group = svgView.node as! Group
        let imageNodes = group.nodesBy { node in
            true
        }
        
        imageNodes.forEach { imageNode in
            print(imageNode)
            print(imageNode.allAttributes)
        }
    }
}
