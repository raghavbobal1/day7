//
//  ViewController.swift
//  day7
//
//  Created by Raghav Bobal on 2020-03-09.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    var personArray = [Person]()
    let cellID = String(describing: PersonTableViewCell.self)
    @IBOutlet weak var tbltest: UITableView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        getData()
    }

    private func getData()
    {
          personArray.append(Person(id: "p1", fName: "raghav", lName: "bobal", salary: 100000000000))
          personArray.append(Person(id: "p2", fName: "kush", lName: "bhatia", salary: 100000000000))
          personArray.append(Person(id: "p3", fName: "pranav", lName: "vivek", salary: 1000000000))
          personArray.append(Person(id: "p4", fName: "rrer", lName: "rerer", salary: 23131231121))
          personArray.append(Person(id: "p5", fName: "refre", lName: "dfsdsd", salary: 2222222222))
        
    }
}

extension ViewController: UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.personArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonTableViewCell", for: indexPath) as! PersonTableViewCell
        
        let person = personArray[indexPath.row]
        cell.fNLbl.text = person.fName
        cell.lastNamelbl.text = person.lName
        cell.salarylbl.text = (" $ \(person.salary)")
        return UITableViewCell()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100.0)
    }
}
