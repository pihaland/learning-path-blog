require 'test_helper'

class BlogPostTest < ActiveSupport::TestCase
  test 'draft? returns true for draft posts' do
    assert blog_posts(:draft).draft?
  end

  test 'draft? returns false for published posts' do
    refute blog_posts(:published).draft?
  end

  test 'draft? returns false for scheduled posts' do
    refute blog_posts(:scheduled).draft?
  end

  test 'published? returns true for published posts' do
    assert blog_posts(:published).published?
  end

  test 'published? returns false for draft posts' do
    refute blog_posts(:draft).published?
  end

  test 'published? returns false for scheduled posts' do
    refute blog_posts(:scheduled).published?
  end

  test 'scheduled? returns true for scheduled posts' do
    assert blog_posts(:scheduled).scheduled?
  end

  test 'scheduled? returns false for draft posts' do
    refute blog_posts(:draft).scheduled?
  end

  test 'scheduled? returns false for published posts' do
    refute blog_posts(:published).scheduled?
  end
end
