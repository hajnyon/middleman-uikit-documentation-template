module CustomHelpers
    def edit_page_url(base_url, relative_path)
        "#{base_url}/-/sse/#{encode_path(relative_path)}/"
    end

    def encode_path(relative_path)
        ERB::Util.url_encode("master/source/#{relative_path}")
    end

    # gets all parents
    def get_breadcrumbs(current_page)
        bc_page = current_page
        bc_pages = []
        while bc_page.parent do
            bc_pages.push(bc_page.parent)
            bc_page = bc_page.parent
        end
        return bc_pages
    end

end
