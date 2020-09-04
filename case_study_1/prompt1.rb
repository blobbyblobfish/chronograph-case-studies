# Find the ids of all documents which do not have any pages.
def empty_documents 
    @result = []

    Document.all.each do |doc|
        if doc.pages.count == 0
            @result.push(doc.id)
        end
    end

    return @result
end