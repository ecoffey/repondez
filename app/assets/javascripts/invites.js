$('#mark_as_sent').click(function(event) {
  if ($("input[name='invite_ids[]']:checked").length > 0) {
    $('#bulk_update_form').attr('action', '/admin/invites/bulk_send_invites');

    $('#bulk_update_form').submit();
  }

  return false;
});