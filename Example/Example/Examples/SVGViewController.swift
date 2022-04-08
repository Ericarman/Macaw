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
    @IBOutlet var svgView: SVGView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(svgView.node)
        print(svgView.node.allAttributes)
        
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
