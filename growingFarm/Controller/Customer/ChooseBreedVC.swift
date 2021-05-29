//
//  ChooseBreedVC.swift
//  growingFarm
//
//  Created by Michael Namara on 2021/5/28.
//  Copyright © 2021 Michael. All rights reserved.
//

import UIKit

class ChooseBreedVC: UIViewController {
    
    @IBOutlet weak var rice1Button: UIButton!
    @IBOutlet weak var rice2Button: UIButton!
    var pick:Int=1
    let fetchData=FetchData()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor=UIColor.black.withAlphaComponent(0.5)
        // Do any additional setup after loading the view.
    }
    @IBAction func breedPressed(_ sender: UIButton) {
        if sender==rice1Button{
            rice1Button.isEnabled=false
            rice2Button.isEnabled=true
        }
        else{
            rice1Button.isEnabled=true
            rice2Button.isEnabled=false
            pick=2
        }
    }
    
    @IBAction func confirmButtonPressed(_ sender: UIButton) {
        if pick==1{
            fetchData.updateCustomerGameData("breed", "1")
        }
        else{
            fetchData.updateCustomerGameData("breed", "2")
        }
        self.view.removeFromSuperview()
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
