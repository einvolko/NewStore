

import UIKit

class PizzaCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
        
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    func setupPizzaCell (product: Pizza){
        nameLabel.text = product.name
    }
}
