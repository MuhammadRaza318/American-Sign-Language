//
//  ViewController.swift
//  American Sign Language
//
//  Created by Raza on 19/09/2024.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {
   // SignData
    var signData = ["Alphabets", "Numbers", "Greetings&Phrasses", "Question Words", "Days & Time of Day", "Clothing","Family members & People" , "Emotions & Feelings" , "Colors","Foods & Meals","Health & the body","Time","Around the House","Opposites", "Nature & the Weather","Money","A Letter Words(BSL)","B letter Words(BSL)","C letter Words(BSL)","D Letter Words(BSL)","E Letter Words(BSL)","F Letter Words(BSL)","G Letter Words(BSL)","H Letter Words(BSL)","I Letter Words(BSL)","J Letter Words(BSL)","K Letter Words(BSL)","L Letter Words(BSL)","M Letter Words(BSL)","N Letter Words(BSL)","O letter Words(BSL)","P letter Words(BSL)","Q Letter Words(BSL)","R Letter Words(BSL)","S Letter Words(BSL)","T Letter Words(BSL)","U Letter Words(BSL)","V Letter Words(BSL)","W letter Words(BSL)","X Letter Words(BSL)","Y Letter Words(BSL)" ,"Z Letter Words(BSL)"]

    @IBOutlet var signTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        signTableView.backgroundColor = UIColor.clear
      
    }


}

// MARK: - Extension ViewController.
extension ViewController  {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = signTableView.dequeueReusableCell(withIdentifier: "signCell") as! ViewControllerTableViewCell
        cell.signImage.image = UIImage(named: "Hand")
        cell.signLabel.text = signData[indexPath.row]
        
        return cell
         
    }
}
    


