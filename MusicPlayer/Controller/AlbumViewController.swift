//
//  AlbumViewController.swift
//  MusicPlayer
//
//  Created by IosDeveloper on 21.01.2022.
//

import UIKit

class AlbumsViewController: UIViewController {
    private let tableView:UITableView = {
        let tableView = UITableView ()
        tableView.backgroundColor = .white
        tableView.register(AlbumsTableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    private let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupViews()
        setupDelegate()
        setConstrains()
        setNavigationBar()
        setupSearchController()
    }
    private  func setupViews(){
        view.backgroundColor = .white
        view.addSubview(tableView)
    }
 
    private func setupDelegate(){
        tableView.delegate = self
        tableView.dataSource = self
         
        searchController.searchBar.delegate = self
    }
    private func setNavigationBar(){
        navigationItem.title = "Albums"
        navigationItem.searchController = searchController
        
        let profilInfoButton = createCustomButton(selector:#selector(profilInfoButtonTaped))
        
        navigationItem.rightBarButtonItem = profilInfoButton
    }
    private func setupSearchController(){
        searchController.searchBar.placeholder = "Search"
        searchController.obscuresBackgroundDuringPresentation = false
    }
    @objc private func profilInfoButtonTaped(){
        let profilInfoNC = ProfileViewController()
        navigationController?.pushViewController(profilInfoNC, animated: true)
    }
}

extension AlbumsViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath) as! AlbumsTableViewCell
        return cell
    }
    

}
extension AlbumsViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        70
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailAlbumViewController = DetailViewController()
        navigationController?.pushViewController(detailAlbumViewController, animated: true)
    }
}
extension AlbumsViewController:UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
    }
}

extension AlbumsViewController{
    private func setConstrains(){
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0)

        ])
    }
}
