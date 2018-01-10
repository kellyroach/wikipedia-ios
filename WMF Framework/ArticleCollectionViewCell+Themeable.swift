extension ArticleCollectionViewCell: Themeable {
    open func apply(theme: Theme) {
        setBackgroundColors(theme.colors.paperBackground, selected: theme.colors.midBackground)
        imageView.backgroundColor = theme.colors.midBackground
        titleLabel.textColor = theme.colors.primaryText
        descriptionLabel.textColor = theme.colors.secondaryText
        extractLabel?.textColor = theme.colors.primaryText
        saveButton.setTitleColor(theme.colors.link, for: .normal)
        imageView.alpha = theme.imageOpacity
        actionsView.apply(theme: theme)
        updateSelectedOrHighlighted()
    }
}

extension ArticleRightAlignedImageCollectionViewCell {
    open override func apply(theme: Theme) {
        super.apply(theme: theme)
        bottomSeparator.backgroundColor = theme.colors.border
        topSeparator.backgroundColor = theme.colors.border
    }
}
