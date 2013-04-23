module IssueWallComponents
  module Github
    class Connection

      attr_reader :github

      def initialize options
        @options = options
        @github = ::Github.new options
      end

      def authorize_url
        @github.authorize_url :redirect_uri => 'http://localhost:9292/auth/github/callback', :scope => 'repo'
      end
    end
  end
end
