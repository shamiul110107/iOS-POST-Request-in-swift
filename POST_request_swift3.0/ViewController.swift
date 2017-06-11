//
//  ViewController.swift
//  POST_request_swift3.0
//
//  Created by MobioApp on 6/11/17.
//  Copyright © 2017 MobioApp. All rights reserved.
//

import UIKit

let url = "http://www.windmillinfotech.com/carlife/carlife_api/get_thana"
let parameter = "district=Dhaka"

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let callApi = apiCall()
        
        callApi.getDataFromJson(url: url, parameter: parameter, completion: { response in
            
           let thanaArray = response["thana_info"] as! NSArray
            print(thanaArray[0])
        })

    }

}

