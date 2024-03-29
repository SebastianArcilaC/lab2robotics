Function main
Motor On
Power High
Accel 50, 50
AccelS 50
Speed 50
'SpeedS 30

Home

Do
	Go Origen :Z(835)
	Go Origen
	Go Origen :Z(835)
	Wait 0.5
	Go Ejex :Z(835)
	Go Ejex
	Go Ejex :Z(835)
	Wait 0.5
	Go Ejey :Z(835)
	Go Ejey
	Go Ejey :Z(835)
	Wait 0.5
	
	SpeedS 100
	Move Origen
	Wait 0.5
	Move Ejex
	Wait 0.5
	Move Ejey
	Wait 0.5
	
	If MemSw(512) Then
		Call paletizado_z
	EndIf
	
	If MemSw(513) Then
		Call paletizado_s
	EndIf
	
	If MemSw(514) Then
		Call paletizado_externo
	EndIf
Loop

Fend
Function paletizado_z
	#define estado_paletizado_z 11
	Integer i
	Pallet 1, Origen, Ejey, Ejex, 3, 3
	On estado_paletizado_z
	For i = 1 To 9
		Go Pallet(1, i) :Z(835)
		Go Pallet(1, i)
		Go Pallet(1, i) :Z(835)
	Next
	Off estado_paletizado_z
Fend
Function paletizado_s
	#define estado_paletizado_s 12
	Integer i
	Pallet 1, Origen, Ejey, Ejex, 3, 3
	On estado_paletizado_s
	For i = 1 To 3
		Go Pallet(1, i) :Z(835)
		Go Pallet(1, i)
		Go Pallet(1, i) :Z(835)
	Next
	For i = 6 To 4 Step -1
		Go Pallet(1, i) :Z(835)
		Go Pallet(1, i)
		Go Pallet(1, i) :Z(835)
	Next
	For i = 7 To 9
		Go Pallet(1, i) :Z(835)
		Go Pallet(1, i)
		Go Pallet(1, i) :Z(835)
	Next
	Off estado_paletizado_s
Fend
Function paletizado_externo
	#define estado_paletizado_externo 12
	Integer i
	Integer j
	Pallet Outside, 2, Origen, Ejey, Ejex, 3, 3
	On estado_paletizado_externo
	For i = 1 To 4
		For j = 1 To 4
			Go Pallet(2, i, j) :Z(835)
			Go Pallet(2, i, j)
			Go Pallet(2, i, j) :Z(835)
		Next
		
	Next
	Off estado_paletizado_externo
Fend
