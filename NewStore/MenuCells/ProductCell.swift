

import UIKit

class PizzaCell: UICollectionViewCell {

    @IBOutlet weak var pizzaImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var costLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }
    func setupPizzaCell (product: Pizza){
        let url = URL(string: product.image)
        let data = try? Data(from: url as! Decoder)
        pizzaImage.image = UIImage(data: data!)
        nameLabel.text = product.name
        descriptionLabel.text = product.description
        costLabel.text = "\(product.cost)"
        
    }
}
