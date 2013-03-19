'use strict'

### jasmine specs for directives go here ###

app_name = "myApp"

describe 'directives', ->
  beforeEach module app_name

  describe 'app-version', ->
    ###scope = {}
    ctrl = null
    beforeEach inject ($controller) ->
      ctrl = $controller 'myCtrl1', {$scope: scope}###

    it 'should print current version', ->
      module ($provide) ->
        $provide.value 'version', 'TEST_VER'
        null

      inject ($compile, $rootScope) ->
        element = ($compile '<span app-version></span>')($rootScope)
        expect(
          element.text()
        ).toEqual 'TEST_VER'