import UIKit

final class FortniteCVCell: UICollectionViewCell {
    static let identifier = "FortniteCVCell"
    
    private let bgView = UIView()
    private let bgImageView = UIImageView()
    private let effectView = UIVisualEffectView()
    private let coverView = UIView()
    private let coverImageView = UIImageView()
    
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
        setupBGView()
        setupBGImageView()
        setupEffectView()
        setupCoverView()
        setupCoverImageView()
    }
    
    private func setupBGView() {
        contentView.addSubview(bgView)
        bgView.backgroundColor = .black
        bgView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bgView.widthAnchor.constraint(equalToConstant: screenWidth - 40),
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
}
