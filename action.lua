function on_msg_receive (msg)
  if msg.out then
    return
  end
  if (msg.text=='ping') then
    send_msg (msg.from.print_name, 'pong', ok_cb, false)
  end
  if (msg.text=='bos') then
    send_msg (msg.from.print_name, 'yes bos?', ok_cb, false)
  end
  if (msg.text=='photo') then
    os.execute('/home/pi/camera/camera.sh')
    send_photo (msg.from.print_name, '/home/pi/camera/image2.jpg', ok_cb, false)
  end
  if (msg.text=='on') then
    os.execute('python /home/pi/tg/led.py')
    send_msg (msg.from.print_name, 'LED sudah dinyalakan boss!', ok_cb, false)
  end
  if (msg.text=='off') then
    os.execute('python /home/pi/tg/led_off.py')
    send_msg (msg.from.print_name, 'LED sudah dimatikan boss!', ok_cb, false)
  end
end

function on_our_id (id)
end
function on_secret_chat_created (peer)
end
function on_user_update (user)
end
function on_chat_update (user)
end
function on_get_difference_end ()
end
function on_binlog_replay_end ()
end
