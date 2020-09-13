# Return a list of report titles and the total number of pages in the report. Reports which do not have pages may be ignored.
def list
    @reports = []

    Report.all.each do |report|
        @page_count = 0
        @report_hash = {} # create hash with report title and number of pages

        report.documents.each do |doc| 
            if doc.pages.count > 0
                @page_count += doc.pages.count # calculate number of pages by visiting each document and getting page count
            end
        end

        @report_hash["title"] = report.title
        @report_hash["page_count"] = @page_count
        
        @reports.push(@report_hash)
        
    end

    return @reports
end

# SQL query to return document names and number of pages
    # SELECT name
    # COUNT(pages.id) 
    # FROM document 
    # INNER JOIN page ON pages.document_id = document.id
    # GROUP BY document.id