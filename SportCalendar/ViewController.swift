//
//  ViewController.swift
//  SportCalendar
//
//  Created by 이수한 on 2018. 8. 11..
//  Copyright © 2018년 이수한. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    
    var apiSoccerseasons: NSArray = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = "https://api.football-data.org/v1/soccerseasons"
        let apiURI: URL! = URL(string: url)
        let apidata = try! Data(contentsOf: apiURI)
        let log = NSString(data: apidata, encoding: String.Encoding.utf8.rawValue) ?? ""
        NSLog("API Result =\( log )")
        
        do {
            apiSoccerseasons = try JSONSerialization.jsonObject(with: apidata, options: []) as! NSArray
        } catch {
            
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
