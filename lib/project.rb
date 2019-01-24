class Project
    attr_accessor :title, :backers
    @@all = []

    def initialize(title)
        @title = title
        @backers = []
        @@all << self
    end

    def add_backer(backer)
        if !@backers.include?(backer)
            @backers << backer
            backer.back_project(self)
        end
    end

    def self.all
        @@all
    end

end