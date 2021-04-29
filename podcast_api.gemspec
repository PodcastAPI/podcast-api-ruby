# frozen_string_literal: true

$LOAD_PATH.unshift(::File.join(::File.dirname(__FILE__), "lib"))

require "version"

Gem::Specification.new do |s|
  s.name = "podcast_api"
  s.version = PodcastApi::VERSION
  s.required_ruby_version = ">= 2.3.0"
  s.summary = "Ruby bindings for the Listen Notes Podcast API"
  s.description = "Listen Notes is the best podcast search engine and api.  " \
                  "See https://www.listennotes.com/api/ for details."
  s.author = "Listen Notes, Inc."
  s.email = "hello@listennotes.com"
  s.homepage = "https://www.listennotes.com/api/"
  s.license = "MIT"
  s.add_runtime_dependency "httparty"
  s.metadata = {
    "bug_tracker_uri" => "https://github.com/ListenNotes/podcast-api-ruby/issues",
    "changelog_uri" =>
      "https://github.com/ListenNotes/podcast-api-ruby/releases",
    "documentation_uri" => "https://www.listennotes.com/api/docs/",
    "github_repo" => "https://github.com/ListenNotes/podcast-api-ruby",
    "homepage_uri" => "https://www.listennotes.com/api/",
    "source_code_uri" => "https://github.com/ListenNotes/podcast-api-ruby",
  }

  ignored = Regexp.union(
    /\A\.editorconfig/,
    /\A\.git/,
    /\A\.rubocop/,
    /\A\.travis.yml/,
    /\Atest/
  )
  s.files = `git ls-files`.split("\n").reject { |f| ignored.match(f) }
  s.executables   = `git ls-files -- bin/*`.split("\n")
                                           .map { |f| ::File.basename(f) }
  s.require_paths = ["lib"]
end
