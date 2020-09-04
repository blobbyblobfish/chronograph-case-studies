# How would you search the body of a page to look for a specific search string? Any approach is welcome, though you may only use native methods, not gems or other libraries.
def search_body(search_string)
    @pages = []

    Page.all.each do |page|
        if page.body.include? search_string
            @pages.push(page)
        end
    end

    return @pages
end