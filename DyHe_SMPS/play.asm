		move.l	d7,Driver68K+$1FF4	; set music pointer
		move.b	#$81,Drv68Kmem+9.w	; play music id $81
		rts