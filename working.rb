require 'dotenv' #uses .env file to define env variables (like API keys)
require 'optparse' #command line option parser
require 'tumblr_client' #ruby gem for interacting with the tumblr API

# TODO:
# move posts by tag
# ensure that there are no duplicate posts
#   add specific tag to all moved posts, then on move stage check for this tag on each post
# move to command line options
# Some type of verification for source/target might be good? this thing does kind of a lot.

################################################################################

#overcommenting is because Ruby isn't my favoured language, so taking notes helps.
#create attributes and accessing methods for source and target URLs
class Tumblr::Client
  attr_accessor :targetBlogURL
  attr_accessor :sourceBlogURL
end

#initialize tumblr tumblr_client
#
# @return Tumblr::Client : the client to make requests with
def init_client
  #load env vars from file
  Dotenv.load

  #define tumblr client with OAUTH keys and such
  temp = Tumblr::Client.new({
    #given as arguments for the new() method
    consumer_key: ENV['TUMBLR_CONSUMER_KEY'],
    consumer_secret: ENV['TUMBLR_CONSUMER_SECRET'],
    oauth_token: ENV['TUMBLR_OAUTH_KEY'],
    oauth_token_secret: ENV['TUMBLR_OAUTH_SECRET'],
    })

  #to be defined by command line options later.
  temp.sourceBlogURL = ENV['TUMBLR_SOURCE_BLOG']
  temp.targetBlogURL = ENV['TUMBLR_TARGET_BLOG']
  return temp
end

def check_tag()
end

def parse_options
end

# validate the script options
# @param Hash options: the options Hash
# @return Bool: are the provided options valid?
def valid_options?(options)
end

# Normalizes options left unset at call
#
# @param Hash options: the options hash
# @return Hash: the normalized options
def normalize_options(options)
end

# Fetch posts from required tag from source blog.
#
# @param Array sourcePosts: the array of posts to reblog from Source
# @param String tag: the tag to look for
# @return Array sourcePosts: the array of posts to reblog from Source
def find_tagged(sourcePosts, tag)
end

# Reblogs a post to target blog
#
# @param Tumblr::post post: the post to be reblogged
# @param Hash options: the post options
# @return Boolean: whether this successfully reblogged or not
def reblog_post(post, options)
end

test = init_client;

#puts test.targetBlogURL
#test.text(test.targetBlogURL, {:title => "test", :body => "placeholder", })
#puts "test possibly passed"
