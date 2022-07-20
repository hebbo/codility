class SecondTechnicalInterview
  def fit_all(photos)
    photos.map { |photo| fit(photo) }
  end

  def fit(photo)
    w,h = photo.split("x").map(&:to_i)

    wgap = w - 600
    hgap = h - 600

    return photo if wgap <= 0 && hgap <= 0

    if wgap > hgap
      factor = 600.0 / w
      return ["600", (h * factor).round].join("x")
    else
      factor = 600 / h
      return [(w * factor).round, "600"].join("x")
    end
  end
end
