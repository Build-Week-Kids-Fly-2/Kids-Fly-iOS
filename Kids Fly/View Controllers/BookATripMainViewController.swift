//
//  BookATripMainViewController.swift
//  Kids Fly
//
//  Created by Jake Connerly on 10/21/19.
//  Copyright © 2019 jake connerly. All rights reserved.
//

import UIKit
import CoreData

class BookATripMainViewController: UIViewController {
    
    // MARK: - IBOutlets & Properties

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var hiUserLabel: UILabel!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var bookTripButton: UIButton!
    @IBOutlet weak var checkInButtonContainerView: UIView!
    
    let tripController = TripController.shared
    var trip: Trip?
    var trips: [Trip]?
    let token: String? = KeychainWrapper.standard.string(forKey: "token")
    
    //MARK: - User
    
    var user: UserRepresentation {
        let moc = CoreDataStack.shared.mainContext
        let request: NSFetchRequest<User> = User.fetchRequest()
        
        do {
            let users = try moc.fetch(request)
            if let user = users.first {
                return user.userRepresentation
            }
        } catch {
            fatalError("Error performing fetch for user: \(error)")
        }
        return UserRepresentation(email: nil, password: nil, fullName: nil)
    }
    
    //MARK: - Fetched Results Controller
    
    lazy var fetchedResultsController: NSFetchedResultsController<Trip> = {
        let fetchRequest: NSFetchRequest<Trip> = Trip.fetchRequest()

        // FRCs need at least one sort descriptor. If you are using "sectionNameKeyPath", the first sort descriptor must be the same attribute
        let departureTime = NSSortDescriptor(key: "departureTime", ascending: true)
        fetchRequest.sortDescriptors = [departureTime]

        let moc = CoreDataStack.shared.mainContext

        let frc = NSFetchedResultsController(fetchRequest: fetchRequest, managedObjectContext: moc, sectionNameKeyPath: nil, cacheName: nil)

        frc.delegate = self

        do {
            try frc.performFetch()
        } catch {
            fatalError("Error performing fetch for frc: \(error)")
        }
        self.trips = frc.fetchedObjects
        return frc
    }()
    
    // MARK: - View LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
       setupUI()
        loginChecker()
    }
        
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if token != nil {
            tripController.fetchTripsFromServer { (_) in
                
            }
            tableView.reloadData()
        }
    }
    
    //MARK: - Methods
    
    private func setupUI() {
        searchBar.layer.cornerRadius = 20
        bookTripButton.layer.cornerRadius = 5
        checkInButtonContainerView.layer.borderWidth = 0.2
        
    }
    
    private func loginChecker() {
        if UserDefaults.isFirstLaunch() && token == nil {
            performSegue(withIdentifier: "ShowLoginSegue", sender: self)
        } else if token == nil {
            performSegue(withIdentifier: "ShowLoginSegue", sender: self)
        } else if user.email == nil {
            performSegue(withIdentifier: "ShowLoginSegue", sender: self)
        }
        
        if token != nil {
            tripController.fetchTripsFromServer {_ in
            }
            if let name = user.fullName {
              hiUserLabel.text = "Hi \(name)!"
            }else {
                if let email = user.email {
                    hiUserLabel.text = "Hi \(email)!"
                }
            }
        }
    }
    
}

// MARK: - Extensions

extension BookATripMainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fetchedResultsController.sections?[section].numberOfObjects ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DestinationCell", for: indexPath) as? DestinationTableViewCell else { return UITableViewCell() }
        let trip = fetchedResultsController.object(at: indexPath)
        cell.trip = trip
        let randomInt = Int.random(in: 0...4)
        let image = UIImage(named: "Vectorbackground\(randomInt)")
        cell.destinationImageView.image = image
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let tripToDelete = fetchedResultsController.object(at: indexPath)
            tripController.deleteTrip(trip: tripToDelete)
        }
    }
}

extension BookATripMainViewController: NSFetchedResultsControllerDelegate {
    func controllerWillChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        tableView.beginUpdates()
    }
    
    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        tableView.endUpdates()
    }
    
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>,
                    didChange anObject: Any,
                    at indexPath: IndexPath?,
                    for type: NSFetchedResultsChangeType,
                    newIndexPath: IndexPath?) {
        
        switch type {
            
        case .insert:
            guard let newIndexPath = newIndexPath else { return }
            tableView.insertRows(at: [newIndexPath], with: .automatic)
        case .delete:
            guard let indexPath = indexPath else { return }
            tableView.deleteRows(at: [indexPath], with: .automatic)
        case .move:
            guard let indexPath = indexPath,
                let newIndexPath = newIndexPath else { return }
            tableView.moveRow(at: indexPath, to: newIndexPath)
        case .update:
            guard let indexPath = indexPath else { return }
            tableView.reloadRows(at: [indexPath], with: .automatic)
        @unknown default:
            fatalError()
        }
    }
    
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>,
                    didChange sectionInfo: NSFetchedResultsSectionInfo,
                    atSectionIndex sectionIndex: Int,
                    for type: NSFetchedResultsChangeType) {
        
        let sectionIndexSet = IndexSet(integer: sectionIndex)
        
        switch type {
        case .insert:
            tableView.insertSections(sectionIndexSet, with: .automatic)
        case .delete:
            tableView.deleteSections(sectionIndexSet, with: .automatic)
        default:
            break
        }
    }
}

extension BookATripMainViewController: UITabBarDelegate {
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        performSegue(withIdentifier: "ShowCheckInSegue", sender: self)
    }
}

