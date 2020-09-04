# How would you determine the percentage of document pages which include a footnote?
def percent_with_footnote

    @footnote_count = Page.all.find_all{|page| page.footnote}.count
    @total = Page.all.count
    @percent = "#{(@footnote_count.to_f / @total.to_f * 100).round(0)}%" 

    # answer is a rounded whole number %
    return @percent
end