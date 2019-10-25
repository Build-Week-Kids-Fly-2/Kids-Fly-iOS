//
//  EditProfileViewController.swift
//  Kids Fly
//
//  Created by Jake Connerly on 10/22/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import UIKit

class EditProfileViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let menuList = ["Settings", "Profile", "E-Wallet", "Contact Support", "Inbox", "View Trips"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
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

extension EditProfileViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MenuCell", for: indexPath) as? MenuTableViewCell else { return UITableViewCell() }
        cell.menuGroupLabel.text = menuList[indexPath.row]
        return cell
    }
    
    
}
