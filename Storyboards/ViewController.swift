import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorsTableViewCell") as! ColorsTableViewCell
        
        if indexPath.row > 5 {
            let manager = APIDataManager()
            cell.setup(with: manager.userName)
        } else {
            let manager = DatabaseDataManager()
            cell.setup(with: manager.userName)
        }
        
        return cell
    }
    
}

