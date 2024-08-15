//
//  ViewController.swift
//  ToDoList
//
//  Created by Sergio Mascarpone on 16.08.24.
//

import UIKit

class TaskListViewController: UIViewController {
    
    private var tasks = [String]()
      private let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ToDo List"
               view.backgroundColor = .white
               setupTableView()
               setupNavigationBar()
           }

           private func setupTableView() {
               tableView.frame = view.bounds
               tableView.dataSource = self
               tableView.delegate = self
               view.addSubview(tableView)
           }

           private func setupNavigationBar() {
               navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapAdd))
           }

           @objc private func didTapAdd() {
               let alert = UIAlertController(title: "New Task", message: "Enter task", preferredStyle: .alert)
               alert.addTextField(configurationHandler: nil)
               alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
               alert.addAction(UIAlertAction(title: "Add", style: .default, handler: { [weak self] _ in
                   guard let text = alert.textFields?.first?.text, !text.isEmpty else {
                       return
                   }
                   self?.tasks.append(text)
                   self?.tableView.reloadData()
               }))
               present(alert, animated: true)
           }
       }

       extension TaskListViewController: UITableViewDataSource, UITableViewDelegate {
           func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
               return tasks.count
           }

           func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
               let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
               cell.textLabel?.text = tasks[indexPath.row]
               return cell
           }
       }
