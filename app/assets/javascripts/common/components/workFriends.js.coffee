_ = require "lodash"

eventHub = require "../eventHub"

DISPLAY_USERS_LIMIT = 12

module.exports =
  template: "#t-work-friends"

  data: ->
    isSignedIn: gon.user.isSignedIn
    isLoading: false
    showAll: false
    works: []

  props:
    workId:
      type: Number
      required: true

  computed:
    allUsers: ->
      return [] unless @works.length
      data = _.find @works, (work) =>
        work.id == @workId
      data.users

    users: ->
      return @allUsers if @showAll
      _.take(@allUsers, DISPLAY_USERS_LIMIT)

    isMoreUsers: ->
      !@showAll && @allUsers.length > DISPLAY_USERS_LIMIT

  methods:
    more: ->
      @showAll = true

  mounted: ->
    return unless @isSignedIn

    @isLoading = true
    eventHub.$on "vueRoot:mounted", =>
      @works = @$parent.pageObject.works
      @isLoading = false
