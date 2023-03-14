command: "pmset -g batt | grep \"%\" | awk 'BEGINN { FS = \";\" };{ print $1,$2,$3 }' | sed -e 's/-I/I/' -e 's/-0//' -e 's/;//' -e 's/;//'"

refreshFrequency: 10000

style: """
    top: 20
    left: 1160px
    color: #fff
    font-family: Helvetica Neue

    table
      border-collapse: collapse
      table-layout: fixed

      &:after
        content: ''
        position: absolute
		font-size: 14
        left: 0
        top: -14px
        font-size: 12px

    td
      border: 1px solid #fff
      font-size: 22px
      font-weight: 100
      width: 120px
      max-width: 250px
      overflow: hidden
      text-shadow: 0 0 1px rgba(#fff, 0.5)

    .value
      padding: 4px 6px 4px 6px
      position: relative

    .col1
      background: rgba(#fff, 0.2)
		
    .col2
      background: rgba(#fff, 0.2)
	  
    .col3
      background: rgba(#fff, 0.2)

    p
      padding: 0
      margin: 0
      font-size: 12px
      font-weight: light
      max-width: 100%
      color: #ddd
      text-overflow: ellipsis
      text-shadow: none
"""

render: -> """
<table>
    <tr>
      <td class='col1'></td>
      <td class='col3'></td>
    </tr>
  </table>
"""

update: (output, domEl) ->
  values = output.split(' ')
  table	= $(domEl).find('table')

  renderValue = (battery, index, label) ->
    "<div class='value'>" +
      "#{battery}" +
      "<p class=>#{label}</p>" +
    "</div>"

  for value, i in values
    if i == 0
      label = 'Akku'
    else if i == 2
      label = 'Ladung'

    table.find(".col#{i+1}").html renderValue(value,i, label)
