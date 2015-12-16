# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

editor = new Simditor
  textarea: $('#topic_content')
  placeholder: ''
  defaultImage: 'images/image.png'
  params: {}
  upload: false
  tabIndent: true
  toolbar: true
  toolbarFloat: true
  toolbarFloatOffset: 0
  toolbarHidden: false
  pasteImage: false