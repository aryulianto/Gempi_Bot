function on_msg_receive (msg)
 if started == 0 then
    return
end
 if msg.out then
    return
end

 if (msg.text=='ping') then
    if (msg.to.id == 172776528) then
	send_msg (msg.from.print_name, 'pong', ok_cb, false)
    else
     	 send_msg (msg.to.print_name, 'pong', ok_cb, false)
 end
end

 if (msg.text=='bos') then
    if (msg.to.id == 172776528) then
	send_msg (msg.from.print_name, 'yes bos?', ok_cb, false)
    else
     	 send_msg (msg.to.print_name, 'yes bos?', ok_cb, false)
 end
end

 if (msg.text=='photo') then
    if (msg.to.id == 172776528) then
  	os.execute('/home/pi/camera/camera.sh')
  		send_photo (msg.from.print_name, '/home/pi/camera/image.jpg', ok_cb, false)
   else
	os.execute('/home/pi/camera/camera.sh')
  		send_photo (msg.to.print_name, '/home/pi/camera/image.jpg', ok_cb, false)
 end
end

 if (msg.text=='monitor') then
    if (msg.to.id == 172776528) then
  	os.execute('/bin/bash ./monitor.sh >> monitor.jgp')
  		send_document (msg.from.print_name, '/home/pi/tg/monitor.jgp', ok_cb, false)
   else
  	os.execute('/bin/bash ./monitor.sh >> monitor.jpg')
  		send_document (msg.to.print_name, '/home/pi/tg/monitor.jgp', ok_cb, false)
 end
end

 if (msg.text=='on') then
    if (msg.to.id == 172776528) then
         os.execute('python /home/pi/tg/led.py')
	 	send_msg (msg.from.print_name, 'LED sudah dinyalakan boss!', ok_cb, false)
    else
         os.execute('python /home/pi/tg/led.py')
	 	send_msg (msg.to.print_name, 'LED sudah dinyalakan boss!', ok_cb, false)
 end
end

 if (msg.text=='off') then
    if (msg.to.id == 172776528) then
	  os.execute('python /home/pi/tg/led_off.py')
      		send_msg (msg.from.print_name, 'LED sudah dimatikan boss!', ok_cb, false)
    else
  	os.execute('python /home/pi/tg/led_off.py')
      		send_msg (msg.to.print_name, 'LED sudah dimatikan boss!', ok_cb, false)
 end
end

-- 

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
