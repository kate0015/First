$(document).ready ->
  $(".costAction").click ->
    $.ajax
      type: "GET"
      url: "/cost"
      dataType: "script"
      data:
        id: $(this).closest("tr").attr("id")

    return

  return
