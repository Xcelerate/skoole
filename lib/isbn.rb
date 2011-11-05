def isbn_request(isbn_args)
    response = ISBNRequest.getISBN(isbn_args)
    puts response.body, response.code, response.message
    
    response = JSON.parse(response.body)

    @title = response["items"][0]["volumeInfo"]["title"]
    @author = response["items"][0]["volumeInfo"]["authors"][0]
    @thumbnail = response["items"][0]["volumeInfo"]["imageLinks"]["smallThumbnail"]
    @published = response["items"][0]["volumeInfo"]["publishedDate"]

    return {"title" => @title, "author" => @author, "thumbnail" => @thumbnail, "published" => @published}
end

class ISBNRequest
    include HTTParty
    def self.getISBN(isbn_args)
        get('https://www.googleapis.com/books/v1/volumes', :query => {
            :q => "isbn:#{isbn_args}"
        })
    end
end