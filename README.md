# Startup Sprint

This is a partially finished Sinatra app with a ton of work left in the [backlog](https://www.atlassian.com/agile/scrum/backlogs). It's up to you and your teammates to generate as much velocity as you can!

## Contents

|Section                             |
|:-----------------------------------|
|[Overview](#overview)               |
|[Requirements](#requirements)       |
|[Group Logistics](#group-logistics) |
|[Getting Started](#getting-started) |
|[Workflow](#recommended-workflow)   |
|[Resources](#resources)             |
|[Issues](#issues)                   |

## Overview

Today, we're working in teams to complete a [project sprint](https://blog.trello.com/beginners-guide-scrum-and-agile-project-management). We'll be building a Sinatra app, complete with a schedule page, team page, newsletter signup form, and other supporting features. Complete as much as you can, then deploy your app to [Heroku](https://www.heroku.com/home).

The backlog is here in this [Trello board](https://trello.com/b/gK1QntcZ).

## Requirements

* Trello account (sign up [here](https://trello.com/signup))
* Heroku account (sign up [here](https://signup.heroku.com/))

## Group Logistics

* **Choose teams!** Divide yourselves into teams of about 3-4 people.
* **Choose a team lead.** This person's repo will serve as the main repo for your group, and at the end, all of your work will be merged into this repo.

### Set up team Trello board

* Have the team lead open the sprint's [Trello board](https://trello.com/b/gK1QntcZ). From the menu on the right, copy the Trello board to one of your own.
* The team lead should invite each of their teammates to the team's Trello board.

### Set up team project repo

* The team lead should fork this lesson and [add all team members as collaborators](https://help.github.com/articles/adding-collaborators-to-a-personal-repository/).
* Next, the team lead should then send the clone url to the rest of their teammates. This url will look something like `git@github.com:TEAM-LEAD-GITHUB-USERNAME/vfa-startup-sprint.git`.
* Now every team member except their team lead should [update their git `remote` url](https://help.github.com/articles/changing-a-remote-s-url/) to the team lead's url.
  * Open this lesson in your current [Learn Environment](https://learn.co/account/environment)
  * In the terminal, run the following command: `git remote set-url origin https://github.com/TEAM-LEAD-GITHUB-USERNAME/vfa-startup-sprint.git`
  * Confirm that you've updated your remote by running `git remote -v`. You should see something like the following:

```text
// ♥ git remote -v
origin  https://github.com/TEAM-LEAD-GITHUB-USERNAME/vfa-startup-sprint.git (fetch)
origin  https://github.com/TEAM-LEAD-GITHUB-USERNAME/vfa-startup-sprint.git (push)
```

## Getting Started

Run `bundle install` to install all the necessary Ruby gems.

Start the server with the `rackup` command, you can then view it at `http://localhost:9292`.


## Recommended Workflow

* Start by reviewing the backlog together and picking out the ones that seem most "cost effective" to implement for your team.
* As you work through the backlog, assign tickets to one or more team members, who will own completing the ticket.
* When working on a ticket, you'll want to create a new git branch for each ticket, and do your work on that branch.
* Submit a separate pull request for each ticket, and be sure to link your pull request to the ticket for easy reference.
* Review each other's work before merging :shipit:


## Resources

* Git Step Resources
  * [Forking a Repo](https://help.github.com/articles/fork-a-repo)
  * [Cloning a Repo](http://git-scm.com/book/en/Git-Basics-Getting-a-Git-Repository#Cloning-an-Existing-Repository)
  * [Branching](http://git-scm.com/book/en/Git-Branching-Basic-Branching-and-Merging#Basic-Branching)
  * [Adding](http://git-scm.com/book/en/Git-Basics-Recording-Changes-to-the-Repository#Staging-Modified-Files)
  * [Committing Changes](http://git-scm.com/book/en/Git-Basics-Recording-Changes-to-the-Repository#Committing-Your-Changes)
  * [Pushing to Remote Branches](http://git-scm.com/book/en/Git-Basics-Working-with-Remotes#Pushing-to-Your-Remotes)
  * [Merging Branches](http://git-scm.com/book/en/Git-Branching-Basic-Branching-and-Merging#Basic-Merging)
  * [Submitting a Pull Request](https://help.github.com/articles/using-pull-requests#sending-the-pull-request)
* Git Workflow Resources
  * [GitHub Flow](http://scottchacon.com/2011/08/31/github-flow.html)
  * [Git Workflow](https://github.com/diaspora/diaspora/wiki/Git-Workflow)
  * [Git Rebase Workflow Explained](http://mettadore.com/analysis/a-simple-git-rebase-workflow-explained/)
  * [GitHub Workflow for Submitting Pull Requests](https://openshift.redhat.com/community/wiki/github-workflow-for-submitting-pull-requests)
* Trello Resources
  * [Getting Started with Trello](https://help.trello.com/category/694-category)
  * [Adding people to a board](https://help.trello.com/article/717-adding-people-to-a-board)
  * [Formatting text on Trello cards](https://help.trello.com/article/821-using-markdown-in-trello)


## Issues

A common issue is not being able to authenticate with GitHub. You need to use HTTPS/SSH correctly when cloning the repository in order to be authenticated with GitHub. Checkout and follow:

* [Setting Up Git](https://help.github.com/articles/set-up-git)
* [HTTPS Cloning Errors](https://help.github.com/articles/https-cloning-errors)
* [Setting Up SSH](https://help.github.com/articles/generating-ssh-keys)
