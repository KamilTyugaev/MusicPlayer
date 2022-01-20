//
//  SearchAlbumController.swift
//  MusicPlayer
//
//  Created by IosDeveloper on 20.01.2022.
//

import UIKit

class SearchAlbumController: UITableViewController {
    var albums = ["music1","music2","music3","music4","music5","music6","music7"]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Albums"
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        profileImageForNavigationBar()
    }

  private func profileImageForNavigationBar(){
    let buttonForNavigatorBar = UIButton(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        imageView.image = UIImage(named: "Ourprofile.png")
        imageView.layer.cornerRadius = 20
        imageView.layer.masksToBounds = true
        buttonForNavigatorBar.addSubview(imageView)
        let rightBarButton = UIBarButtonItem(customView: buttonForNavigatorBar)
        buttonForNavigatorBar.addTarget(self, action: #selector(goToInProfileWithItem), for: .touchUpInside)
        self.navigationItem.rightBarButtonItem = rightBarButton
  }
    @objc private func goToInProfileWithItem(){
        let profilController = ProfileViewController()
        navigationController?.pushViewController(profilController, animated: true)
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return albums.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        
        return cell
    }
    private func configureCell(){
//        let cell = UICellConfigurationState()
        
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
