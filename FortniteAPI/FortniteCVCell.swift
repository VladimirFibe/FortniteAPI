import UIKit

final class FortniteCVCell: UICollectionViewCell {
    static let identifier = "FortniteCVCell"
    
    private let bgView = UIView()
    private let bgImageView = UIImageView()
    private let effectView = UIVisualEffectView()
    private let coverView = UIView()
    private let coverImageView = UIImageView()
    private let nameView = UIView()
    private let nameLabel = UILabel()
    private let typeLabel = UILabel()
    private let priceLabel = UILabel()
    private let coinImageView = UIImageView()
    private let lineTopView = UIView()
    private let lineBottomView = UIView()
    private let lineRedTopView = UIView()
    private let lineRedBottomView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension FortniteCVCell {
    private func setupViews() {
        contentView.backgroundColor = .gray
        setupBGView()
        setupBGImageView()
        setupEffectView()
        setupCoverView()
        setupCoverImageView()
        setupNameView()
    }
    
    private func setupBGView() {
        contentView.addSubview(bgView)
        bgView.backgroundColor = .black
        bgView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bgView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 40),
            bgView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -40),
            bgView.heightAnchor.constraint(equalToConstant: screenWidth / 2),
            bgView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            bgView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }
    
    private func setupBGImageView() {
        bgView.addSubview(bgImageView)
        bgImageView.translatesAutoresizingMaskIntoConstraints = false
        bgImageView.clipsToBounds = true
        bgImageView.contentMode = .scaleAspectFill
        bgImageView.image = .item
        NSLayoutConstraint.activate([
            bgImageView.topAnchor.constraint(equalTo: bgView.topAnchor),
            bgImageView.leadingAnchor.constraint(equalTo: bgView.leadingAnchor),
            bgImageView.trailingAnchor.constraint(equalTo: bgView.trailingAnchor),
            bgImageView.bottomAnchor.constraint(equalTo: bgView.bottomAnchor)
        ])
    }
    
    private func setupEffectView() {
        bgView.addSubview(effectView)
        effectView.effect = UIBlurEffect(style: .dark)
        effectView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            effectView.topAnchor.constraint(equalTo: bgView.topAnchor),
            effectView.leadingAnchor.constraint(equalTo: bgView.leadingAnchor),
            effectView.trailingAnchor.constraint(equalTo: bgView.trailingAnchor),
            effectView.bottomAnchor.constraint(equalTo: bgView.bottomAnchor)
        ])
    }
    
    private func setupCoverView() {
        contentView.addSubview(coverView)
        coverView.clipsToBounds = true
        coverView.backgroundColor = .black
        coverView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            coverView.widthAnchor.constraint(equalToConstant: -30 + screenWidth / 2),
            coverView.heightAnchor.constraint(equalTo: coverView.widthAnchor),
            coverView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -30),
            coverView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: -30)
        ])
    }
    
    private func setupCoverImageView() {
        coverView.addSubview(coverImageView)
        coverImageView.image = .item
        coverImageView.translatesAutoresizingMaskIntoConstraints = false
        coverImageView.clipsToBounds = true
        NSLayoutConstraint.activate([
            coverImageView.topAnchor.constraint(equalTo: coverView.topAnchor),
            coverImageView.leadingAnchor.constraint(equalTo: coverView.leadingAnchor),
            coverImageView.trailingAnchor.constraint(equalTo: coverView.trailingAnchor),
            coverImageView.bottomAnchor.constraint(equalTo: coverView.bottomAnchor)
        ])
    }
    
    private func setupNameView() {
        contentView.addSubview(nameView)
        nameView.translatesAutoresizingMaskIntoConstraints = false
        nameView.backgroundColor = .black
        
        nameView.addSubview(lineTopView)
        lineTopView.backgroundColor = .darkGray
        lineTopView.translatesAutoresizingMaskIntoConstraints = false
        
        nameView.addSubview(lineBottomView)
        lineBottomView.backgroundColor = .darkGray
        lineBottomView.translatesAutoresizingMaskIntoConstraints = false
        
        nameView.addSubview(lineRedTopView)
        lineRedTopView.backgroundColor = .red
        lineRedTopView.translatesAutoresizingMaskIntoConstraints = false
        
        nameView.addSubview(lineRedBottomView)
        lineRedBottomView.translatesAutoresizingMaskIntoConstraints = false
        lineRedBottomView.backgroundColor = .red
        
        nameView.addSubview(nameLabel)
        nameLabel.font = UIFont(name: "Palatino-Bold", size: 18.0)
        nameLabel.text = "Tsuki"
        nameLabel.lineBreakMode = .byClipping
        nameLabel.textColor = .white
        nameLabel.numberOfLines = 2
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        nameView.addSubview(typeLabel)
        typeLabel.font = UIFont(name: "Damascus Bold", size: 30.0)
        typeLabel.text = "OUTFIT"
        typeLabel.textAlignment = .center
        typeLabel.minimumScaleFactor = 0.4
        typeLabel.adjustsFontSizeToFitWidth = true
        typeLabel.textColor = .gray.withAlphaComponent(0.8)
        typeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        priceLabel.font = UIFont(name: "Copperplate-Bold", size: 35.0)
        priceLabel.text = "1200"
        priceLabel.textAlignment = .right
        priceLabel.textColor = .gray
        
        coinImageView.image = .coin
        coinImageView.contentMode = .scaleAspectFit
        
        let priceStackView = UIStackView(arrangedSubviews: [coinImageView, priceLabel])
        priceStackView.spacing = 5
        priceStackView.alignment = .center
        priceStackView.distribution = .fill
        priceStackView.translatesAutoresizingMaskIntoConstraints = false
        nameView.addSubview(priceStackView)
        
        
        
        NSLayoutConstraint.activate([
            nameView.widthAnchor.constraint(equalToConstant: -40 + screenWidth / 2),
            nameView.heightAnchor.constraint(equalTo: nameView.widthAnchor),
            nameView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            nameView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: -20),
            
            lineTopView.leadingAnchor.constraint(equalTo: nameView.leadingAnchor, constant: 15),
            lineTopView.trailingAnchor.constraint(equalTo: nameView.trailingAnchor, constant: -15),
            lineTopView.topAnchor.constraint(equalTo: nameView.topAnchor, constant: 15),
            lineTopView.heightAnchor.constraint(equalToConstant: 1),
            
            lineBottomView.leadingAnchor.constraint(equalTo: nameView.leadingAnchor, constant: 15),
            lineBottomView.trailingAnchor.constraint(equalTo: nameView.trailingAnchor, constant: -15),
            lineBottomView.bottomAnchor.constraint(equalTo: nameView.bottomAnchor, constant: -15),
            lineBottomView.heightAnchor.constraint(equalToConstant: 1),
            
            lineRedTopView.heightAnchor.constraint(equalToConstant: 3),
            lineRedTopView.topAnchor.constraint(equalTo: lineTopView.bottomAnchor, constant: 15),
            lineRedTopView.leadingAnchor.constraint(equalTo: nameView.centerXAnchor),
            lineRedTopView.trailingAnchor.constraint(equalTo: lineTopView.trailingAnchor),
            
            lineRedBottomView.heightAnchor.constraint(equalToConstant: 3),
            lineRedBottomView.leadingAnchor.constraint(equalTo: lineBottomView.leadingAnchor),
            lineRedBottomView.trailingAnchor.constraint(equalTo: nameView.centerXAnchor),
            lineRedBottomView.bottomAnchor.constraint(equalTo: lineBottomView.topAnchor, constant: -15),
            
            nameLabel.topAnchor.constraint(equalTo: lineRedTopView.bottomAnchor, constant: 5),
            nameLabel.leadingAnchor.constraint(equalTo: lineTopView.leadingAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: lineTopView.trailingAnchor),
            
            typeLabel.heightAnchor.constraint(equalToConstant: 55),
            typeLabel.centerYAnchor.constraint(equalTo: nameView.centerYAnchor),
            typeLabel.leadingAnchor.constraint(equalTo: lineTopView.leadingAnchor),
            typeLabel.trailingAnchor.constraint(equalTo: lineTopView.trailingAnchor),
            
            priceStackView.trailingAnchor.constraint(equalTo: lineBottomView.trailingAnchor),
            priceStackView.bottomAnchor.constraint(equalTo: lineRedBottomView.topAnchor, constant: -5),
            priceLabel.heightAnchor.constraint(equalToConstant: 30),
            
            coinImageView.widthAnchor.constraint(equalToConstant: 30),
            coinImageView.heightAnchor.constraint(equalTo: coinImageView.widthAnchor),
        ])
    }
}
