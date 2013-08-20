Feature: Edit Blog
  As an admin
  In order to edit an article
  I want to see the changes on the blog detail

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Edit blog page
    Given I am on the edit page of "hello world"
    When I fill in "article_title" with "changing the title"
    And I fill in "article__body_and_extended_editor" with "changing the articles body"
    And I press "Publish"
    And I am on the detail page of "changing the title"
    Then I should see "changing the title"
    And I should see "changing the articles body"
    When I go to the home page
    Then I should see "changing the title"

