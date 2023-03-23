

import UIKit

class PizzaCell: UICollectionViewCell, UITableViewDataSource {
    
    let config : AppConfig?
 
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var tableViewCell: UITableViewCell!
    
    @IBOutlet weak var labelCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    func setupPizzaCell (product: Pizza){
    
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        config?.productList.pizzaList.count ?? 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}
