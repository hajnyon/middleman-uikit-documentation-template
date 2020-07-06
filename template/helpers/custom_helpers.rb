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

    # get last updated time of file from git
    def last_update_time(file)
        time = `git log -1 --format=%cd #{file} 2>/dev/null`
        if time == ''
            return ''
        end
        return Time.parse time
    end

    # get second level headings from markdown
    def chapters( post )
        File.readlines( post.source_file ).collect do |x|
          if x =~ /^##\s(.*)/
            $1
          else
            nil
          end
        end.select { |x| x }
    end


end
