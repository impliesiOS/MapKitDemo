//
//  ChartVC.swift
//  MapKitDemo
//
//  Created by iMac on 23/02/21.
//

import UIKit
import SwiftChart

class ChartVC: UIViewController {
    
//MARK:- Outlets
    
    @IBOutlet weak var ChartView: Chart!
    
//MARK:- Veriable
  
    let chart = Chart()
    let data = [
      (x: 0, y: 0),
      (x: 1, y: 3.1),
      (x: 4, y: 2),
      (x: 5, y: 4.2),
      (x: 7, y: 5),
      (x: 9, y: 9),
      (x: 10, y: 8)
    ]
    
//MARK:- View Controller Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let series = ChartSeries(data: data)
        series.area = true
        
        series.color = ChartColors.greenColor()
        ChartView.add(series)

    }
    
    
}
