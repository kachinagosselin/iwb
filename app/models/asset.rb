class Asset < ActiveRecord::Base
    belongs_to :project
    
    attr_accessible :document_url
    
    has_attached_file :document 
    
    before_validation :download_remote_document, :if => :document_url_provided?
    
    validates_presence_of :document_remote_url, :if => :document_url_provided?, :message => 'is invalid or inaccessible'
    
    private
    
    def document_url_provided?
        !self.document_url.blank?
    end
    
    def download_remote_document
        self.document = do_download_remote_document
        self.document_remote_url = document_url
    end
    
    def do_download_remote_document
        io = open(URI.parse(document_url))
        def io.original_filename; base_uri.path.split('/').last; end
        io.original_filename.blank? ? nil : io
        rescue # catch url errors with validations instead of exceptions (Errno::ENOENT, OpenURI::HTTPError, etc...)
        end
end
