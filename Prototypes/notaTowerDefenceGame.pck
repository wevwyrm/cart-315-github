GDPC                                                                                      &   \   res://.godot/exported/133200997/export-13f3cd8441d130b219165d85caf6b8ae-prototype_path.scn                �6۬^2S��

    P   res://.godot/exported/133200997/export-2277b8745ca24d11ebfdccde03e9d375-evil.scn`	      �      �B�me�S��=���bfb    T   res://.godot/exported/133200997/export-290e3af7919f5a3fabbdf12b7a731962-tower.scn   @4      �      �^�0�t'�X�ԟ    X   res://.godot/exported/133200997/export-2ae2eca00b78e4ff5805a301c3faeb3b-BaseEnemy.scn   �      �      �|z�����7a��mg�    \   res://.godot/exported/133200997/export-56843273a12abb07ac6f4a0b27bd3af7-userInterface.scn   @&      �      Ɖ
���jf�^�a�    T   res://.godot/exported/133200997/export-5d47dfb61193d27fe2eacb98ceaed458-gameOver.scn *      �      ��mC� ��ٹ��b>    \   res://.godot/exported/133200997/export-72c4eadce7f4e03d15c2cdd61a982b69-level_prototype.scn @            �_]&�ɣo�&y�    X   res://.godot/exported/133200997/export-c9044343bdd5f639c97d99046dc5f02c-baseEnemy.scn   �      �      ŋ>O$����z��U��P    ,   res://.godot/global_script_class_cache.cfg  �t            ��Р�8���8~$}P�    H   res://.godot/imported/ennemy.png-eaeaf2a3515a646940864cedc8617351.ctex  0:      �6     ę���8����6m�^�    D   res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex�r     �      �̛�*$q�*�́     D   res://.godot/imported/tile.png-b6edd167b3cc7ec58612b18f9a6dce92.ctexP�     �      Q:};k7��G��    H   res://.godot/imported/tower.png-6d542b8347d8353639a26fbe0e398a9d.ctex   �     B�      E+��5�=Q#��H�       res://.godot/uid_cache.bin  �x     �      �=������q�d       res://CounterLabel.gd   �8      E      �V�{[[����پ       res://ennemy.png.import 0q     �       �M
"�Ϫ��Ե���^w       res://evil.gd    r     �       `s�S��3���Q��       res://exile/BaseEnemy.gd        �      mM��y]C_��[�7�(        res://exile/BaseEnemy.tscn.remap0q     f       �3�B��<%�r����       res://exile/Counter.gd  �      V       �� ��{x�ٙ�
o��       res://exile/eSpawner.gd       B      �\�ֽ0��6$E4݅�<       res://exile/evil.tscn.remap �q     a       ��M1
�A�[q�*ml       res://exile/path2DSpawner.gd@      �      Qe�"�Tğ��O����    (   res://exile/prototype_path.tscn.remap   r     k       �a6k��cX������       res://icon.svg  �t     �      C��=U���^Qu��U3       res://icon.svg.import   �     �       >���3g�0k3��(�       res://levels/BaseEnemy.gd          x      R��;?}�	���jM�       res://levels/PathSpawner.gd P$      �      �#�5�.K��Nm���    $   res://levels/baseEnemy.tscn.remap   �r     f       ���^��E�ޛ��    (   res://levels/level_prototype.tscn.remap �r     l       �q `��%�	��    (   res://levels/userInterface.tscn.remap   `s     j       hb�ܩ���:'_k��       res://project.binary@z     �      `�ƕ�M���y�t�^    (   res://singleScreens/gameOver.tscn.remap �s     e       ��]�1����a��h��       res://singletons/Global.gd   -      �      �#�`���!1��`"�       res://tile.png.import   @�     �       ek%�GMuFcuP����       res://tower.png.import  `p     �       �Sv�P{���N�ݾ�H       res://tower/tower.gd /      7      �Dz`��f~7�т}@       res://tower/tower.tscn.remap@t     b       æ�D4� �G��k=7�                #Tutorials for this section :pray:
#how to use path2d: https://www.youtube.com/watch?v=tHrT4KoDZ_Y
#tower defence pathfinding => https://www.youtube.com/watch?v=O9l1FcXmxv0
#parent child relationship = https://kidscancode.org/godot_recipes/4.x/basics/node_communication/
# EVEN BETTER TUTORIAL  = https://www.youtube.com/watch?v=O9l1FcXmxv0

extends Node2D

# : meants its a typed variable!
# https://godottutorials.com/courses/introduction-to-gdscript/godot-tutorials-gdscript-1-1/
#@onready var path_follow : PathFollow2D = $Path2D/BaseEnemy 
@export var speed = 500


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#MOVES ENNEMY FORWARD
	#since its gonna be instanced elsewhere, this makes sure it calls the path
	set_progress(get_progress() + speed*delta) 
	
	#path_follow.progress += speed * delta
	
	#KILL UNIT IF IT GETS TO THE END
	if get_parent().get_progress_ratio() == 1:
		queue_free()
	
        RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    size    script    custom_solver_bias 	   _bundled        #   local://PlaceholderTexture2D_c4gj6 Z         local://RectangleShape2D_crw8x          local://PackedScene_2xpm0 �         PlaceholderTexture2D             RectangleShape2D       
     �B  �B         PackedScene          	         names "      
   BaseEnemy    PathFollow2D 	   Sprite2D    scale    texture    CharacterBody2D    CollisionShape2D    shape    	   variants       
     �B  �B                         node_count             nodes     "   ��������       ����                      ����                                  ����                     ����                   conn_count              conns               node_paths              editable_instances              version             RSRC            extends Node

#Counter 
##aka countdown or movement stuff or anything at all :)






          extends Node

#var enemy = preload("res://enemies/evil.tscn")
#var enemy = preload("res://levels/evil.tscn")
##var gay = false

#func spawn_enemies():
	#var new_enemy = enemy.instantiate()
	#get_node("level_prototype/Path").add_child(new_enemy)


#func _process(delta):
	#if gay == false:
		#gay = true
		#spawn_enemies()
              RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    size    script    custom_solver_bias 	   _bundled        #   local://PlaceholderTexture2D_36reo Z         local://RectangleShape2D_0yalq          local://PackedScene_qymjd �         PlaceholderTexture2D             RectangleShape2D       
     �B  �B         PackedScene          	         names "         Evil    PathFollow2D    CharacterBody2D 	   Sprite2D    scale    texture    CollisionShape2D    shape    	   variants       
     �B  �B                         node_count             nodes     "   ��������       ����                      ����                     ����                                 ����                   conn_count              conns               node_paths              editable_instances              version             RSRC extends Path2D

#@onready var basic_enemy = get_node("BaseEnemy")
var basic_enemy = preload("res://enemies/BaseEnemy.tscn")

var teehee = false

func _onready():
	pass
	#basic_ennemy = get_node("res://enemies/baseEnemy.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if teehee == false:
		teehee = true		
		var tempEnemy = basic_enemy.instantiate()
		add_child(tempEnemy)
               RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    bake_interval    _data    point_count    script 	   _bundled       PackedScene    res://exile/BaseEnemy.tscn 3�Z'>�}      local://Curve2D_o8u1n e         local://PackedScene_ivxs1 T         Curve2D                   points %                        @C  C                  D   C                  D  �C                  @C  �C                  @C  �C                  PD ��C                  PD ��C                  PackedScene          	         names "         Path2D    curve 
   BaseEnemy 	   position 	   rotation    	   variants                           
     @C  C   ��*�      node_count             nodes        ��������        ����                      ���                               conn_count              conns               node_paths              editable_instances              version             RSRC#physics body intro: 
#https://docs.godotengine.org/en/stable/tutorials/physics/physics_introduction.html
extends PathFollow2D

#ENEMY STATS
#speed + path follow
var runSpeed = 64 #64 to match tile size
var newProgress

var count_move = 2
var temp_move = 0

#health 
var count_health = 3

#signal connecting from player tower + global
@onready var tower = preload("res://tower/tower.tscn")
func _ready():
	# Signal Logic? 
	# connects a counter check signal from Global 
	# docs = https://docs.godotengine.org/en/stable/classes/class_signal.html
	#.connect ("name of signal in global", name of function in this script.bind())
	# bind() = makes sure it specifically connects the function in HERE with it
	Global.connect("counterChange", _on_Global_counterChange.bind())
	tower.connect("towerTouched", _on_tower_touched.bind())

func _on_tower_touched():
	print("teehee")

#catches counterUp signal
func _on_Global_counterChange():
	#MOVES ENEMY FORWARD per times moved
	temp_move += 1
	if (temp_move == count_move):
		temp_move = 0
		newProgress = get_progress() + runSpeed # * delta (for timebased movement)
		set_progress(newProgress) #progress is used in godot4.2 instead of offset
	
	#DELETES ENEMY ONCE IT GETS TO THE END
	if (loop == false && get_progress_ratio() == 1):
		Global.counter -= count_health
		queue_free()
	
	#DELETE ENEMY IF PLAYER KILLS IT
	if (count_health == 0):
		queue_free()
        RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://levels/BaseEnemy.gd ��������
   Texture2D    res://ennemy.png �ׯu|N      local://RectangleShape2D_63c7r �         local://PackedScene_64ugx �         RectangleShape2D       
     �B  �B         PackedScene          	         names "      
   baseEnemy    rotates    cubic_interp    loop    script    PathFollow2D    CharacterBody2D    collision_layer 	   Sprite2D 	   position    scale    texture    CollisionShape2D    shape    	   variants                              
     ��  @�
   
�#>
�#>                         node_count             nodes     .   ��������       ����                                                ����                          ����   	      
                             ����                   conn_count              conns               node_paths              editable_instances              version             RSRC          RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    bake_interval    _data    point_count    script 	   _bundled    
   Texture2D    res://tile.png Ğ�-���K   PackedScene    res://tower/tower.tscn �\�?C   PackedScene    res://levels/baseEnemy.tscn 	M˙}�Y   Script    res://levels/PathSpawner.gd ��������   PackedScene     res://levels/userInterface.tscn RVϜ:-SS      local://Curve2D_8hpmp 1         local://PackedScene_gn33i �         Curve2D                   points %                      �{B   C                7�gD   C                  PackedScene          	         names "         level Prototype    Node2D 
   ColorRect    offset_right    offset_bottom 
   Sprite2D2 	   position 	   rotation    scale    texture 	   Sprite2D    Tower    CharacterFollow2D    Path2D    curve    script    userInterface    _on_tower_move 
   towerMove    	   variants            �D     0D
      B  �B   �ɿ
   ���>���>          
     `D  �B   ��?         
     D  �C         
     �B  �C
   "���  ��
   ��v?  �?                                  node_count             nodes     X   ��������       ����                      ����                           
      ����                     	                 
   
   ����                     	                  ���            	               ���   
                              ����                                       ���                    conn_count             conns                                     node_paths              editable_instances              version             RSRC               extends Path2D
# https://www.youtube.com/watch?v=9ZWM1CDNPm8&t

# spawns baseEnemy by preloading it
# base enemy is a PathFollow2D
@onready var enemy = preload("res://levels/baseEnemy.tscn")

#array of all enemies to spawn in a level
var level_P_Wave = [1,5,9,14,20,23]


func summonEnemy():
	var newEnemy = enemy.instantiate()
	add_child(newEnemy)

#catches the towerMove() signal
func _on_tower_move():
	if (level_P_Wave.has(Global.counter)): #global variable mentioned
		summonEnemy()
        RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script       Script    res://CounterLabel.gd ��������      local://PackedScene_dyypb          PackedScene          	         names "         userInterface    layout_mode    anchors_preset    anchor_right    anchor_bottom    grow_horizontal    grow_vertical    Control    CounterLabel    offset_right    offset_bottom    script    Label    	   variants                        �?                  BC     �B                node_count             nodes     "   ��������       ����                                                          ����         	      
                      conn_count              conns               node_paths              editable_instances              version             RSRC RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name 	   _bundled    script           local://PackedScene_va44h �          PackedScene          	         names "      	   GameOver    Node2D    Label    offset_left    offset_top    offset_right    offset_bottom    text    	   variants             D     �C    @D    ��C      game over lol       node_count             nodes        ��������       ����                      ����                                            conn_count              conns               node_paths              editable_instances              version             RSRC          extends Node
# global counter code goes here :)))
# Access example: via $/root/GlobalSettings

#GLOBAL VARIABLES 
var tile_size = 64

## Counter System
#the begining of a beauuuutiful counter system :)
var counter = 30
var prev_counter = counter
signal counterChange


func _process(_delta):
	#checks if counter was added to
	if (prev_counter != counter):
		counterChange.emit()
		prev_counter = counter

	#Game Over
	if (counter == -1):
		get_tree().change_scene_to_file("res://singleScreens/gameOver.tscn")
   extends Node2D
# tutorial?? https://kidscancode.org/godot_recipes/4.x/2d/grid_movement/index.html

#Gets tilesize in Global (a singleton)
@onready var tile_size = Global.tile_size
@onready var ray = $RayCast2D

#PLAYER INPUTS
#vector.direction is a preestablished vector pos! 
#thx godot docs https://docs.godotengine.org/en/stable/classes/class_vector2.html
var inputs = {"Right": Vector2.RIGHT,
			"Left": Vector2.LEFT,
			"Up": Vector2.UP,
			"Down": Vector2.DOWN} 
signal towerMove
signal towerTouched

#MOVE FUNCTIONS
#sets these things the every time "tower" is initialised/called on 
func _ready():
	#centers player sprite on tile
	position = position.snapped(Vector2.ONE * tile_size)
	position += Vector2.ONE * tile_size/2

func _unhandled_input(event):
	for direction in inputs.keys():
		if event.is_action_pressed(direction):
			movePlayer(direction)
			Global.counter -= 1
			print(Global.counter)
			#signals that we moved :)
			towerMove.emit()

func movePlayer(direction):
	#position += inputs[direction] * tile_size
	
	ray.target_position = inputs[direction] * tile_size
	ray.force_raycast_update() #forces to check this frame instead of waitin for the next
	
	if ray.is_colliding(): #if colliding with enemy
		towerTouched.emit()
	elif !ray.is_colliding(): #move if no enemy
		position += inputs[direction] * tile_size
         RSRC                    PackedScene            ��������                                                  resource_local_to_scene    resource_name    custom_solver_bias    size    script 	   _bundled       Script    res://tower/tower.gd ��������
   Texture2D    res://tower.png ��aW��)      local://RectangleShape2D_2mbu3 �         local://PackedScene_m3cd5 �         RectangleShape2D       
     �B  �B         PackedScene          	         names "         Tower    collision_mask    script    CharacterBody2D 	   Sprite2D 	   position    scale    texture    CollisionShape2D    shape 
   RayCast2D    target_position    hit_from_inside    	   variants                       
       ���5
   ���=���=                   
         �B            node_count             nodes     .   ��������       ����                                  ����                                       ����   	                  
   
   ����                                conn_count              conns               node_paths              editable_instances              version             RSRC          extends Label

var count = Global.counter

func _ready():
	Global.connect("counterChange", _on_Global_counterChange.bind())
	text = "Counter: " + str(count)

#text = "Counter: %s" % score #teehee %s means string, this aint like C :p


func _on_Global_counterChange():
	count = Global.counter
	text = "Counter: " + str(count)
           GST2            ����                        �6 RIFF�6 WEBPVP8L�6 /���8l�F� ��:�7<�b�����貑��%�P���V@��@zbfZp�-�S�%n�j�� �U�E)k�ޚ)m!�h������0@ ��J�Y7F�M�s
H��l�ľ����^��۶�6�p�T���G��!�`�$�N �H�[)���g�&�	�[h>	�#IR$���-/�/�D���?-�Y�m��&㦥�A�o8Yt�6iTN^�Ǐ��B�&�vy�m����I�!����bɔ%ӓ״%�H	!D��a&�Y��'�;�C����ô��c2Y�B������d��Q~r|�M�M�KO�B#�l;*����Ǫ��jH���+ �
��O2Q�qP������oF�� ؿ�����(r�sܿ���I�N��l�*��"Ru=iU�='���J�.��H�*o�B %��@�͝�h�2�(H[#BTU���"vh W��ɖ��q3�����nӖ�@�_�F�I�յ�A��} "&���_�5���!_���@�7����&��$a�D���Qc�.��t�6j� 4���8M��I<vM�<W���7��,i;��y��m:�:�>��mi�ܶ���f*�t�fs�����=���Yb�tw�arP��e۶�F���J���^0C'����.����\eGH���۶%G�$ٚD̢�S$��)���0�*7�f�"Dtkm[$9�����13Z,K�P
C���d2g�,�2�BS��$In�� �	�s8�� g����=��_Pf$KN�l����4��0�\�̊��a=W0�Y�m0fn��N�lK�����Qd�,ə���k۞����������9���%u�g���[yf+��xo�S�H�
���dg��K�}��ܜ�}R$I􊨚�{PBeNu5Þ�����w�{d�?������5]Օ��f"���?���w��~���c�L03q�4M��Ǩy�����6/����T����ؿ����(�V�Js�/�<[۞H��m�}KNA	�]�����0��xw��{��]��Y���&���H7����z�[�$K�$�B������u��pcߒ$Y�$�2�G�����z�Ke��wk�ֶٶm�I�,���s~M�����r��$�8v��l�4�@N�1*���ֶ��,��/���+����f.uV�Ĭ��9c�ff�EY����k����**G��m�ܶ���U*��ʪ�#HGd@2vO� �}�A�%E"QU���$Y�%I�������&����0333�d���y�lX�÷�m�Y�uY@rn�v�嘇�g������̙��!=��!$��%3I� ���(�V���w�W@|�$m|�m��6���+I��<̳����e��iN�'fY�T��5�U�䌮k�e۶jI�m�1nP5g����!�"	,�&"�^4<�$I�$I ���c9�����|wWB ʶ�-o��~�/�)�<n��g��^Mq�13sk�l���� H�ܶ���!pE���H��H��,R��}��wζ�de&�V�@�1l�@���?qk	n��$���]������HR$9��w`��Df��in�8���t_�k�@�<������j�������j�������j�������j��U��E���b�:~�Ɨ����� ����O89<��p��������[go����S��~����@� �����O����;�PAdǷo�d��Φo��M�)�W��I�G�a8�a
��C�� ��=�~j@��K������9_�i��k�U��kt������yLC����Ρdqw����0|~�w��� @<d����t>O��n��i�'�>�<�O����� �X�= ç;?@�����= �.���e����	��2ȅJԤ���W�|dQ��0�bqw��(�b��=a�i  ��?������>vyW�>�*y Ke��x�ċ�>��zxqw���=Dl+P���O��W�凐�%��T�sV�Ț��\��!"�}�γ�_p�<��6g��6��)�$�`����i���U|�R�����83�ø������C�wó~,��-0�b�~�@�����}��K/��m�q˧615ej?�I�<�g���P&�����u�Wӿ�[���1 �C�ӳ�|�{�P�A&Mn�����#2�����$t�X#�|&P����}z���73*�٪Ԓ���1c����A���Z���NC/��u��P� ?�c�{ $(�1j�\��6C��>x֬��¸?���!�~s~����>E @Ao�$��=d�.%���|ʌ|0�FPD="�;w������pO�	 ha3,�D�������i��T^��?�=Q�	�nί#�;O?n��{� �Шu]���J	�4�(�Q�g�Z��_�7��S�q��	Bz���ޖ=��	�Z�̎c���F&�PC�A��]hr� �i5��tܝ>�B/�]3n#�D=��-���y����v�ړ�Ie��jE_���6w'�IM>޹���v]�LQF=��'Oy��+���Kkd#�9*��������4v/�A=����q{Z�m�a���������a:����9㛦(A;c�D��+��	�&��[�㢟p����|����W!  N��r�'iJ�����T�Pہ���o��Aˈ�-�(=�
]^���W=	u�f*3�mw���Nwl�r���b����)͌�`�Q���@kQcN��<��q6<��њ�Ѕ� ���Uzy���L�B���m0�X�@t�I>!���=}���j��Vڋ��]���<��<^sFPT~���{��qI4�XZ_ �$|O�q>)���.`�<�+���c��yv�1&��X�9���:A�͹��VWĦDL7/�	�$�����F��&�� �G�Y���s;_�I� n*�.!z�ځ���t��CT�R�'Nj��}�AZP�M=dM�^习�����a��
�Ƣǯ�^�;�u"؂ζ�$hUK��m������Ґ��7�u�r�>�?���`ꊝ^����N6�U!�ْh�$_��H�*�G�tO�/��p�a�d�W$�_�����Ë���Ёlc��Uz9:�]2$�:���[C6R�g#t�<�>���Q��4�����K>�kE��x �[��r$��`N�P�f�`DP�:bo�i�,-�k�$<S}M����y�ψ����Z�����,A�b��'��-�@  L&�-RM-|���l������Y�C�h�j~���\[~s��,l�~Ŏ�-Ɨ�9���K(�R��G�HM/ ���	��j����#t|��G��$�m0�|c��A���a��+  @X�!z���bߔ�K�iI'�p:�Q�l��D�Y�'�̯=>��`!� �=�8���t�UL�F�D����֌	��Ӥ�	H@����!��k��OL���9�\�� ��lvd�dE�jU��H@�u*=���J�.�34E��4�cY���^?�[���0��' ���� ��88=)_ ��\�dې�V�֭tr
�c��@���}��mQ_�Og֧a'���6ˈ�o���[�4ݎ1HRZPo&�i�S�l���"��&����ߊ\�jg|&����=�PT�Mߔ��:�Eؼ�dP����5�:j�5|��dhLC��<���_ɝ>����7�v/LT-��g>��a���k����H�Y'��@[�=^ �*}:�gi��jM8�j���W}n����~�&�f>���1�mݫ�KP�d;�RZ�� �{>����C��͉ *�Δ[�d<F��&�w7a~z�Ӄ��b���ɳ�W��6�0�	�U"��7�@���0{���O��i˄�Jf�S�n���秇PqW��x�]�e�����(u�6��8�]Z}�����6 �#�L�,�--6����Nw���N�Y3�\c 7i�8�^�s��5(�2A%��I�)>�>�gקP���YV�Y_�  �����]�Hu@BP�`�n5�C�	�L*S(��e���j��.l<+֋C5�_��i9�w��vE���R�}��=����A�Q�H�뱤�x��]��z��Լ���������Q���l$`�5:SDj�DTBe.R�[�n�cw�*��&w����R�ߥ���}�΂|C  [D{�I�C*��Q͌��1�J�JX/����lr�h�8H��6  ����$M��@�B�S��LZkQT�u��KZ/����s>�������o:@�\�i�p;f�҈lT�c�h�@�J�h$�e�fBfVe�H�q��>L�g��9�F��  ��ᙤW��k��jH�(Z�x�S�d;�ږD���ܚ�=��x���9�F�N������u DH��� l֫�"j8 R�� *���EFQ��l5:�F��6��,L����L26}wS���$8p�p���ICiIDͨd��+���0^� *�2�3�i��=�5I�j��]�w�<ܬ���BX����"��)�)3����C�̜��]�� ��3YѠZd�O5�-�
�솰�5J����!��9  �b��m]M(5�°`�®/TjPAdDg�.:��CЏ�=��S�1@�d��r�!���a�J��B��6��MD]�����Cf� �`���vh!��G�7��@��pōV��%A6A�V	H�`�"8L��_�bf&�]Ś��b�Yh�`~��^��%����.�ɽu(fu= @L���rb6�ԁ6z��:��+���� mk*��`̻�[�l6y��XD4]�;s�m���`�Ѳ#����2:@84;(Z�ݑ�(j�1��"�f@��
��I��=�2����l����1tV��W��]p1�o�$ٵQ-A� @�m8$��  �Rwi�"�E�M��3�@1(6!,�@Z�8D�+ڦ$�0�}�y��!����!YleV������l���D |�C��tn�@��g��(��b�\�"30&!�$�N����uq�����!��x�7v~XWH��.�b���Wq�w��ѧ������l  `�+a��u�]�A�V��
F�lC�5���M ��;zO~
�����O�|�y�ϛ�Y�'�Es���0� ����"�Xp;*���kh�)ڈk���D�E:�k���%�<�a��ͽ�Ϟl�ƀ�Y٭g������J���7�ٰ�U��4�`/(� ��I��Kk3�
�3HG�y��!�ӛ��g��=�H�D�
@)@@@@� P�b��5�9�g8Yg���o?�p�٠1a?Ͷ��z��N ��g ^i] �'����Eod���Y�77>�Sp���o�}��h�/^�L����!i	"pA
C>d+д%�� ���%���^�}	?��}�������7��=�+ 40�F�@��P�@����P��&������xt-oO @�chȣ�#��4�(b%+�Ж�#�
u_�ph��zq���~:h�?�ľU��+��~ �8OîM�vg�O��k�t�ao�����ʌ�5������[�#/����*:o\Zh��:��B��~0��Ѫ�_Z�^������I����_SA+����"�`I�M���6F�3Bq�ƌ��e?�q��v �#B�;ua)<z�+�؃�CΠzP @� �밊ZAޑ�e�p%>W|�kٻ��u��?��7����Ͽ�݄�&�f���Ϸ��˳���H�F�+�X� Q}�C��3 ��=��z�Sv�u��mp-�j�>h�U�n`W�9�:��n�Oi��v�����(�qdA�7}�[p	����7 �� ��xW{�,ޣ��c"��aa&�*"�ET 4�� 7�h�
��5r-z�vn�[p�;z����Uϟ#����c{"�<��ݔL��K�Wϒ�i����@T�
Y��=�q��<cv�uM��mt-����s %nve�8K�6zAm��W�؇U��]FʾC��<� �F�� !��-������ @zW{[����Y��yT��9I�R�,YX�G�m�y;ڶl�s`ߝ�ٳ�co��C���ݑf�:���ϛ�$����$@Kڥ�#Z�' B]Ivu"r:
ۑ���0rd&�'5�/!:� �� ��]5��{ɓ��jDN�c�O$��@��[����������8 @���<l����edy��X
 p  \B, �h�4�*��-p��޼kh��?if�����[bI$�� M����tI%�Aȉ�	JT���Zd�d �r�`C3��B=�k�"MD��ҁ��:�|@�$�� 3������2���H ��f�\JM�������~��O���@E�� M�"#���VU�i���f<"P�@�)]���5��k@Zvwan�W���Md|�,��R �`%���
n��E7�N�D O�!����B�S�bKhp!5����&� �9��� �Ӳ����c2~�pd0Z����C�r4�j���܄ܰ����Y�5�I���>A0��߁!�:!� <�$�$��̇�J/�΀��̣R�>�e�l�ه�49��6���H��V5p������e;��l!��� ׍�� �}��E����^���� �4>��� ��w���P�Պ=�f������m�F�=������4��
nQ6�ol7n�V��G�2t�܇:�u�����^��%C6t���ʹ4>i|����{�������A�/�� 5,������@�M�j����Ͽ�{�^|-Z��.Ϊ>�ƾPh6��/�ʛ��&u��UM�C{I7�e\��O�7�-* ��s�Ф������_{���s@  �x��������S���-���`�8��o;��'�Q\E�
 l  ��zz��?%�9v�S/�#{����y����4��F*�@EM! �{��w& �T�|տ��L��-z����srHJƗ�C��GeC��ϗ���QI����mn������B�w��*]=�<��/�i�r�:N�o5w䋫��
m�$��K+��PT��իȤE�{ f:�@�0ɢ���w��ƥrY��.������"����r�^�c@�&G�� ���n؁���_!U���}���G[�:�#���  �Q<�Ph���T�_MW(��eXj�n92-VH��D&���4�D� ���R�3�MbL��3����g� ����2ƀ ��8/��~I��t<(j֔���j��C8���=��l�[
�Z��iNʻe��d�	
-G�,!���"�&2U&nV�,��+�$俴��5"�\�9����u�!� �����:�Q��8g�5s�wU���= 4t���O^|��~I�j����C�*���]6_w��%�Q"8\|m.Vg��"LD
�="��p�`ǵ�c���=��ޖC�����&B���x��nXD]U��ؘ�����hǐ��V���Zm���,"u��ك�T�����bn���i�V�B����m9}u���wg @�N^c�e;�j��v���N�n.���6\�n*e�d�����JI#&���h_��.�T��:~=Q�"Ԑm��5=9���FY��H��*v���+�#*7DM4��7j�A5Vէ��i�X��+`R��9��F��=��e��\7g`*HJ�������@^Ĭ"�~���Ok���"TȲ���jx����z�
t"�Ŵ�/�7�=D}�W�ǲ�ϙ�����/��������k Y��}�P�x|=�/��0�n�©��+`T��X ݗ�٠���m{�bP���v�j�/��$����ӝ�����C�U���e֏� 0�����>�3������S"T�&�>�	�OR_-z�ϖ��o��XqF��Ǘ�����e�w���(c��/zn_�2�1�WTY�`��/�o<z*9��"2��^��*��s�O�V�>��ǯ��?����5�@f��^�T��:��Q���8- ��/�I���y����W`t+�G�_3~�����p��F�&��YQ�
�!�*���7�(�Е�8)�[t��|
�~I�����d^?����1��]�N�:��1P�.�N� ���]��2/��8h�/NL��!�=I�����KQ�mPA:�M��75  �n�:�gտm;��u����O-�b�� �EO��v�g��ux���Jz��b�nAF��k{^�W�WCc�����Ec�/�0ͩ) ���?�a������&��?���,�B^Zo�^�݃�/�89v @�:����#_�^5��uqUȎT�-̕��d�����ǯ����O�$dg�W ������Ɓˎ߅  �(`�X��R�Ym{k�ʓ�SWĕ��� �@�}@�vH������,�ӹ�8�*�]n��'O/C� ��>�T�o�|�������O�8A h�G6��@���5g�_s���C�2��r0yX��k�f���V����v۫"څB;Z���� �a0����I<�8�J瓇��%������l' ��[��.�m:��mVr�j�uPM�f �����>#p(�>�a2TL�Bu�3L�6fm�4�ԥ��j2X���Q[��d���j�h�J���>������%,�k�[��T��~��ן��x��b��r�^)7p]��Q��O�6Yi.�U�׌汍6 G��(��v-LEm*¬�Y[�8''��p<nB��x�����Fd��p3q�
t��6�T�v���qؚ��{��h�S���ݽp< 6�2�ݰ)h��L�+ :y�m$F
X_!P�����O7~:�pN����V�����6�N?���� ;� �UM��VR��J�
QJ$��W�M�b��<��',���H��lr뷍����j����j׫(|�R�N�h�*�yHnB���{���/N\��߄<�������5�Z�J�������R���RE���Ѫ�hU����Q;�<�����o��)�� ��U��:�T�R�N�:|5wn4��DW��	�.�}��}H�y+����M8rҺ^�8��o�Z-�uE�f�m�] �n]y���)md����:?���!j�<8`m�w���H�.��4y�֚�&���;l/ӂ+T�SO!�V��G_r|y��;���㰵���e~j�?�����M..Vs�Z
���@�"Q��Dl�Mw��ȃGL�	H���W��O �x�}3�� �פ���3�f-������y��%M���:A��J��,̗���x�!����Z�~}Q� �\�
�{��*��?\�����fڡ��c-}-�ix�~����o~q��  �e3��zڟ_U�/I�R����jM�b�*U������ZӬU���gO�`eo^�N�� X��v����H��z�*�U��նX���B�Lb(�.k\2Ջ�^�+���u��]�?��/��z�m�ζJ�b ;�7��S���+��9u��"�J?�G��`�W_P2������c|�'��������4�m/��!t�AO!�n�I��~��*]A����U�G����/냏/����o����C��g'���&��%Z�D �����0����2���l��1�@t�#�x����@��||`�ص��$�?�Ok뿐a^�x�u�mV� ��2��8	ӗ��Y���yn�0���C�]�$�  hV�e�2s���"�|-F��U~�E��f>�J��N��P2��<:\����du^����
?�c� 7�U_�r�m5*t��Og�t�y\���8���ַlh/�>�߸��������r5������y��ݲ�6
 �)��]�l����o���#���׫����߾z���{ ���]�����Q��~+���5[���M��Ў�2��;��ɑ�!$���kv��_�H{ �v��wႭ��5���ZL�����*[  T��.$Y��!���{���|��H���l����b,R�"�{���;���֤?rIŤ�]��=7��?o��_S�!�������o m8�w���.��z̼�q3WT�n�;tW]�EŻ��!���V��g��H�>��oe�4�>�g^����*f4Ō;x�N�����Ԫ�ᇳ�Ҷ+�)���%FN>�p0ʡs�)�ޝmXx/�����L T�.H���~w�w�pgy��+��ƫ�^��J��;M�n���H躀̲U�����af�E��
 �N?��_h8�spv{H���  �r(�tG�
J��)@7�� =�AzЃ>` %������|�{����,�h��Ͱ�:|����d�Xc�Vշ*�U�V�U1~|89s�.v�S��PA]�0��0�0�_�;*�lq�PL��v7;��v���`?쇃+�C������#vI]��xS3��\�/�����7�- �D�Lb�a�!� ^ċ���} \�Rp� @5�` 9�DG��>���<�f)��x8l:�0{I�X�yЕ�D�ʊZ�M%�BWn��$%Y��x�]�k����I�Xd�Tl�%M�d{ɏ���wImG!���P*��j�e���O�@I�`�\���<G��G��y�?���0[�5���#���|ͮ������ݼ��T�*+IVPB	���TF $��t&��� ���/|���
�_�+ȗ5�ex^��f>O�㢎�@S�U������v�� !t0B�ʄK�����/6��s�χt���F�_�6c�a�i�c =�wLg�W�PcM�Et�BE(4E$T����W�  ��[�(�A;I��%4�������'/VQ %&�?��� �0Х���.�4���0��d;�+N!w����2�d&:�2iD� Ã&��|���O�)Pb��x)��<�DVR���V��`X_�D��!����$rIt_#��q������;���/�<��'����s?�{� ��W_|��RX_G����E�7��2=b�h.~��1Wo�RS����@:�:�����&��A���z�{���s䏚��<}���(5�KV�:� 3�1G?�;��oB,��  �6I�{���Q��t�����OekS�J�YY��Y��/�E� ������Cv��x��_�B�������%*#�n1��tM��  yZ�aƏ�f���	�Pn`�Ǿ@��̊J����!�˰qpi��]ɺ��ϫqK���D���+�;�3H���*� �*���ٹ�!��~��
�:�֎����a��~��A6 �n%�@��¼�/Tٍ  � ����XV�q�b	��k~��O  "�v�Y���۰v�����pO{y˶W}Ż��|"7a�k�ZIP��l�k�"
��y�
V�A�� ��X�3 �=hA�ؘ^$�T���SQ�`L%���݄�
?�rb��򵗯�uX!2�p�@��O��#��k��f�&�[��G���m�)�
I�4	� Ռ$	&���F{�C+4�&�A�>UG�T��Q�D��,��w���]�*�}�5�K��"_��\�+t+DA
#4�z���
� N�Z�����;%B@utE?̶۪
p��{������� ���u�rO{�Tr��&_1h�F�����?J���4�`$����D�J�J���2m)�+�=����l{�Y>��M��-���Q�I1�Ы�$ذ;�7�X�R*K�(�]':� �afw=n�J�Ok<-�jI�:T尘�)�$[��'툂����r��F�ն�p�./�_��3 �m9,��#?&zk[>�����m���CW+�4:�æEŐt/�*���e�, �P�嬊� ���5��M�I�Qѩ�$Iڎ���w��vl����.��A�!���@������&Q7&��(i\��NaW2a'X�|/�V�� U	�9��u�������\|��.�:�<�h� � �b;2+~I��搩5%�{�ުa�i��F��(ҟ���U���M��Am�@3Zl���#�﷫��e�A��E�� �bP�����d�&#�MW*�<9Z��Y���v'�	��%��r�b; ��f���Sȓ�}b?dhK
u�HO�q���E�T%5a��5c�:� �CLy�hfP���av�����<������]������S�H�
���	�� YYA<Ĕ�z�\R�a6 |>�,;��^�����q�#�������� ���fE����'3B�������u�᭲���;?�Ρ�n^�{L��� �������G������"g @��EJ(�bu��a�iOaPI� �頎uP��2����ym�� ��c�n�����?(�Ӱy@cND��ţ����D��(���
Ȁ��6�}�H!>^��L���:ƿ�����|�����(�[�ے��ͫ��ť��*�h��G��1TMe��u�w�uo/7��F��o�� � ����mǌ}ҵ�8��q�{`��%�q�Z�o.��b�NT��(#%����l���%�P6<�h�� � �  /�����pu^��1N��)�!�l������b..����H�q�{5T�I�XN��kЂ��_���hl���A��B��%@i��{����G1�O�>3Ȳ-�����z����xNv�d;��*�ڎ���t৵�CM�%ݏ��[��f{�����9$���aXl��g���.����d��[�Q铚	��C�;���M�yܹ�7 ��4tV�f��_��Q:��u��X�w.^�"�؜�^���7V�yJ	�3.�.���|t������ �Ul��x��������_y\��d-Y�Fwd6�/��wj��l��yi:LR5��8�eЩ2p�ѫ������h��y.������]Y#�(�dZ*�0<�����i�n�lzؾ���* =�E���.����^�N��iV�[�����܅k����r�AI�Q���a[Z����/��Ω%[�4cغj��F���G�i�X���r�=5�[�z[Zh`�g�oH�_ ���S���2�V�q�Y�Bgo6��e������sހ{�n����c�/��e _o �������6�����Q]v��Q䣨�ʴȪ--	��ӗ����
�6*�$���E3+�9��nk�܅$�=;��z�3�@)W{�;�+p�S���;H��9Q�|k�MF���v�"uO-��
�;P���`^;��&�ܶ~��?N����؀�v���U�����g���8+�ii�3�xI�D缱�0a�ZO�S���ζ۬���pқ�6�K �8��Xgs�t��Q]v���{�>+�jY�֭��������B8�V]k� *@FG?�~�ӧ�ap�:�9�s �*h�z��:��ygl�b��|HRg鱄!C[TP���=�`O��L���m��VI B��2X��%\������YeF����*܄ע���nz���Y��I(��Bo����EH�"���AR�]A/\���(}��{h���]�ŏ*v��=5 ף2
6:3n�����z?���ᰤϨ�_��@[eTN��]����-YHT�Bv�=�A�:�ˮE�}*Q�W߁b��;˞�V���wqv�N� 	��o�brO�� ��YT���v�|+}�|2����RT�4��-A��Rv�̣���L�����K�8}�y�����bKFu
P��s��!�̧ j:E�<$������Ut�؝�^o���è3������^���J�+)N!äD[I�9�Q4/�_Jࠤ��ngo%�J :}���n��$5K�=�>�ϙ��)���BI*�x�;{�:zq
~�`�F��0ۖAq^
� �m>+�A� Z	D�� ��P%�2\��.g=x��@P���>�mtu鍔hՉI��G���
ބUhA�����uH*�~&�tP�@r,�Ÿv�K��+�tg��탑2���қӇ�FB�+7bhV����
�(W~NKQ�_���5P� qV�ɸNmg�8f{�UqL�L�`���v߯���ɛ�����*���vu_��x��K����MO:~�w ɱ `V�d\#�����a�e��|���eԸm��Bc4NÄ�:Z�'(ܘ�2_�o8D�����$�
���;��٦sW�y\�9�!�F�mi��&�7�`u��V�V����噃��*� S=��@2�@h ^
P��cO�m�O�����tη>a�pU�����	��sz��\���e�����_�� e���]��R ��!�}��u�Y�e�ȓpy ������U>�hu����'�L���������T��������oJ���h� ��sO���㺗�s�j9l�B�A�
���TYY/b���R�kpw|��8�g��O!�E^�-r&��Z-�Bno��jr���%���mV�Y%��<�#�OBg~��Q��
�^��{���H��d��׋{��^�f�΁X{����N�g����8�|��V��V47Zhs����*=i�2�ѡ��?��L�l�F��Zl!;^���A��j�xn�`��*��[σ���!�.`���Z�7�雿(Y{ �nA�gu���$�>�>�z��*m#��u�Z�j�F������_ngxw��t���L1ߓ5����S0C0��;? BM B5	��|�$H �M>Uu�ɽ3?y�{��g �n?+BV��s}ڦ�Ǿ��r��v��Q�-�܅S"hs���~� 9A.,�?���|w8�x?�ǫ9���t�kz�tX?��R�^����=mκ�u��T@9��KAQ
@Y�BTPB�
@5t��\����Ѓ�P@���hA>`p	7���FP�g��G�j�c�n�����C��V�����$�*'Fy��⳥��aZp���W?��c�d���Y��s:k�j�t�Ͳ�9��P)B����37 l~����=�� �0���1�%�$L���fan�� �=p� �= X��R�鐧0G �)�8�;V��r��u=�^��ݸw`��J�܁h� � N/�W�w�=*�, ��`�c�4����j�z�km'���ᶥ�Z@(�:U���&s�(Ye#�Gg���^��Hg-&����'��p����+X���=l�A�87{� @,���=���[\�C�x��r$�+S�{$m�f&���R0F�kɖ9KЮ��Q[FE�d�J��K���F��6#I����C���K�V�f	>cu��-]qC�W1�k{3K��܃���J����]�L} �>B9��m�H�Q�>k;��\Ʌ��N��?�i�J�zf�8���
w{�Q��vʘΟ����4B����նb�]�tT�	R*�!��9	$H!�� .�]�DL֖�>���1�gW!�-#vn[�GE�e��ڣP{&���L�I*Cf�""�%dR��D,"�HȨDI%'�MFRQ;�T$Zp"�d��*�V�*�da:
!WJQ	��ڄ5�
܆��m׷V#���`��  ��n�t�= q�3B�ͻQP�:y��R�ֳ�����D/I 6+��'�Gf-]����[�c���E�7���0��?�w�W/
#���R)+ƍ��PC弦�$H��F��z�4��>�ǈn����,[���L��oc���l{�,)qNڂ�]Dt�>�a�hV\e�A����t���C�̕VR�� !�% d� "@  *�$#�EF�� ���������T���|��C���+W�`��.�
�}�Y*ɼ�=7�"���޲�N�8l���ݞ��`��C��Ȝ$"T{�&�ѷ��C�h{�n�Jv�d,�?Z����H5�s�`l	��b�UV�Pg���F-U�<��=4/����o=�Y��YҒ][�uV�12��;�]���f	�-[e�&�YZC0ɆT�{ݰ�6a�i{_����l��&rU���u�nIo���D   ��DF����	
a���K��]���6�C��� �{r�n�G����m�q��ޞ�+�3���ߨQ��4�z Y�p�/C=�\���������V�c��g|���@M�{�g�*�| @PB�������%�c� ��{k���ɂ�c
o���L�Q�"��s�3��v>�0EQYBiU�*ԕ�,TԢ*�TV��.*K�U#k���l�:0�^�t췗>� ER�� R�]�;
�����7cgk�,x%�
^�l|��;��  lt�|޸�~�tn��3?�k���3j=٘T�v6ڋs�d+H�6H1 '1��6X�Q�[A��Q��W��%�Plwt���E��X=M�&ߏ�P@��Г%� L�tؙ�R�:�Z�����K��,�G�Ke�U�:�NTPZ]�Z�K]���P��(mG%ԨRe�P��A��P�PIj0\������.�LD����B�}S�޺So� �Ld�w������Uz�M�!��O�l�;��~/�$�!SSN�r\|vz[���c�-�z7��D#�Gȑ�Re��!/��A�|o�9�{�#/��/-���n�]�|-��Iv���S��G��|��%��5@�R*�_�6�#��C�`&��`���,;�R�b�o�F9����k��*m�$�FUD}w2*�Q�t����
U�,��2GEd����@���T �̟*�Jy���5C�Y��b������n~�7�������5`='�vn���4���.�9Xj���pT���0��,���~�HG��8Ȩ��+q}j>8���W:y6�AB�/���w�עy�Y/j����a�)�k�%T��}w�!��T�~EQ�kaV~��T�z8)�jM���
�Z�1k��j���|j��QY5�C�t�P�di:�DE(�LBR��(Q���X2�s���"�_G!�!��ymQ��_��q�/����g�s�"Ծj���P�i���F�}z��5tG�:��U�U�*Tz�̚�	�׮�k�����K	tJ��|���33�(��J*�:"�?S0�ǚ�V�Xr�]����NǕҮ��;���U�<��Gv�g�V������5階R�UB�̠�Ȅ���B���ԁT�M��t�w�w����*�E�J�/�?����Ĺe=��6�WE�e?�y���xH���^�O6�;�u�{9�ST0�V1F�6$1v#��x�������&���; Tnd���f�M�O �2� /o�����ʫ7HQg3���T�yf�#
8�㉀jyZ����Pݰ���]Q=�.�+�Au��P5�\#�� >���w���sĴ�����-��.oY%�_�N�p�
��!e����0���w����\�r����tr
í�[i��h���3��=�M�9�m�
������aC>0��Y%��]"D(���D��щ ��`�{�՜�af``	��Yv�2�����ḝY�cԁk]X;~tǮ�"��:�����A�4jQ]����Rl92G%dDEM������F�B"]ԖI�^]�T�Wf�7��ݼ~J����z���mn�-����&���G��0�{"�d�-��@����d��}loY�[&X��~���_�h?��0��  \�7q<?HPC3�;%�_212'b�c4�ɍ�u{�؎1�/�Q��vgW/o��� {iZ�jT��DTnDm�^#;n���)�Pd��Rt����!n�GP�O���  �PƦ�*RTqQ̽U��������)~�u���6��;_�W@4����00������@��]��8�RQ�	ۣ2��j C��q���Ľ����@q�>Me,DHv,��[� 9TЇ��<�b�WL�e�}MV"*�
_�kf�/Ѯ=!�F&"AN*�� 
z��(�(4Y"ȡ{��5��A#� @�|�."*I'�E\qQ�˥(  p�����x�U ��@I47`vzH�Lo�d}ٕ�xB�Ϡ�#�!k�����`K݁d�6�Ti������r�+��K��ﾫ4\$�Pc$�� 2����:챩%1w��S&�'�Re."�d{��(:��fF��]�舊�*h2��z>��� �����*(TyRuy����Q�F՟ �����/�o6����O�hn��� �����{y�nv���c~�9���^�Aӛ)!Q&��9Mj���Q����S�F&�-z����7�~��]ؐ�����.�a���V��b�Ү�}��_c��na��s� ��fh2 ��o�k���$ "�xuR��P��t�q`�f�v������� \޿K���v���~��ȧP��s���E���6/6�Yą$m�����Dt�Ƙ�l. ��A� %��U.Ǚs��R���s �U��Ӧ��*�EM��E��y�����#�W*"�7�"h�G���g �^�f��\�لf����TT�IQ�g�;��w��F;��J(����d��wul���<'�j��\�?�����8S��M�q'����1��zW�;{�ʯ蘲�@�M�zf,ۣu��j9b�}�r��1�F�*���!�����"��Dڤ��&z���m��,(��*��H��q�VT'��R�h{|ǩ&�Uu �� Z�{��j�_�fXv���x��{�[{������=�� o��;��қ��ˎ�4 %�$�,W��J�U�������C8~�(��tJPחA��l[������"g�h )�p�n����A8I������۰��$1t���\��`m�p�l��G櫜z���CyO��9��U'��~�P�J�R�fHF
*HZT�T �����d:I�� ���t�T�L�`���)�4�	���h�"�
���JW�"��P�D�� ,b�� �>�������x���8������܍����:ͤ씌2����߂��c�f���m�8�������:9�c.B���C��/(��I�?��BGU�֯)J����V�|��Fv�(��(�%�=h����1c�U'闹��Q�Ϣ�%��Ad|ܚ�.�+	�()�&B��a�P�L#R0�d O]K|Y��YQ�
�� ��M2  ć��/^%�� ���x����a�Sf壾�>�9U�9TX�$�)����ƕ������Vt�U���}���k��`��7�9 E���9̻8N�8rYT�Qc��%�EHS� ��u��B�IQ�c�:���S���l<� ΓT8Ѣ��TU;}��A���(��茧 �l�γ���/G��xT�{Qc4W�BZdo���Ɇߝ%A�R?!���X2H� �H� @tI�$���{��K�m ���%��%X�K{ny4GڀqZXe�6���
�T�>X�������:J���U;}����<LeIg<��7����]���~y� rU# -�\�ZI�?���IA�I�F��"�'}X�BiB��M*��H���A����	@�gNϮ��}���(��W$%�����N ���{q�c��$Kd 5E1�8Z����ۯ��/}@�<�Ş'��;`m�#���)djOLdD&V)� �D
z����f	�� iT�3��`���wg�̹�&�bx���qr	@�\V�1 J�x?��� H*���n6�0m�t�Ǽ��V ,�`�4��L 9���e(/�A�Y� f�_��Hiz�n=L��,���3{P}WK]����%}�v�An���*����J�AӍ���ǳ	��`�aء� = �>&lЈ0�kb�r�����o�q���oc�A�d���nEnҝ���J_��H����F�$!HHL�M0�rA5�f*�N0iAR�"� �_�1� �r��x��A�Ms��j�@�`YѦ����C0	ei�|�������C%=�. @�Y���YA��y8�Ã�x�`�=~�EFd�H���l�,�wJ�uB'�R��h%�$����K@�!�����_jx���/�  IbS��
�*��d�۪� ��$�a$�Gf�T�gV��<��@���ȧ`���K�߿O\�bQ�fȹ��l�W��+���A���U���������2�}�S � �
�u���似��Ӣ��`	��˱r֖z�ͨ��^"%Y! B���5�ZP	�D{�M�����&��� �V�V���~ B�pI�ea������~���Ą�[��$D+INt�\�� ��$: #�N��s�E��!F�iå�<_/-�p`Y���.G���K�蛷@�_g D�A�*�L/'�O�A���m�) ��:�w�`��Y�KO�`B�Uz�&�=d�[{8>	@��u��mW���P`�M	��я��� �J�J����'U.�H�7����`B�V�+>�7ܺ��|޿ �`\������x�����(=
�U���ҏ���f9=@�'�=�dY����x��|��K��i�	*��2�؍��m+ ��\���u�y�w%�]��Ed�@�t������v��8�U�0 r����0�/�9������/���TI��1G�U@�����S�����i�\D�A���Qmwe���y���i��ۦ+dB�1F�.
� �{9�B�{����u��'.���<)j��
��V`;KED8Ӎ3��=��C��o0��~y7�a�NRz9x��o^���\��O������f�i;\�Q�~��=�a *m2�QH���9����U�ş�Pmhg�Vc��Ͳ���{��/�[��s3;�Z�
�������]�Q��D��m~\���''/�i�x�$��^L��)��P!���������Y�xv� r ��r0y� x�.� s Q���:|ϴ���Ƕ�[͊�~�"m9"է�E��D&T92�D��Ef���}7Qg8�|O��	Ն�wc��,u�%����_�V�������K|�t�u9�*E���W����=�`34@7_��$��Vt @��a� ��)5>#5���U�<L�2�go�2���g*n����v,G�\��9��1�huʓ)����K�����u#��S9��%=T�+�ҌZ(Q9@��[o
�����-�a2hf�}2<^:���ng]������������p������Y�C�N��X{Tts������|�Ŗ���d$����t �S�*�f]8$�Q��)۞��U;�0�歇����D�  	����(��p��s68���5��߽������v�Na>�2�"ϥ�Y�^��fO���9A�	a9�I"kT��!�W΂Ӄ_j$<5$�WTz]#���tֹ�F��}�|���|x���h׸�ߜ_�69>l���ǃ*�G.	��O����対����|����M��&�*F����ײ,_�j~<�1�
}�66�正K{���� Td�؀���K  ߯Vs�x~*s��}���%��Yo�d�8�϶2��8tLo�b30k����Sb�1�~��)za %�mh4Ù��Z-J OM�T��D��͏���pr| ��קW��F8���v��e����p���ʌ�X-�����~��;�t2Bw$���P�J�D��ۮSj��Q�o[���U�����^=l�G������v0���  4�	��	��pVz��&��)�����Mo��dfͼ�]��/�f����c�$�>�ײh���Yz�jrR�zP4^��~�/LxjH��L��nd�K�%� {x��%������xҿ��৉�����3�Sy�
�PT�Q�mM���W8m�հ�ѠW����P3_�c�zV��t!m�����a�����M`����ʦ��-4 6a�a�­��3@�}сm�%.�z̢{�k��a�Z&���%�cY���vMn��������-6<5��<Ӧ!�}�xqZ*x������L'���
8�_5`�W���v���?�9��O�E���)2���h�[�϶ԭ I`�J�C�Q�"2 G����c݇_.:O�"t*6z؝�T�ߵ������������Ec8�K�S Z��WK��(�u��4¶Td��8<��:����O�a�*5٧c"��2��Pv5��k��=�`�����3 �� +3(�:'�ڗ"��[�-��l�J��az_N^��9�J`�J��
[."���7������1&&�a��%�/��� x���x'�梅mIٵ�� X�n �2l�)�'�^?"���>2�V6_�:-ntw��EE���QsB�ҕ�$��~����  �|��3B�D�E�}�>c�'�]ȹ�B(�1�������]G �U6M/��rH�t�ڥ���A�Ñ��@�'@��$=�^�'#������R�v�����y��e�=T�:f��_M���.�LK#!B�  �DI�q0���ය6`_����VW� �#䑽S�}.����1)��q�לSR�N�ū6y��ت�1B2�3:ʠ5����6N{����F�ꋅ��15�g�s�W�Z4/_G�#�WaOd�V6ӻ���l!n  
_1Fv��������W�@8����ɔ=��z8h�Sp��bRd���S:��f|N۵�L������)�&Ae�j�^��%���}����7��qُ�7G_�G�PI�sہ�ֻ���/��"GՄ�x;�/~��i1�Pi,2���b3P������@8 ��Bx���2�e�Ә'}�>�cG9l�H�2�q���}٪�(h���u8�5���PU�m�7)�S��/��ۏ�7Ko_�����V`��*�������zJ��d�n�|Z��v��i�?�m~$���&�f�	���w`}����/ �u��xe��K�Ϟ�.��3k�ϥ �E����0�k'��U�Q�7LKwP�v-BT{n=�mnb�������x oZ���R�<Gq=6��l���O\�'`odX�����eLKÚm%  Q�}lǧ��0�����/�G�G6:y�z�V�����f�}���� �	pe� �w��t����q�����PG��*j�Z�B�3���'/8��%[[S�Ch�	�J�2��mn�mn�e?����d3no�^�4�<L���؄��q�#���iկmn�i%���$�j�s���]a�楆��9�'Azy-������k�i�M��?�s�+ �[�>䷽�4t��ꤊ="��
A��>��g��d`k*t"�8��J�)��~l/�1��{oƭ�>�4}����x����ܯ«�}]�7���*dX��Db5HM�^�Ji��	��>|��44���PO��F���ۛf` ��Z�Oo{����ÌK/�qH�	�a[P"ckbA��������ζ$!�8�;}j!TJ��~Ln?F�}��z <5;��l�{�㩁<Y�o���mￅ\����t��*L�״
7r�W�|e�������x�7_YlS��k!�
(!A�� �ST�O�W ��A^���2�|wƮ���<�Uϋ�@{a|J/^r��m͂!V�:](��,-�&T����)o�ml�m�d} <As�O l�E�Ɵ���OC�2 ���b`J	*  23m�FN����љ� @]����v�$ԐA��х��N����m� �u�X��yWt��a�ײl;���4��E.���О���9�}ow|N$� xEg*�Um������z3n��;���:�����C��n�W�Z~������9���aĔH���l� �t92�8���6�0�[�����ztN��o��?;g�/��6�0Y���~-Ϯ2%T����;�u�y& ŧ���;��aK��BWȯ�X�4ѯO��>�=N�>
��'�튊�{��i��H�tN Z�������C�3��A��y����
<5-~󓓇)߇�����/��K���D�/��q��Մ�T��E �!&g��'��TV��d�mNv��~��_�I�P��*����_����`|�$��`:��}j���@W� ���:B>:�}w���B�=���O�%���.)��y���͉D ��]U(���7�cj�.)�Cd}-h���{Z��-�	
Zn�p��zy����EE��'�ju��	��3@nB�A=��L��=X��h��� ��������)g|^��0)L��"����Q�������.��t�H/��Ɏ���@W �����q���S��.��n�����5�I���m��e{f�=?\������8�J�"I��k������v�[c�%-b�r8{[�oʓ�p�t��hanپ/|yM���NJ��W*�L��R��"	 �V9���1��9n��S�~�_~@>�ee��\v����d  2�Nx��~���04�	�s �40}W�';��� %����� �[��8Mk���l�*Q��J�����?��w�8�9���BHp(ZAk�Z4Z�r#����;���O��`��7I�D;���H��
�d��    &]�d���Y��{n�<#LW�@!�c?��ϙ�]�w	B��>���?)z���q@qwAo!��T�Ufu�r��v�G��9����>h2G�>I�x!U��B-�Ѯ۪���hʍ|y���/O��/�&��xt楁&��#��yMls�{-�ج�ɐJ�w��@Mg�	���j��<�C�f�õ7I˾ϗ}?G�I�N� ��v�Ǚ�r;���c�� ����(������5d	����c?O/�.I��L�Q�lۂ���53����~��x�W��@�|��"�V�m���[O��eg ^��/��x���$������7a��*81��U�������A��(�k�9�{�����\ �OT���<�|���Yz��>'� \n���� �(M��@o ���5B�~.W�ݨ�?�;L��M�NaQE����g����Ͽ�S�3�Ӈ�T3��3:J�"�!u+ɪ�l��1?� 0|\E�_{b\~}�^�К��@�Ǜb{M��:��7(�|��b26 ���Ĕ��s5#����>:�w?w�_ �q>I?M�1��5��G����K�Q�P���	8�����&�$��� aUw���}w��3�\j�m���`j��IW����.~1��<1�fr���Π�VM�K��77- ��צ�	<1��@��������#��c�[�X.&3a���ӌL��F���p�	_�� �j{�guB�y���N����S��\n�b��H`���_U�V �����}�l�k��`V�t���^�:L�}�S��W�?�����oJ?QUtmPB�hKr3��R��>�  �����_@t�@��_Ϭ?5�o�M�h�#ޜ�!50
  (c��AT��4ƨp-!>��g��W��edVϡ��dY�v��2��^�C=�~��/�[����˒��=��6@6+��/��8L'���� =���Nǲ�Ak#,����y�����M(��T)ѹ5��vla� +��G�����������*����8s�d{����+D�۴�yTY(�(D�� A� �Í�  C�]�dqV��2��͟諟�����-�X's��Ed��:t>�zat�rft�4U42�n�����U|���{ ��-�Y����ۉ<�9S�k=Dz��Qdh�\_��������8� tҮ:RE�>u��T��E�@�0�[ ���WO� �pw5����)��\���ɗ�"���FT��N�~����T��qH�`  E51�\�٣��O�.�� @,�%s��{�i��t�u�\��P4r��qJ��H/��Wv~����8�������y�_�k09rr�cQ���퀊�eQsP��\뢼Gp�:t��pc�o;��?���ԐA,��/�ڝ��// �֎l!���&����E]Fmxq�y�����h���K!^���:i��l�$��5��uW����	�s^��@����l� �%�,r��|P]�����X����v�p�J���ط���{pG��j;D�&G��z&zʭ���c��C��`�Ϙ��x�$�N��P*���*,��ky�U��Y����a� ��Sz�lG*���k�)�r=��e�<.�j����"�=w/kQ�������{�Jc1��"�%	m�ݍM�����r?�ou}�	],����[TNCl` �\�/E�|*�>MC޹E(���U��{���j;� !]O�D��0�#����z��+�b6O��>�p�$�����^?�x!�����PC��2���K�x:�v��@��n�[$�Tyn W����ȱ�_n�۱){0���J�X�;M����[K�:Aͅ4Q�c":��>�!@���Z^�g�n2�QBWXD����`L�Y�}�Ǔ�[LA~��	 �p~����:���	�5A��o�.��U���ؾ�nC	��|�G
�$�V���'K�K�/��ϸ�_*n�'���E~4(+��  Of����%��S��v1����3�E�;��^,�ŮaЦQ��n���K�y���������A��8F��/�- �41���q[��2�qU�t>OԜY��7�����'�Wn�����f2���x5`>�] �DV��DH���~}�޼�5=ļ�Ҁ ���g/��HId����������E���~x�����SЅ"�|��ؘ��]���io
�y�o�ݟ��;� *O���m�=�A�%\��H�n���h�	R�Hu��  @E�g��R�KE�
�ʖ}� �0@�r��K5�dM�Qw�0%<-�+���0	ٝG3 F|>\���: ��*���!�,���C�'�wbw>��g� N��"��:M 5i{�>�g����\��+v�τ�qX.�2��2fX%��w����׭����U%������7�'��v������h5���"�o���d�+$���rr\+D �J�(�D {��ٹj��}����#Aw�kW�B�SD�m���?Qy��`F�3����C��n�hf  ��6y��I�N� �x;0��v�Ãȧy�NW�|p��t�&$[�JH��-Ó�~������O����u�s�\{e�|% @zy�i��^� @cZ���s�'���}E�^Ym��1�a,c�g�V	�]��d�i�xI��Uy������j����vt=7����w]��W �aE~3g7���~�C� 9��_?��G���f�P�D��3t~8��h������>\��= U@'�9�����8�k�g���r��;s�R	�#�F����O�w��(���n����n;L@�2f�8{[��Dv��j.W�ȿ����B����b�2`��ހ��N [D�u���Y��jݑ�B6��
����_�����d>� ��+ @�b��]:�@ԺT8�;�������3�}���P�*�ͭ��p& �z��VK/� S�;����vaa��p�㜤��c'���_�}�z� ;��T�`���Y[�B�\TyF�_�勒�����S���X�W���q 8{[������ ��޷P���-����O��wp��B�<�\�P���P������y�^�A����+凫�na %i� ie�N�M"Pc\{2��Gnؽ�@~"Ty=����5 k���w�����7_��w��_����T�g~D��a��14Y�����v ����$}�%Κ�D��>�����b�]�^��$�`۔ �DT�v���i�O����?���˝|x8���0��t]Lӝ�c+>m�p��[�`8��wc����B�RB+S��v!/��B�6R�0�詃n�!K�:uxݻA�n�(IҌ��T���Α�g\�5h��p��U_�Gg ���g�Yc[�� �ag[�O�����O����?�[>}�
���9g~�8�#��ӻw�G���; ���l����trg�����m���d+,�Ds��T�l(M��b�m(I�#f���X���Ѽ�����s�ϖ ��,�J �7���L߼�O; "T3S~s}�&w���l�J9V	yZ1���OC����Q�v�#<׈�����5j���J$t�� RS�FQz- .�W������r���`Q� ��N�z�Z[%!Hn������/�2%��*�y�҉g�x{��=���+  ~��Pf{�$���8����T�K#uc�p�R����6$���Ԝ��٢�d���g�!]e�YeHS��[��y���+�Qu��{Wu�]��Ȯڣ��`�.@�B�/2d�L��|C�{A��Pe��f��	ϙԺ	;5{'<�v;}�l)Il�t��
VP�� ���0�c��m���M�.��D��j#�	����}���Kw_(ʴS$��%lg  v�N�(����o��3���P���o�ӲK+jܯ�Q�ӬI�8�T %k�K���UV��T��=$=e3FWY:WY�4� �7�u \e�_ a��x=��㺘g�u�؜�Fr�:�+h�*yx�Z���m�r�%#�֌qK�udҎ��hm|��L��L��Ȱl����\ i�+�ϥt]¥Cw�}��Ԭ� ����J� @��:��?��o����'RQs^��X��N���eG�_o���A4��u��N����l�\�)�	��������
(kM�
�iH"J:W9��g�j1k\':��4UCz�u���] �����E�a>�ȣ��]��I���iM�n[Y%�"S�!G^ɃFy���C_I�[B�$!I!�F�����1���*��e�]:E_
 �}�?��  @����u8B[�s,�-Bk^S�6��z����X�{�V�� ꇆ�I�<�Q���#�+���N��#�9(@:%(sÍ�9�J(-��.�1Fϩ���T���U獯���]*��b����#��<����b;�`��S�C�n���j��N���C��ۀd2�޺�UeI��:��Ō��`�  �=5�k�B���bڴE�5�#̙�֢ѕ+,�  �@���
������~Yk�,Q	�����k  _o�"T������]��(rY�I�b��9�\�#�?�s�	m�*���A�9c\'&����w�]�_��aQo �b�pu���,--$�����d;�Bl�����)VPx�=��ha�s@���&sf�&�������_P��  ��G���W���5lA�5�j��-�l�ka3�	T`��������p��(���wF�;M5��p�� ��6}���� �z{�w�2��*����a@kq��W���5E�.�>ɉ��t����!m�W�Z&]��\ԛ�� ������W ��M����R�R���}����BPM�ܻ{��= �����2��IR!L�~��&9lJ�e��`�Z�Xk���x  ��i�:9}�n�[ �uM_�9aۂ�A���x��F/  ,&W���]���+_� �w�.j6���D/g`�7������=>Ϻ�}t�u@"C�AK��M�m���	Gi� Sمz̸�4zd,�E�)!�ׇ8��Pj��+��ң� |m��mD�ͼ���d�GN�Vh����=�C�����u��=�H[���t�9ܙ�*���t��m,���#�]P��
��\  �<���)}�E��`Q��P�X��V�\ � ��M�ծ?�-�x��[���<�(3��ܫ4����O&�].�1��)���WK&�=�Y��V*u��f Z*Q9r�r�3��N.���P�ׇ\�#$ $���۫;=G� �ݼ��f�R�Hʄ��>�s➂"�=�|�;�pk�+>�W��_[��=:lO�a�Hj�ۭɫ?:�r��R�ޕ��x r��  0{�k�?> �s�P�s�t͸Ăʪi	�[�V�꽹@  R�4��ox��)� ��9�.3�su�!���M\/� �|�+���PG`I(A����0�eK���Hk��t��J�i�}�'��� �Z�K�!���  go�&Ox,���n��rX�t}��/�j4a&�:�F7m@+fZ�x��J
OhMZ�n��e���e�w�q�l�z�-x���$5�ю��v��w=�0�P�&r �5.�����M7���gΙ�Y( O[��U��u	���z��K��ӿ{@NE͹�9�s���3q�5�	�"作��ǹ��I���y�$,&�j C�tR�kCz�Ih�TY��UN�̱K�a���%ʓ��gwz���-����m�vc9]i|�+3/���	~ ��`�!}Z��N3�T��	WjMU>�R�puJ���ʀ����y7�ax
]j�E4��������8��[������ ���/��a�ُ��ru]�������w �k��ՇB��
;������˫�A�>5�-m���.��-���J��<�Y�W����W�&�r&��(�S�g �a0H�I�I��~X$�!;Ĥ�����<> �W�a\.��� ������=�.tMǢYq�d;��� պ�%8îp�6���A��>�:���^Ia�� ��f�f8>+�W�e_��J `k ����ze/��F\������%O�� Q�d��,3/�� ��S˴���6��ڎjv��P�5���+��s���K��:�P5�vSfNM��Y>/�)]�  �z��}��쇅�"���J��,�S/�� m�pO$�Ԗ�����%���#�GW����j{Pj��)J��Zi֙l;�#�ѹ�{�Eƚo�v�Q���t��� )�5���jJP 
 ��X�f8���b#�]���*(��9��J{��+�����`�RN���믾5~$  n�ݗD�+ ���m���D�B	������0�������7?��>�٠���8��t>/��%�_�@�
��3��z���a��y��TnGuA�gg��H��T�6E��<$!Cus�n�f�v���a)�>���t=:����>r~y�uѝg~�єi�I���v�1��;3�ƛ�'s*#M��҂��{�Yz�ĵ�*~���o�I�9����n��pcQh����b(��]�q��v��sl������#�k�1  ��w��}^�a��s0�D���C��vw�`a{Ye	����*^$J�عT5�.�7�ޜ�K�ҽ$�v q�S8�;�|�!��v�Py�a,U9y1D۔���B��Җ����WL��=?%����ͯw;aJ� �� ��r���\��7���Q�s}~W_��-�5���t>��?�M��eu����z!�p"���\�d��F��:��`�BMs�O\���������&#���)MCb������w{�����cZ?�5��  `��O����9b�s���m^�a��lW��̷��.�$��l��:R�Hvy�vy��K�������� $��|�f��q	SM�(�-6��ю4z���]P�e"� ��Ϻ����~i1/n��Q�Ï�^xH����� n�=�ø��a�������L ý}���\��=��+ ��lٽ���D�i� Ȃp��Ơ6�WZ�nV'���)S� N��%}^�ҎO��>X��5h�1 �&ŗ�̗�Vy�eJ�yQ�p�Z��W�.G�Sh�F�He@�(m>/����ǆ}��=@��e��q����jP'(>�,%�P�*T��F�-�@��e�O8��_r���Y��'`i^��ʰ����Q�Φ�  ȯ�_��_�<��]�)��O���{���Z�q=���8��y=P@���$�%тj
9e�L�'�6�l��r��2=eQ(Pdh.rj��!u��~�vn��C�o�������Z#t��}�,j�7=�k�o�%" �Y  A0|�h!8����.�.���]��UA��k�u3�y�r�BH�WSu1��M�K0E�L���Q䗲Z?�g�����W;a��e^K/o��V���6ta�=�3���7��}�!�d�c�^{�n6�Q��.(���(	l�lD3���US�,�յ�:ڈ�`����t[n�1܁�oj��D{�&��p/��#��ms�٦E-k=�Jb���\K�] ������h�ҁ�F[/g���}��}�̓���p 5n��YL�R��z�Z$)�$�$""B�^����/&�������r=��!���O6��{O���՗AP�b����e�n��D�@��!Kٕv�n6[T���Fؠ�oqU�#�+5�� �%hM���E�\����o5ѝ�u�@1yjy�2��uj��(h@�qu`��k��>�Ϛz�ݩ���~�gEu��`݂v�z[6d1W��:jPjcٞ����.�����b�ʄ=��C�\�>��Ȫ!�����&��$�Ah��Q���9��}|)O��������8,B��{J�������_mJ����x:?}Ѝ�I}R�g����ҵ	��m�z���lM��G A��\v�A��LA6
 l��I{qr�����Ƨt�Y�+�q��P�?J�V��r؏*���,@U'5z���0���dv;� ,8cf�j�e�7��Ll d� �ūڀJ^iӅ���="��b�'�>�Y/�^8��Gi;�V���������d��9�����/i�/���^8����4l���Q%jP����)������ "0���C���:	����3�˾���_�{�o���C��I��M��M��V�~g�R�@b��T 09����b�B��MzM�*t���bzJ��ɸ��,E|�{:�b��f����=��ɸz��ptI��k)��S�NQ�o�����t��F��(,�DB�� Yi���G�&Gqoh+¬O�8n�⸙p���#ʁ�/�x�"�|>H��d�	;0 -����}��������|4��H8���4ԐA�Y��s�)L� _��
!������]�����������������S�M�%v�y�~Sꝸ�ܧ� ����ZWR+�h^�g-��*���<c��z[�;����\�!	t�v��G�7i��`1�^�FO_�M��L'p�ծ1-܄��2���#f�Ħ�b}S�NF �hAЖ t�a�jI��Ajzr���=b�񺄲�r�4M�Ix~>���T;L��H�C[&�Z��Sj|��/���L||W�8��}��go_��B����0������Th��]�Q������������$���B�M�w��&wg/��:�C��Q7)l(V4
^tjM�)�K��!���� ?ҧ��B1ͫ��sM,���/ʌ{ь���,���xi7�y=(ow�?��b<���r��i�!C�� Ȋ
���v�8f�J�
 ��|��{����ҕu��}t�J�	Ҏ�|���i ;M&i}e=ZW銞��_S�K���p�d�-7�v e���Cx��޾�8�a[P��d~���e�%8�,�����9�/�'��*  �lc��k@�m����s7�o�oxg��(p�M�4&$��k (Mk�Z8E$ܲ_�����n9+:0���-��w��Al�Yo��aݮaS��  �_O%��[��d3�J�I� ��Z���Q �-��i� %P�R=����y/��bEӹ��#��ȡ��p������� h�hɎh;sD�>��K��sAŇH>|=�vV0�]���toj�r�����_����u�qd�쿜g��~�/���J��XMM�m֮,o՝ٚJ8(�37� %�u1�D7��Ѽ
6

  X n�/�o~�>��
�p�<��g�ٕ�_�W�<���pî���z�)$���o�/ �m �=淽N�'�s�&�����@v`�WB������vr�<9J4���0V��$"q9E���]�ޏ����<�
�)�[0����mt>����w��_}���f� �  ����K�'��TT0_��}f��d����A�s�������sG;z����$���]Yn�ݗ�i�m  �=������dH5𺉠`(j^�fҧG���4���”J��$~@���]�����ށ���z8�W���=̾���+�3�#tݶvscJ�i���xD ��6\���v	P�Մ��|����6�����Y�G����v6�Y�����4�(��&Mk*P gQ��>fۗ]�cw�a	zPT�8����p/���H֋̀0���p��m_�\��i���ltۛ����ѿ<K����
��h�__g�;�Eݑ�6d��<����U2��Kha�؍�������uW/p��EF^u�t���o���]��0�ې�Frʂ��7N  �q����Ĕ�^Ӣ/7��U	���Yg���U�RV��s��h�G7�*�𚲮ڣK�X���o~ډ  �9#�֖2!G���Q��%����̰-vU���a_���>~ �M(�o�W��E�_B~�=/"�&������������И�ץH ��6����b��-%� ƑZCn֚h2����}��o�O>"���N���q.����o�����0��`�Y����T���ݞ�7mU4�������zMd&$nJQA�����Q8�D=��&�D2`�m�#pt�}C�Ӿ�e�p�t�!��poo?����~v%�N���#�2A�!�ٮ�0g�~4����T�����Õ�/Fgm�^v�G6ϥ /�a\��>�ͻ��;��}����ܻ���ۋ�tm�h��	������7��N�i�8�Ѐ
l �����z]�D�t+�������/��L�Ԧ��wD~�W�nNJ�����ܙ�q-�لZ0^O�(`^���Xț}yuy-���TN��F�U��R��:,5m�clף8 �}���*������o@���sW�aVW���l��L��>�&w+�P�7`*,�S��~��{<`V�)�Y�o�*�^��r%�7@�b?if�ͽ�ˮ�aW�OO��O�����v#Ss�i_�g۳乀��B�"h\�[�[{�{ɛV�� }j dof�� v�����_��^՝ gE��H_�󛤿���Ǌ}����|�Zh��E+�#ȼ��آD yY*A[|%-�B�.�LU�)�A����͓����� ��o���Y�Oَ=dEB��>��ϦO^NA��� �1��p�s?(ýX��3�!��t9^�'�u�_�$,C�\�Rz���#4qt���WY+�!�1��qW�W��[�ݿv��?ZW�+�M>��"�HB�$��M��xw#_��(���']t~5�;�j~��݇�z6+!��Ի�-�P߰���\��3[-sP�d%#g��"G���|��
�B���iͧ��C��\�� 8�yҾ�T5�n  !,��ū�����#șz�(�=}�����&�D}��������ߟ>�����C8��_v9~Ώ�~3�A�a�͸�t{�-�#�.�Jz�%7�8�o��
�:�X󀀴�/��>��G@�|�P���%��&����Mٸ - �+x�Q ��w{�m>��*��"��gD�L{~3����~���-�
��s���ĵB�LG��u��F\ ��/�ک� lSoːʐ���������|8���>#da��۾=�8H�c�s��;��@xQ�[	l��O2�J����~-����S�:���^���������{P��ž�G�G*�AQ���^~G���;��~�:�K����+"�
��E��)�'��r��������R_0�0��4���/����|-�i�5�:>�M��/�Q��ï�����%B�!���/֪�d�����/��^���n���8�gI�莛��y�n�4������/�9P`	|��B�o�5 e	�h�d��'�b&��| �����9��]X2�Ƕc��/ 5�t���]��;���{=����߻�>g����?�Z�����#�=2�m(� ��G%���6M!@�����|UŧT��q�ή�t  �&U� ���� �@��	x�������S�gI٢�4�ۣ�Y����x��̱dI1x ��������⟁åL�;��V|�*��	;E��+��������E��𲕟�Y� �60=1{�����/� q�;[�WO�e��#��t���8�S��O2	`��"g�hz��"u gR/D.��n�_+{dr�E=��.�n��p磇ת�:.ǣ�����_.z����EO5����/&��T� ���q��|������ߟ� p�M���I%��������� �X`gr����|��\!y��Z~~�4��6	]��w���1�	�	;�K��R�G#J�kח����Nn�:"W�/��o_v�m?�<F���uz�l�-	`�*�������^+��]=1�����9�S���m#��.B�xdoT*��#��+��+N~V峢�[p|� �&    \�Xoa����D��E����Ճ���~���b��a�$[���V��K{����Vp+��p�z ;n���g���1���ơm&���Y�c0,��60=���_�c�<-�j*� Sك���{]�Q��ԑp��;���X�L��������zn;;�Q�u�C�x���뙟W`3]ӗ��C�m����K���� ��ܟ�t*�>��	�z�1` ��� г�S�� F�>?�o>��a�C������Up��U�u�D`�-"�|��/_^��ԉ���Ǭxw���`2=�@�\,]�?{�2}�)�N�j*��ϗf�l���M��D�:��ӽ��	������Z�������dz��������ᮜ�g`}�6SQ?��_����,�|�E؎L����'˺d��1�0�ϔ��;�F�1�ڼ�ϸ`d��h�o�ƣ�1[�Ȅ�1��	)��+_�jJ �o!|5�o�Ƴ㐩�x`�Pu&���q������Qx���pU3B��cۙW"}TXD֠�����	�ǋ;� 1����_�SJ0@�w��cYd��&��9D�� B	S�n���^՟��_@��v��p|:���hP����CR��� ډ�-���0�������~|�fR������k����a�AA >=گ����� h��^�?����������j�n�?�.��� ��S�Lo݃e_y���5Pm$�g#��T��1ag7J��wV;�=}Nx�$�#�Tw%{���M��s �� Bq�:n����s��">��9h۞�!+>��bwq�-��v�\���4|<����8�H�0�8�h!��'�������gK��"��{-]��b�X7�v��T w�f����"�!S�H�o$=�Iz �^V��즯�Ie	=D�X�.�RD�9Ax��8������鴿؎Ϲy�Y����Q:�A�-�5�W��k�&�h�ΊE1�w SPH>9�O��qq{�(tw��'T{)�H���?٧?^��%S�.L�K��h}<������k  �#�O/7[��ǧ 9��i��͇m{�U=� �E�|Q%��E;+'1<z���Gz��M=毶篶g��o���N����\�>�������1d�<�#n�0 ��n6�#�T�� &�>|}į�����)��tUZ����K���d�}�o^_f�kBJ�O�W>����Ip��e��-��/b��nϳ�����U��L�Ļ��qd��)��L�|�� `.������3R5�kz����?�O�_M��ݯ��=w��(� mxq��|ʌ�*mb�\=��ڽQ�H�<����#~����<��0/��_��h�����U~�$OO��  ����Q�π�x�W�]ϯ �`���Z����w�﹝7 Xl!����{��%�뷸q���7j�������2�
�����������,�?c{����Ad���R1	�����"i�������!���  �ix��������t9����	����Q~��N�/��DE)b���b�\��`��_'�'u��-FLk D�{�#���m@&�K�XOi�Q�(�"c�Hy>�t��`�sǢ�e�D�5Rs+���u��9:>DT��}�. r3�]���b�Ă��4���\U/�
��4|3���s<9>8��g��8�\5A��~j\�>��~>.��^��v�ǈ���e�I]ۢ�b�i��ru��� �fqW  �>|����y��q��s��`�Umm��H���;0�9��1$"��X��g�|�O����Ak���r>�M�Y3?b_(�� ���F��bO&�����7HY���mp���p	��~��� ک�c�D�V?�BMۢ]�(����,W��|�@��s:;���1*�w��cv`�e<hV?�ӏ(�b�*��
�� s��wz%C���A��/�� Q���?��S�F����of�r ��JT�hhL	]��G���7�y ����Ͽ���m���/�L}��>�6�gծ4J�.�~C��ܫ�<���^���
l��\�{��]� �Q9��8�<:�<�Q@�F�c�	yByN���� ���g8 �1{I�;�Ut��������|� p� �b�ƬXvR;`#i}����9��U/���z~�©`!��������������v���	���3�z��"+�,�^@3xI�Ї�>q���ؗ�Xܕ��rb�����E�9!�Y;�Ǖ��I�rm�O��o �"����C��Zk������~y����-@�{B�8f�"qP���Ј������x�����h�(����=n=Ԏ�5��x�M�������=諻�h�A5JX�s	}�rO�m���]�C�e�����i�e  8�l&Oi1� @[�|�v�!G��:ܮ���;�"��NdP<k��W���7���� 6 r7�h���b@k���4B;�ĒT�'f(PmЂ
x  �3�+��?.���u*�Z�]PR�"�``��0t��%�KS�g��<L�
$ ��S>�{H/ HЁ��x�v��:��묄��}���a�0��Ĉv�;c�����G�ƟxplV �E����H\#�@�Բ R �X�Z�xE����1�M@��Qd��!j׮规p�f�_.�#��� ��#���{ �`o\��}"�#ˆL^k?�����4!J
H�� ��4��b;�j��+AO�B�R�E��X�"
��S��C����O\S$�	�x�������Ν�Ǒ���I�4�&v��BjQHH01�� �D����/��OG:8�В���!�#�i�ܯ������!��)��®��ˡ��+��4R$}@�-� )��fQ��  ��h@��j���i�~� A�t�Jfڃ��:#t6$axn�i��Ʉ]j�DN	�g������Ž�'��dF)fMd�e�[n}l�`r
�  `�i _����v|��@J&ap3��8�y&)�f�]�V��Fg;�� Bv�9�"A�9�UBKjtz�tό���մ�d������}��!aW����r���v����G��J�H�$��P��`��3?� �)6�j�_���w�����j�j2-�J8@	�}ʱ�|L���Ul�0� "԰���I��)dx����t��;����.u6Hډ�!��ܫ{؈��S$��_<����0�D��"n����g ��o޿�|b��  G/ X ���՞<���1e0�p
$��-< '�A�C�]� ������K���X��`��C>� {��Q�{���vt�w��%)�pV�'�A�{�����W�o|��{~p#{��,lp L�K .���]��G���Y�b�)�)�@M���{��I�to��j�������Vdh(�%G|�/�a������|so� 2�u\����q�8#b
��M�;k��p"�L��f�
��=@�x~ߣO?O��xd��X���=G	n��������?\�%~9	5_^�{�����_�*5��BC:�$k�@�V'`j��~�]��N
�n��ԃ��(�=��R� W�.�W�6��~R���jk����T�о��뙲<�� c��z�|=�?���������O�_��x�;�_� ���`����Y..r9�qȜ�I�C�~Ac�>�~���:��A����)\n' D�OSk�.m�$�8{Q�0�BA <b� P���:�uBPAu����@/���p�;�(�Dh��54 �㱱����'��9�����׿���G�y�/g��p�5���U��:��A����xc^��\�=.˗M�'�O�N�1�q��|so�  �2����uKa���w���9��"k(Q9d��De������T�D� �&�E�� �J  c8]�?&T֠��ݰI��E<�]2x�3����Ϸ_���O��'���w�8�,!6XлH�\�����*.�m�n��M���_���aX�b���1U�� '�HP������<�s����6=f鞐t��t-Q��ʮ��P��C!2�t�H�H:���!��  �� AT� A�(�Q�(��fP	� ��� D��8K�c�͛��TYM@%I�G���=7] �� @ �H��~Y�V���qg10H\]��$�g\c0���C
p �OC��Ё^W�!�C*1q�k>�%;�gj;jjC����;�)���1@���y������8u�Ȏ�K�ա�kTɱ~�&JdNWA��#G��U$d�2Jm�Q�W����FD" 5�� Q3��P�)ID�ܙ���Q9Q 2:%��P��LDR�Dg����Ş!3T��w�&I���TaK��V�|7I�F
V�{�{�:Kň\rq���^�����&pR�#u�D'Iz���K�G0# ����*��D�RLqMۻ֊�A>���K�O��ga��j5ߛ�;�%K�O/+�8p{� �����6#3ӗ</�m�O�����f���u��։${�B�hδ�+v�K��.d{�κ'#�Pьj�!�=�=����UD�v&mђ�k��1��-����(�Q�V�da���Z����+��O�VUtP�2(�@���� �i�r+T>-H��@k�%,Fw��Děw^k�Zqz��Cu�vq{�+�'�f�$Ht�`4�}�����&0 4�S5Qt(��=��������!�^������:PAL�w�\B�S�֗���w��r\�Ka����:d�P���{��q	~����u�d ��0�q�:�@�_�~�����u�~��Ȱ�"fǛ������:M�q�2Ecĕ΢��w$+��_��1�D��Z���$k�d�mw���tv|u�]�#��fՁRD}T�d���IGc�r�3�2mR��Hh��x�l�\B�ʊ� �w̅���zvg�c<����>8�E��B��R��%<~��x#�"I�� ������J\���ݰܱ���(\��<�"����S�Lm�Lmc( ��/	���_ �_� �z� 
���� �8��|�jy~�&�	%2d�Py����=�x��m�NWu�ݷV�����+�p�ٙ�ǌ��YA/�h���J���t�+Ԫ+��BŢ� �4��d��"i�?��XB���vh �0Q'��p~�x�)�s���C2\JM;%~Y���j.W������s�lⰆ)R�(XP���43,V�gΑ"qz<�������ێ����"B ���?�%<m�q9� � �����n�� A8��t9HP@T��Z�
Ȑ!Cd(��S������G'��v����J��n�V�Tezv}uW��Tu�G9��f����q�2��'z�@���A!Í���3س����~�o���j(��b��hcY�+6�a*R�@X

R<�M"����L�I�y(�}l1�\� 
�Yh�� v�F�7�>��rr��˫h.�<���D���,�W�d蠅]o������~-.���3J�f�Zt�@�z�+	ûv�(��{ #�/ ��L��tDdJ�G���<�[�[�.A��-^-�q%�����>XQ�!=����\�剰�`	*͒A,}���v�x`�X�7Kpژ�b���%pŋ�t�/ໟ_������%
����&>�}������-���f]�u��P��x�]��8�H�y��;l�3u8�Tn�
b�j��q<}����-8�Fͬ]���o,z���:0�A��Z��ĉU�i�(��   ���v�.���ǋ������x���X�o���/���������E��[��m5
 ��%� �aV��m�+��%=P]W�M؁DX�,6t��\�����.��2���A�uN���N.�Ȝ#ޝA��n��fw�l���g��s<<P�W�h��\�Rq�3�,�ϣ�������o�n]~޲y<��6��d�xk��{��nڟr�n��Ae
*k�1D�Df�v�XE�G��lca��B���$�X]�����S��]J��Ĉ3���x���C��k�6�'<�0�2�۶����ͽ���'��~�W�_w�lb���m��	Rf� W� ����6�E�c��Tft����(��v�M����~�p�U|���a�8�b�u��e<�Z<ڬ<s���=��� T�M����%���-f���-Ф=a���  ��R�]ۆ�H��D�N�	[������v
Io�顎֟d+B2-#8{��'Vo�R�9� xKo�U�51���b�,K�-:�CXmV��{�g�+*��"��P�+ˠ�5&Du*Y���])�DO����%Y��O��t��$��O�����H�$������\��\�A5�}jh�~�L� ��~\cg��sپ��!n���/�{��@���G�}��7�bGx��+e��Kbz|�E�~���4>ty�*�Ȝ��䘗�+Wo<��J��P�	�
�&��Gu�lQ�@�����u {ź E�+Q�8�s ņ���Ce"�¯d(��*T�p�gH����:�1^d���ߕ�o=�9{�/P��78x'Ji 
䬨cȽ��b�\��C������+B����8�\�Ȯ�Ld��
��v�X؂��
HJH@�g9P�g��py{p���h�*�O���� 5F ~a�h� �!	�v�vRrޖ�_f��^G�T���� �EP�!��2l���TQa��Ib�f����� �݂��`:�y�s	ې�)�<?M�IaJG]-ǂ�Խ����dz�x5����o��\ ���l�c jT���`��7�0�g2�R���p��
$�n��7=��}�oV�bV��(���g2J=d),�rJ7f�\���2=3�������`��E	KR��1T�$:#H�ӽ�V����0MO���!DVX��/<�d2gA�a�%���x���x���1��R7SC���}V�׽ծ������������l��+G0���O�E�sw;C���h�n%I�Gv3�P5��zQ������(�<8�e���">X��#��g{��DC��(L�yJ�]Wo�x5�P@0L_�G�YA���K�3���|)!�x��R����ڽ	E���G�Q�nB�@�¶i�w<Lldy-�Pp��A(5[0�h��j��Vt ����>|R)¢�~؏�����[e:���o�<�C3���r̃R���N%���h/O�y����G�
YA' ����R�
�6  #�C7�W���d���-����&0X�*d��j-�`N�$�łA{�qS���]�dh��Eu��$u�svZ���%@ ���/�����o�t&��u�k��PW���dg֛���	�@�j�P�&�g�I���")�E��-��MQ�@�I�}��T#!�)
N���JS):�����@�+�#}vJ���#:O�5|w��K
��W��W��Ӈ?�>`�����Z�,1�s��
�1<1�;7f󲾨��A�{e�J{�T��@����jj 5t����'X�:�>�	�'y��ةT��[Tgq����?���?M�sz�CA����Ι�'&��N>=������=����+H�l�3�� �*�^�V�-���S��pwEһ�~o�Q��=J �H�P+�ҤH���~�,���2
 
��b  �K�]A��.m��0=vӞ�}ڟ�aJ��B��?�^P�#��ԁ�"F�.��&=Ĭ�ո�i��~7�d�
����ގА����lb����3t�N��S�56�CE�UMl�J*�;Y+�
�Ij��WR����H1��h�q_�T��m�~���� J�~��"{y)Vƾ����Qdܐl���T��l��i��[����+������ {�̄�E$�$"��Fi ��6Tz���D� M$�4��j@ �b��o-��
O�sނ&?L��*�{��D��e�� 5������F�&2�i�C*�i[w�E2�Ynd������O��� A�o�Ų�]Q#z��U-�H�3E֧�fg���4�A�ruI��D�׸��%�:
5jIu��*MV�.�(43���f&�I#�HID���;��]�ԜD��IV����h�S!D	���
���lt�����1�7`�d�	qo9`"JYFm �$�)H�z߿��J��I���c�ƙ��z~u����zl@_������{ (`.� ���rfH��<�w77;�(ד_�5M���I�C��$�za�<l��ZVM_[Sr�e��*�Z��v鸊�tv\e%�kM��v�RUBEG��Jt��(���##*��(�g���	"*!xoi�N��0ä��IOO&���@��d)��ARn�I�pO��C��s�v!���e�L@��6~�w�|��3  ՚�E_�HE]I������`��[�/�˫�P-4��o��U�y��%>^���s���	������y�Ϲ�,t����ee!���rݔf��زL��,��2�t5*�e���۲T�U�QK���J�#ݹ&Kd!�*C�̤���"2�R u40�J�
爋�<��%Y
 n��Dة ���[�h�[�nCC�Z8�*��G��z��E�F���>@J�7��{�>�X�	�#����YMa���;�{��a5X�K����5~�+������k��W�:�
��t��kDY�$��/Y�Kv}z�u��L*r13S��b�e�sd�������c.�ytDIo�f�\�J��)2:�]C�D�U����BE�
U@��!G����b  ����~]�����i,h��3#��J�H��f�ȭ I@ RS������4\�jz(����b���D��8��Iq�Y����k�C?ι�=�Ѓ�Jt�<Z< 8񶯟���#ⰹy��� u��7L�kn���Vr\/��ӵ�v���n}Y�Vb_ZX���pWf�;�F��!�_����b�����sD��`��t��(%ǯ�p������̃瑛�����,����L+D�fuG:������.}M�E�=��]{9���C� �a����B��uVE�RdP��a4`���2p[!��ʎ/����7�&!1���|OC���Yx<�=:��l����;7���I��A�ȥk�U�L�(`i��x��]Oau�Z ��+�/y�N|>��^���f�W�:܀7�zo>ݻ��[��}���"��M `V�T3�
��-�?߂ ��r�f��Me�G0%���{��%��_߽Ɋsǿ��P����س׵*�Z�dϕ�]1��G�L���C:����
r(�d��D�&Ɯ��㢳\��Ã �`5��h{p2�-�DD�.`^����\����������$ Cn�+�P��y��(�?GPj��Uu3:���_ H fI�Tm��i�	�<�3[���U����ہ^����,���O�뛰�.���|������܄U؀�������)A-4 TF�6��c �����wL�� ��Ex~��H���^���y�W{>{5��_��)���R�fm*;�.��Z��6��P�PC���jF-�Ph"U<�O��1+���6�bn�aV�2�A4���Cc�����c�&��I�PB`�(�9I6>��LJ�t~nQhH:��[�Ց��s"�Y-f��W��� ,e�����ҍ�H�o0�`T��Sn�#{>���� �y��{��'ћ/��{����?�֕w�R��+�)��5�Y�������������6M	�Y@y�w`��>�p.���3�1� �e�y)|�29f�<e�<��l����t��~^9�+��4=B�D�=TYi�@B����n.Y��[���a��0O��1=&X�A���A#�P�B6*���GZ���@ Qu `���7�9�Ԃ�1�xOG��*���p!���aa��Y- �}t������%H���!���(��3i��sL;�ǁe�%���0��~!>��g���������w���[��)�R��C૟}����_��e0?iH�~�v��l�:��]X���v"\�="�~�[�^�y�?���Y�#��l�;�n0c�K��1@�}��v�T�+TPB�{���^0�w�E��av��)�7�"���V�8!F<*4���#���4�;�Ӕ���,R6�(�!D�0��h!����nҋ�0PmC,J<&� �y U��!T��θZ#��؄	�MK�J�`��:�ew^�-�T8�EiŸאW���M�m�mS{W�u4���_����m�8f� ޝ�d�����뜾9�ıM��{:>� ^m��?��9��7���~��j��1@̗x���~�]v�z{,���x�{�~������?J�;��%���C�砧�G����
N��$3g�&[���JR̚��0U��wl��
  x`�r�y�=?�i���9����[��w�$%�`�h �?4��B;Z,Ȑ`AV$�V�Y����EuI�����Q�;�
����0_������=���w�(�[r���' �p����$ˌ��D-�U�ߡU�I���z?i���L�
W��He���}Y�	7Q�|-����Fn���YCy��%��nS�� R x�z����	 U��lX9 _�eX�ٗ`1Zs����i'.�K�?w�o���s2�	�n�����߉������o���&��:��`j8��"H����a�8	�������=paV��ʄ$���+"�@���j����n�;B��l_|��>֭]5��V�44$4�M{��io��4θ�_��+�La���î�����#����!
����Q$L�] �
���p(�4*�o}'>����~��1��6@(}�v3���?�W CN�.z��%����|͈� �N��z��u��p�x1*���[��p�wtEO��ҫ��t�6��),�ft���kG TX9  _�eH��h�:�n�q��E0��2؜Ӎ��l�-U����*����K� ]��O6�[���=������%���:�$��w���H��le
F�Az�� ������?�F(E�?=�|�MN�rkS����D H4�)>�<�����Q�S�ٴ�	W� F�H`/�"�HU|e�+[X��+�0�hU~���4�3�����]	�( ���?L8x�7�t���F��	����~i��B�ק JMߴ�lk�2���9�j��H�x��ڭ��R����\d� �!��\��"n�v�'W�^Q��Q�k��!@���En�RWuf�4�7��O PR�# ���� �9�qZh�T�s�����my ��1����v;ʹO;�v��ì_ �x��7�xJ�4�}+��"2qDGT%=����������Չ7߯���*��he��x|��[vR���?�����O�?����w6;[��';��}�$��u����0X�I��Q&l�����"9���g^�����9����<4��C�"�����I��-|�jBM
�i�v:�ɧu���^�z�A\oi��� �f������if�7M�84�
FF
������TX� �!�+b\Q�u�m���jŶ�z�.��v��n�l��~
��g	w���Fk���� ��%o�)��h@3=�j:^��(��.�������8�|����� ;�ΐ  ����^�4p�ۯ�oL@T$wb?�l��ܘ"\�����,��=~YW�nM���������ث��rN���E�9�6���v��/����Z��)��Í��@;p���� �$��I�l8��,?���;,Ls�IL*��w��=�}���h^}��?��3���=�!1\w�RN	�u���.�ה��i�U����__�~:?���iT�-#��O�vta��r�mS��4C��V��Xי������a����U�WQ���ȕ"��5��u�U�g5�\Ӳ�P��`q�}��S��_���f����f�g  �k�9'�& �<=�<[�[Kk���&RJO��PK�V	Q�jU�"  ���f�!��/��K@j �^�~�{/2���$b?/��\����zU�:Oƭ��/w������e<~���a'V�	�	S?��7����~㻿��z�z�cW����,��]�M��ZAJ*�&�S�����/o|�����������/;of����T�W{�c�R�"!������9ܕV�����#`�9���t	VOCQ)�G����UwNj9��!���Xd3�$t�3c/O�$�P��p[�+�k$W��-wB=ӗ�x���x�@��ʖ�B/�Yo��OG��?�W�����YG�&�j^i^�(�d]S<h������v���ۿ�}�	C��(_|���.PH$ 8 �<�c;J���ݵƈ�D�>D*��fen��T֡@A+
2  l��Vt8��t<z'��uRr��g���/?�o������Ǧ~'���=N=� m���\��z՟�~����ߩ�������/���'v?�i�#�a^��.Ҫ/v���𦆼hLI
���4�O܄���z�C4�Č��s ;�W	e$��?͍e��dr�lth���L��T ���e_t���2�����e�ͬ��t���c,%Ԑ˖I�=@H+�z����:0�Hz�� VŪm"o�j%�Z8C��&$�j5o��������"�S}�7�6�hɐH�[S�
���}Q!*�&*�":�����Â
n�l6��z�	�$$��/.�G/rz��\
wU\l�x���}�ڿ�+��Εx.�[=�Ⱦgpw؞�l+?�K��>�/�z�=?���۟��D����B�&�*�"$s�¯�r�_<4�I	+-���Z�!_��iݲ:������e�s1����� (.��B�6�#��m����B�QW�^�-���C!���4����w�)�+񪡜��ݞj(C{��p�|6P������&��u �#V#�'��}#��T��7�_�am����x|�����p�p���!X�uR�-:]z;�z
[��k�5\�񈟈W�C~*�����a��Dt&����dO��b���<�/�fdX�����&����1�Oh�0����oj�Uޟ�_�����_^~y���~&��j!1@`�(� s@֮2͍.�B�W��s�61����3P^� ��%�ޖJLe3����-[e6�Ճ
"�m$�ڞ�t��s��<<Ҕ���t\������fT��ЯY7�糁��ORQ�}�Hz����D�2�����X;�����^���B��z��n�O6��,�Xo��3�-�{��B�GW����"��Gܔ�����}�ND5�;��'���g���/�M;jS�{�!�:1�.����C�okϫ��[������;���s���C- �ԫ\-�^!�I���T_��$~�]t'Gu���<��m��C	at�F�N����p�k�9�P������:iV�	4�	y���ü�v�����ir$�W�,,�Jf^��c=o�b;Vw���p�M��Ī�.0J(� ���;���?_/mV��<�(a�E�S�&�(�v�S�)Uv��+(���@zp;�~ţ�1H
��9�a�	���q|��"�!��l�0�WR���o +ɥȮ���Wo՛��/�E�9̓?�h��p*+U�pe\W��
m&�F���>�o
&U= U'&�e��T�c� �>|:ٽ��a|DI�5j}�n�e��6X�
�)'`�M�VZ
�$H��`L<�#nL�%tw�ɶ�VN��%t��ק�NwBP�X�)�i���!�CD#�ġ=À����˗�vR��b��y���^rQ�g��E^��u���C�¤ώm֒�Ί��԰?��h��M ���G�X_P�K�`�Ⱦ�߬ŝ��K���<� PnP��*0m�P��bb; @����h�cr1v�Ϊe���P�=l���ծ���U�Y#���3���!N����t�7�(�9hn��&���rT��.L/?�{]9� ��!@���NCC�S%���R3&�p�2��7���f_��{;����π4�����y��Mq��|U:��n��D��+1Ra����n��w��xy\^j8���4X���0����Hv����F�W����y���A���Q�&ܸL{�!��;��fj����w�gNU��g�k�؇PB(꠨������`��>���� ���mW��[=vg�6���3�]H��Ex��'��5��0��+��,�y��D�t�_��������Ђ4���A�Ş��,���6jD�%�.!CY�d�2�t��e�l߭_��������N���i/��bS,�w6*[�jUT��~W�(B�9;���CD��<��}Y<���L��.�)ݝZ�����xh���)7��mx�Z�d#��#��D)��_�yq�R�z{AF�$Юe_��
���)�)��}Ĉ"&m�Cȣ�[�=�9����I��Z.�l��cU��U�����+|l�0�}�;�m$z?����t���)|ZW��q�4��ue��&�������|J�k�̱<a�L..W��jX5�2�A�swA>8{3����|z>M��6��n���(7�b��ޯ�SlJO�8"�7p�0�������X�+f�/���gf��ۈ�8/�Ǭ��\�F�VՋr'Y���L���<t�)���A(�xmUj�ы���"7�� S��K�Қ�(��b����P.��K�<L���� B������p	9	y�ͣ3\Vx�H�"����4�(g*�%�Jbjg�o�b]9U �yJ� "z���@��x�zrvw&�Hoc�e�e��Z�}2�����h�L/�� y�����	��g����d����(6��4�������f�5Z��JC}�c^$;��G����٧΄-�3<P�
 �C��}�j����䕻p��u�xX��}_N�Fă~��5��H�����1�M P�nr��c�U�j{Xf�X=����] �s
I�2�n]��l6��`��s-I3��W�qIҖ�È��쓼q^�8W�v<�$ێ�m�l5H��)� �� � ���x�=��'g׈�6��6foj��1�����~6{��� }����B��������}g3v�dcS��tVp4
;�z� �Ă��"yIo��,@0��a�?����3P��O��|g�r�r�jU_��;�K�z��u�C�A ����Y��z��&��͢�~�	�&6NUo5���ۄ|��l[O*k( ��n>w�����U�d[N�ʋ{&��}?akR3��pUi1��l�4w��mΪ�<��E����l;6 ���������o� x��	Pǝ)..׸�\�8�Х������k���$ M����?��<�n���X����f�5۝�����
���bW�zyMA�3��Y��/��7p|�?5 uЂ����ε��뎠%�F�f�� ���
=T�#��҆�:�6�7I�U�W;�Q S�^���Sx�M�V�r�U�W���'����Ҫ|m6Gd[�0��u�M'C�I[H����J�
I:�G�R�}�V�̖�~�{S9����������g�+` �_�4�-��Wv�qg�;S2�k#j�(����2h]�ꦀ;��7�C{�z���n�����&��J�e���Q��M�j�" #����xt_QV��חw�>a�Ϯ
o���%{�,Z��y������`i�I���҇56l�F���/҅FW�&(z\p]�GՑ �'�_��o�Mp�%OێъI(*���Îd�7��/A�"dfvie�Xs���@>\��b��J�X�V��~Fǥ�~4�y1��T�-.{��5 ��` ���� o�&O��l��2�)@<9{<9{�N�2�����J �����9�s6�ھlM��[�m��*$���l��UgH&I�f��z]d�/���?��/4p��pA��<�[/M��7ŗl���\��V����έ�H��f��5[B���VqěH0hH�Kj�]�%cS����N���p��4=�*S������`n]( cQ�Etbg��� P�mEfM�s��v�!���ExC�( k�BЇog��,_�����<YXEs.@*�H֧ � ���g o��.�|����.�͞Ɨ���Tp�yR��mD�M�?4 w��9�s�f����[�wv���Up��m�t����^�j���,�B������?_��_R�@W���@σ���x|�����~]Ɗ��ʂH+$��H;6�D{47I�ŘŐ����Z}���g��U Y��z!�f'Un!�A�槱0?��K��؝������ ��՛�u7��ZV�i7��V:���ă�w��_tjj�4�w�2g�+���i��H�'��;o��;&�k�K2:�G�s��h��R	*Et �kfȃ����_�e"o�_0	w��9����v�ٽ�;�E�����, 	�^����3�Bix�z����w��y�a�;�~�w~]���`?�i=���^$��_<�>��7��?�������s��\�5w���`���h����̛�(D$�xAʤ�[����ु��d�h�MNOZ���2�ިW�>�ݧ"s[<�$щ�)�Y��GȗS&#7%��`$��&��$\$=����}�.8�e�{ߏu�畻{)A+����)�R ����2  ���%钌��ބxoUg5�m�W����-Mxc�@��������|��;9��+�Nԣ1M��bs*U����C���v�(3  +�_����~����.��X��F�Z�O��;�����s��������@�;�'魈!eJ��V��U26v.v������/>�AV�*�B��8�kY�N:�C��M��	���δ|>�`�%�E�˦��9r:�K��|8����%�j@��X�:�R#�}X�����? �y ���*�����7� ��L��%�.Y'��H�$�]L/�o�ˏ�)Zٛܥ�o�ͯ]��T�ͦB��k�Znm�kkcM���a\����?�?l��Yn�(ǐ+Y|e��{�x��g}-��Ω�I� p)�@��A./�4��loj�}���K��]��`��ճ�~��?'� K��K�f���6#D ��p���A�R6EKFr]�-2e �%;�����S�IoŤҪ��3�$O�� }�3=��K��c���6w��c-@�3 � ���	@Ko��>���{��r#a��S P�F+{� H�;�� ����pIY	�aɗ��O�̿����C�����n���jy��S�/�~�6�eЉ������^�wC ��ܬ�f�fW�<3 s�0Na3E�������^�� zd;���I/[��#(@���m7�؅��U����I[�h0�i,*�y,��$���fc '�b2O��@]6���o��v�s���pw/sۇU4��Ŗ �QM��;��I��W� >�� ������F�%�Z���`��ep�+`����b-�Sy�4B��տ����/n���j{����/
#R���j��s�	�<��s���W�YP�z[��l��А���7��B������.�P{6Ӓ8�t�bGVѶg�ڍMz�  ����#:rS�f"�18Y�͐��d,ےu[:��^���q�ݽ��� @[z3=�X�)�� ��$�%.:��!o�� ��������|����p+pS^}���f���],/�"�1������89���J զ ^�����)�گ��.C]�RL2D����~����D;�i�q���m�y��n�z(_�ɪ�E�ZN[/F��ء]!�?��t�{������qZ��z�)� 1:(���e��t';�;� �,���>Q�
h��f�%c�����/����׳�xtij��q���RQs��-i3��ݫtN���T/B(O4:ll�.A��6��7��7Sgpt���bd1)�#t	�X��ڇBxmᵁ��v��  ��&��HE#"S2�ud�;�����l�1�cݑ�|lv�[�g�nC� ��S �S  �����e:{{����^?�RjX����ٳ�y�� -�8������+9�$�@�_����x�
 {B'@NM����ɺ�T!8��b}#��= ��#7.��i�±�}#�_��Ph���c�Ѻ��k^;����y���~:���ed��m�(���#R�j�%i���yV�y^u���"�η!g�z��[8������>��!@��cs.y��sp��\u��r��#"B�r�o|�3_����v���>^1��bE�لL��d���U:G����J%O@�6�Չ-B+U��;�;j�Iʚ��+��?�j)�ƴ�Na.�7�2�BXga�����]X��־�V�VH����~B�I�t.Q�z��yYl��Ι�E�v{��Ǳ��x�8-�4���>@i�㡄�4O�xN쏷ou �d"@&b"G��;�����|���tp�������v�1%�����r,Z��l�G�*U�2�:[ߔW8��ޡ(<��$d�������A�#*Sp؉}��� U�uN�n�hU�oǧ;6u[�҅��r��L�\��]y�kg�璞�B�����m�O�?n��� ~��=���3pg��J�f���?K�)�:n����g^�_�Q���/��?�t�B{n�㗷�+`\�(ߧU�M�3�G�dW���T�k�ۨ7�v\���VMsHV��[��?V߈�+K�bYZf����޼�����?�Y6���W;�}�E>*z
�S�Dd������v�Pn�q��M��"�m��nF��*;��͈��%��^%���z~�N�&���C�i�痉ն�=�2�Q����+�ěo��/^.� Pd&M����t }c�T�F��B�������!��rQI�$ �ߕ����0g=�Z^@��	Q�d>��lD�ꏨ�)_��U0}�����-؀��:��a���_ּ��B��H)�d���-��ț�2V��Y$z�����Pڵe�:B�״�R+}��/f�
��c���ۇ����pY�R�S��"�َ�λ����ڂbs��"[��
p֯�C0�*UW��`����ҪwX�@�_/��;���T��,lY����P �R!�tT-�E�j
бk_�8��[�o��"@z��;���3��!��0��+v��DP�U�b)��$6�\A�hϕP�jW0�w�y,�10}����OY��%B�k	�v  =}f_&�����
w�؎a֯R8�`���P�Ó��@�!�q����?-��K��b�		I	�K-����(�ն?�N�>��x�^�Q	��0�TO�;����Y0U�Z+��k�HQ�Qҟ�t�nkoL�ؕ�랼�I�1���v�f��?�($�*���k_�z�KF��'5[�hH7A2�E���އ���NKe搙����izv- �xM��k����۱���r�����]P��7���\�*8��h��%�7,�K<�����ݪ���{�e�+�R��`.�w ���k'�P����V�Y�%â;�H���@����n3�ElCxBvW ���7.��vw�e|�o�Z��=V̜�^n�E�).�rn��T]橆

?_23���Ǵ�v  ���͇}�� y�x�j=�x��#C�����?~���s ��3�Q	��̝Y��(�GQ�7�Ŕ�!��k��Ԩ7�x
���:�a�,аm��$����u[e���I�;��Q�s^�q��ݷ��O@ ��K*ƶ
��N"V��n������5����K�S� ���� ��i�7.�����N �:@�U/[N��O���*�Q��������@ѡMuUb{��\�#�2�Ĺ��K�z�Ի��"�E0��(؋jr����%e�T�v�jkߒ��6��v�3:.}����nV�O@�� lvֺ����M )�����ۚ=P�{L`��	��9�O;��X�;$��x��� (<�S����H�. �-�L��/�h���m�V��2U����@`U���:�Z��It�f�i�I2�v�A�Sv�v۵->C��}~�[nF?��/~��huhnַ�� �i1��*���G��g	|��X��#ta��b�������XX�^t-KB"�'�;�B+`
Ҟ�~d~������A$L/:��>Y��{L̴�6\S ��C���Z
Ѓ�l[���N���\;QӿI�]����Q�vPr�l���k/��.�#C}[����ц�s@�=rQ.D���'5o���$P�W������c���w����1'��}�p���.)���nq���dUDD��][�m�/�Cކ5͹�Q��#`}=UzY���(`[���We��>�r��l��l?t(B��C9�"��ev������y�G�@��k�Su�H��|�;" �$>؆=��Y�H�jA:+�Z0�sѬ��>��O+e�������	le#  Y6"H�\l�a�Q��*@�6�3Ŧ(X�.\c��A
��������̃�l�'t�VY�������u,Sf�}İ����.Q&��<Zd���܍�F-ɜ��x�! �o~����+��X��=�
��!Q�P�HT���z�.33{��Tp��˺��A�0�"!,���x��~9�R�����+��_O��X���k:&H-��<'����*�`�{`_'�^���zA�[�������Bt�zO���w�sg�0
����7y g�=�&�Ó��-,Ц4����'���kv6�SaT!�E�P��=�9����O�6����G ɹ�"������|�@��4ګ��v!r�Xt�b:8���ID���2���:�&���-!�B��-��p�2�_-�T6"b�9L�5���0���Fy`o���̺���_�����(ICQ�j����g{۰��q��bQD���v�C_��������0G;y��}9�:_����
�,JZw�^�/��CIOپ��C��k���� �э;�����]߇��=�P�����hAQ=B���◗{D�����_��	Q��X2\�r��'(�R����}x\U����|��5'6R�6�I�t[���mL}�����/��g @���~����Ѐ
H�X��ď�������D�Lwq����&��+�>��\S ��`�,���N�R�RRA�fnK�ڟwBnBV�$5F��W��A�xA�{fm�$�M�f`.R�5�ͫ��n��H�i]V=;����s�|�=�)h���5p�F�����5]��-����P9�����3���K��\~yV��^�P��+t_�u
	���~g�\]�b�ԤpX�Je`p ���F�D"�PhW�Ѭ�,?0'D��l��$Q�~�8�6��� �k�;궄W�l��e�n���B����fp���
p�~3��@	���Yacb�Sm���% �d��Z����Ҽʂ���w�9ɶ3|�^�,J��/g@n@^At�̾�z5"[��p{�g�@�|�}�ڮ��W{�&v�@љ4 �>�IV���VK�H=`�B,K@X��W)4eߵ��B���b���&�5���{e�։=��s���;?K�� �Kjn�y�"C�
c(<��	U�'���PZ��""k�BH�ϫ�q#�ށa�0��u����=��lDd��UF��� um�&�|��n�_7���ǿu ����μ.��V��$��Q
H#؞���DbrG�ã
fT%۲繧��Og��E���*�����w�	��H2IIB��w%]���F7�u#��YJ`����M��$�H�b��(�w!���ZMzpL��W_�T��(�~7"�/��ï���s�W�"�
W�TK�
��4Ҵa�i3�Ԗ�{�`M�7�+�T 	��MƬ����!5;�֯�� &�������U�����A�$�BF3ڇ��A�v΢<r�@�%�&�
	��PT}���q�ձ�h�z$K]��-���ڬރ"˟0SE���G& ��0s��*`z���HEdT���Gэ|r/�)ٓu��5؜�������@��a?݃���r�eo'� �V,b�m:�!�V�`�����Ppy��n��U��	`�Z�GGA�1�B��\�L<@�!��e��X�98[�I�+Vy�4�շW3�D��d]��
�_^m@�b��]�5�W�	%��V)�Y��a�N.0Ol�<�HM�ǻ�"3�b�S��U�!
�`��тT��9K�}�ؐEu9�i�XH�Ty�5��?p��Ho���Ђ�����}i��a d�m[��5�N�!$�����f]���b}=��a�L� Ӕw<��j��R���W���0�����eڹ*�:�	��ɥ]᯻�I�8�E]���]�U��� Ȧld[��:\�"S��(�p�@ۢ���^6�y:O<���̌y�b�(���2�|���Q��`
���ìu��1�"I����B�Q��V.*ѩ��&W�o(?�o���_�[�{��ߵ�<q�  "L,��Q7�M5d��1Nۨ�3�w�����^<�C7�DՌ��W���\dLYOu��`h��� hi�����v��[ʆWR��}����}U��V�%��� �W�6���������]�:��㺲)T�g4��l������4�Q(����Z"
RSE�cZ:j��� �mEo(�`a���]�Wk�be�s�0�C*o�E"MmnV��ѾU�ߵs��녞Ow`u����z�h��(7}�p9����\k&
��f��a[�[��E�OLV��H�3p�������y�=�!d��]]1�R{��8��5R�psv�\}�ǿ�������I���ί�=�����������?i��z`����W��*�VB�x��-Qd��O�����~[bqO<(��j=�w��	���8��w(� 	��j8���M�PԚUk�	L�(V��8��۫������t��b���z��ܻ*��~94  yh��5���m�+(�fVqmZh4��^��ް�}�4Q ���z$D�c�[Y^"�W=�P ���)F�o�"�L�pK4ڪt��+����_��v���R�E]�l_���lo�X����WȾ�'��|���㏔�X%u�v_��%
�T�E��~&۹��N;?��<�WS�����n�Fj t>�z�x���*�flr��`W���H���U���W���Wk�ů���m.>Q��*��GN�Kq�!\\�:����/q�MÙ8��F�!8��?a|���tG��h
�wb"�M"�&-���?���I4����*R�)�,XvePj��7�D�HN� 5�k�aP��W�G{��?�Uyw���*����ٿ���߃��u6 ��/�`��9㺨��6EV���_l8��**,��䛝�����>y�T�F��ka3@E��u%�w8�a�!b�ц7�L���L �^�v֓����[��o�_�٤�Q���f��o]���y܅�8{�	��Z���:Zy.��E�`x��W����Un0��b��HW4�iK��� ���?��������6����j4p�.�b�	#FN�my������j��Iw�*�f���s�Ƹ�oL��D�ϣqvw��_��� �m�l+pu�ڐ�MƘZ��F�L�x�)���>�I:&�&.�0�1&��:�j�Ov"X�C�@?er��88h'u���c�3.�VG��^}[�E�y2�r	���8�g�*܆5h&B� ���}�/����< �l�W���T����Ʉф��h���o��\��=� �^,��3�T~���p E�H��������-�L �egY��1?W?��ዏ���m�o�l�<W�Ǌ?����k���<\��_V�}���ᕲ!L����O\E��@B˟̿-	E�k��) ��ǖn։o&����8�Q�=:%n���+O��j�h�F� w�*b��1�V����n�J�0�����G=��D����mX�ZKJ��e�c@��y-Xq�^�xA�`��b(&,�|���y�َW�+[��>Jk�!# �����a,�4(P$H���&��� .g���8F��` ���Boi�\����^��$b�I5��AEN���kE�e�=� sLWUTZH��`;������
��<4#ը[��r(�V/U" �"4�d<b:Cr@K̋��H������"����������M�w`3 �j-������������8ai��M��
�6�]�H�G��
��hq�c�:A-ˋ�2AA�z�����y����U��� R��	��y 5L�լJ�87dR���	��������Y�&���@s�k�2���qP� d�q��H�V��
��d������S+��E'�+g�>��A���1�[��W��F��GRd��A0��L�0,o�&S���f��*9rS�U��Uq}��MX݀�^�D����q��_�^~C�>}�΋"�Eĥ?cx�
	��$����r��^D8
�t"5J����zwm�Ь"U�A�`��T�\�2\�t8H��6�F� ��|j%�l���K�3V7�z��G�ha5䲪+�6a�`A�@���)��tN"n�� �B��vH����\[�hm�ci�JI��5-�Y$�P���cX4�jF�"�K��x.u<��_t�/��{��Z��?|D���B��"/	���n1ʥ��j4������z�SI>��B� �B������#]`A4c6�t`�lc^���S�Ec
�-��'Ȁ���|1.���C	 �|�Q2��+A���A��$>H��PPD!n�V�=��Q� K����`�pA��͵���F<u���U�Y¹dp��A�m̀�f��"k6�&z�@%���̮o���MʮoBv}#���1Q� �â��י�
�5�d8 ��2ް�.$�>�g�p,j� ^P��z�v�լ�1Re V�E��E ���"2t�;X��r�|��9��L;�m��z���%[��z������(�W��!i�H��* ,��ް�D'(҄��V��h>\�`BH�췛kk퍤�("!Z�,Y�tm��--YLvNQ�*�B&�ȥ�;=';=�p6P�GE`.�����/ ɔ����Z��OA%����G<�� s<�x�V�7�;	�(t�,�� ���h�����@����O�^����-���B�e=��bQ{N�Zl���g}T`�Kk���]C]JT ��5����ъ9j�<� ̈́Y�G+�x�_�?&b��B2d��\�;���[���1H�f	git���?���2-��l6��@ 0C���nP��}.��Ge�������1Q��� e��a:�CF�� 8�s�������L��o�9{X�O��8"Q��
xiNml��]4
J� M�A����*I	]�9�^�m�9E��b�m����	��������j�ʴ�Ծ�3�>#�Ʒ7Ʒ7��XZy6�wW�����"X�*ŃA��Y%�h���Ǝw��������OW����cg��5�v^E[�v�`)�c�h�V��d�#{�v2�-�N������?�|�?}�씶
2}Ē�ㄬc1�> �����x��+e L����h�ي�-KC�U�➚�������	���!R���hp����������jD9���t(��LS��.����?t�9,7E5�=�dp �L�U�E�������统/$kU5�a�S�c-!B���5��1��yB�GN(�
-�	!���\J��4b  S��ops�];w�ڈGR����F�T����F�.Dr��P��T�X3,/��#���߿��LOS-�rV�a>���מ��f��>.(Z[�u��5'�f���'��KB���I3Q�W�!�\�M���ٛ��خX�@ʮ��   0��/no���U'�i8�
i h�7pM	���zZ��{��lQ��
���%ܜnV��g�C�@���ߨ���{�j�k��\\=�]=g�x
��-P�B�0��&�e<D�TXX-ޒ���4�{�����؊��d� 0Y i��hg�ۻC�����4 ��FF舃.p;+la���`�\e����&^��K��T 4��".�Z.H ��#0���e+�j�����R�T']���7����s d0����:Y1��L�XV��,�^w�����"Zq �V��R� �   <r*�����D���$ 	�h'|�|���6QUF��h6�������/?����Zk��� ���f^���7���8��7?Gd�}1jǼdL/���vw�x����� X��-�&�N^��F��(��(F�+�:[�O:��	{q_[�v��*� ��3g7>+�����h�Q�y��4 �+TlO�:�pA�h#�픛ls󝟾_��=/޺�yI� �t�;�������ǣ��fA��D�˿��nPI�B�^�Q_������^~��qq�v$�"����M�hp =�L^C�h�t��D�'*����c��.��1  �2�^���}l��y��FB�1���v�XՑW�ؽ��|��ן�����?����J4zƾ.��?�W~|�~<�'�����;���z� �ck�v���NE��m��(]�7 ���=ke������ٮ�����.� �z��#���+��W���g�k ��-���v�ݣ(+�0la[lX2�J����;��巋߫����Z��WAwp	'�����������|��k���-;¦�@d@�P'�v�_�d�� ��~���*r�N6�x�Fwl���P ��nޫ��Ol��m�y������4������Q�W̔R~?b���%:<|�g�.dp 20G(�ֺ��w��]m��j��ϐhZ�o
��֮ۻ캩5��4�� �z\�K��D�&";�a��r��t )Mi ���>���2=GO=�\�X 	����]�_$R "��M�8���zv��d�5QJ��pK���:ؽ����6n���g ��W�_��x���%/���圦��R	��~�{Z��#�!� �L����/n㧟�Bp��|I�t�� p@��"�ц�
	��,IB,��;��K<~Egx ��T�!��F���7�K�~��p�G��!ݭ��|� N�SC��4,��O���]<1 �V���)�/R1�ȃL���t����'��#,�T�]�B��ĩ���(  �$J�0�:y���zv��z,� ���f���қ�w���x�
*D(R��|V�f3_):M���߃.00�\�����h���\�:�ky��+V�QAAA	J.+��}=��=A��X�9{�NIf@�;}7��d1I �
"��__?����4$Aa�z�>^y������y�M�m�%eCZ������ �Z�H�D��	޻����� ��.�ǻ�R�J�V���[J+���AQi�����ϓG	�4��%)h��&�㊕��A��������[����ap�b���}��n���=Ɲ��`��W�4?�����)�f����_������nX���B�? dP�L#������X���KR82X�HΣ\>q>�x�]'�U`���(8��?c2Z�$tfڧ/.���k}�l�	�Y �Ek���_�ңT�3������?���M�i�Qޭ��;��]:���d>�d>�:<x�|Q6��+�td�� 2�CҞ�����G� �Y�@�M�`�;��l�XA  �1œ#���N#\�P���~\��Qc��!�̧������䵃��d�X�Cp�2Pk���v����|��|��4owlK���,<H�ỳ�'V�?V��+fWv��P Hc0Y0�0�I>Z%Db����8��d6�e*��=ʟ����d��Y��q��4��;�߂��`jVW��t}w���ˏ��-� �v����k�O�v%�e�aK�Dr�Ǒ�a1{��$6	%�h�\�E^�'�E��3Ʒ�m�΃m;2�Mx���ɭS	���s������!  $Pz����Zu@��,�/v\��V3�ݏ)�W��	4�jb�@b��ZCg���V � �$���;�*$���X��HԀ�l�� ����q9P*Z(^+J�G*���pr���F�C�q�,��Vpq�M�cn�0�`�af�( $/����M���:�T"@�c�ɠ)P��(m��y��l�f*������߭:�V��1��
��c�`I�����nS1
 H�D\��o�.`Sզ�g7�6<rѤM�!�$�54�0�S����C�e߾�����w�n�j��9\.|�"&��9��U���\qKإ,v�կȗ?F���+���Ɍ�n+�"2�����f4V���5��Z�������:h�}���/�p6��;�v�i�C����^�:BDT�a"��I��JS�(n#��y<>=�� ��J�Q~�?�[�V�̯ ��@�v��~����n�.x ��]��ڮ���@�}+7���Ǉ�W��y�lGO5�U��%n

���)�Ң�$�k`���'{ӈ�B�,un���J}����K6�����G�ڼzOـ�~h�B,����5i��_@��ЫV��V�� ����C�H�  E@>����(G�G���F[#�{�ߊ���_�������qi
��|]�sc:��V�y�+k���fg�"yB����.v������"�I �A�;+���	 ����/ @EHѥ���o��?ؒ8.�h����=Y�	nO:i]P�9�,N��&7�b�a����j}��
p38?��a�N״��K�d��x���a��  L+L�Nzk�-�ky�/�ڑIǥI�z~�}����C�22	�A��Q�U⦸Eu���E7�v���8D��ض�T��M�$Yf-:���c[˱E����цK���J�4(�O��^,PG;�˛,_R.���w�9/�� ]�=p�8�pD`㑛�X���~	Ɉ6v������Ul ��0 Y�����g�  96�}xa~�pa|���n|�1>�4>��V�k�!ȭ2D|���W�L�4��u�s���swΆA8&Dձnv��20ϼ*�ݽ��7�E�j<��7��3F�����n��� j%��Ʒ׫Ƥ�'������lb���	�q���ܽ_�
��c�ޣO�~��]Q�؃Q۱�����}�7pɍ�Y���e�O�9�_��59�3~ �_}���1 Gw�K��\�|�&>�Ni�B�k�a�c��
����|�-J�uA;x��h��E�Nـ~Bj5q�>�w����I5�L9��@�_��sX�͵�W���ֈaË7�x���8�ǹ��y�T�9�S��r��Wd, pd���pXB6hq$���b]e�g������ڈ�	1�,�A�5y�����r�O��W��W@�o&��B"B��5�P�^�i!���)�W��&$�'rT2 .��tN���:e�]G�f'%ub$P�p�d �� ��w���y:_�wo7�Ͼ^�;@�:y+�hO�0M�[r �#3���xG*�/��7����K5��.�'��)w�kw/5rb��E����;�Y������c����ʧ@:;��xl�S�-�nOJk��e�2�pt��Uȅ����#(�b}gk�)��uxM9��&�\j-�H"��C+���=+?����dw�`(��y���γ��Y�c�S�I�/^�2�a˼ 8J���p�f�e[m�_��t�z)��n�?TU�j�1��Z� L�K��^�J��*�t����}5��|6�l��"�-����P���uX���^����.���i?����)x[w���&�k���V>�
`�Q�L�s�f���J��:m�G ������ e�����PG���7���\� #� �t� W|3麿(�����R;�q����V�s� &	�dn�K\)����b��ɒA$�ƌ}��>4W�V���Q�ni˼p��� ��+]�2/�Ƅ�4��ב�c' ���z�6���e(�9X� @:h�������J�L�b?  �Y���ʷ���������wN�IbB�qؠTS��V����-�	�2���ɦJ��JqBJ�����o��Fe�I]U����m����@ݨ��s��J�� @��Mߟ�;*���v���5�{f��VB
�	P��˨� ���dx�0 �r��i��2�mի�P���O\]�{$���CK? >�F��n��%_�/ @���e����A��Uȵ����Xi
���M+��kAj� ��S����� W���� V\�J���oC�Ud�V���wW}�!�	�i԰�6�k)e�Ү�f{{yu��`g~����_��;���4�h*�n�$[rG�
�bz�����³ى`�1�����ߥ����?N\W]�{"�E�w����c`b��sw�����&��`z��<��<�!�ړ�B�~7�Z����]��W+�:�)W�V��P�"���|������{w����}B[���M��^·���I0ma[>�O;`X	Zh`}A����Wς���k���~���! �N���>���-�p�ސ�8�ᾠ�,�Ԫ�� `��^���U���7�:W�k�/c۷����πic���f���/_��� ��]]z\C�����9��Oa�pB��-%	�����AjH��x�ҋI���WPpx��h���Xe��̋�^U  :j�r�����#�h8}�J�����q ho��u�y��\_ڂJ��O��'rxl+ ��	[�E�㌏��Ċo̅P.��$�1q�/>����m�P���ͤ��C�E�,AԬ�iuM�Т�W �&m;��/��ЩO��^��'��^�@a GjvLԗc�Ӿ�/�f*��=f�h�kF@ъQk
+��~z��D- ��T<�~��~�����F�|���˯~���{ �&�fY��,o�n#gj������w̡� [K$,�U�� h�}C0qD�h,���1Y�����
�ֻ%��ߤK�Sp֠jn����A�p>�Б�_u^�M�b%�>�����w������
��R%B��ZaA�+M���bD8��OOV{:]�*2��x�S�G�]��p)�	\�m�7���c1Ȳ�>d�7d�o�.�z[؄�֩v�|w�߱�v�<��u���:S� \����@�.R�h����m�����/�}�9�WuZ�V»U�1[��?ё���lx����a���Ey &�8>�<��^mi�����0���-&F�Z\-��L!59b�5h�E��/���(��8�;�i8�hz����քN�s��/I���r3~1����#�M�<n���׿ �V�e���v���R����'n�P�f2������Ep�����n�=�(B��3m�k�- 'Q+��f(5�/��Bw+ *�U�;��%�Z9���	X����a�|��Mv�6�Q���pIe+��.�n�����?/� ��H��,��	Pt`i�����i7�"a���F��\�u]0��Fw5ZV����q��BTY���Ϣ�G�>�V6�p6 ��W��\�暆[�ȏ P��O^T����@un���Gnq,l9X�U��2��E7�@�/|qH��!
�4dS�v
OsO�JЛ���1��Y퍂"w�pR�(�߳�{�x��u����>�E�vpy�as���>}^�*rXCe��\~
�3��'(��T@�t£�w�M�h���r�V�ڨG�j �# |�E�i)F�! 0��b{&�I��C)@m}�z�O�����1��}�͓�<0�t�u=�́`]�Zun��
����3o>�_{��m' �;��wI��#��e���4J��lDɦ~)D�� ��ʣ�F;c�o��B�B���v�B�g�����������9CO~�o����������/o�λ����p�1�֓�T�F�Kq�mܩ�]Tg4�Y��mT����ij�F � �h�ƚAa���ˢ,��h�J	�2ui�*��?���xX�
d�9ɘ (;�����H��f=(����\�-(8���q��v����b3�U�ѡ�`h#��(��r�\�E؋��r�j���ӫ���I=s@Xkץ���̥��%X��q���������@�&�ZO#.�
�Am�����ux�P���h ��ԗZ��T��p=
�@�nS��7���O�& B�%	)�1�³��VGGK��F��s�4EtP�3�u� Ђ�Oj�}}��룆^������]���Ķ��]Q���^����SF %�v� ��J}ojL�h_��ސ���w*�a�;��V�.�$ (p�1�ZݾZ���>�!͵������ ��Xg��e~�1��h'`ʎ�:q�$.H�+���v.^Ǐ>���k@	J+Ҙ7V�AҺ6��5�QW�����5��1�Y�Nmŭ� ��� ���m~����FA�{����i榘�q��}��}/:����wumVצ���������aY�������M���(CY�o�?��� a;*�HxS{Z#�<dM�FWMS��X�s[�uC�\JE  @�1(�^���g�L=�� �m����ɇIS��j�3�iߛ���@s�~r�� L������~ ��7��_�j��˫�� �P3f_=������~Yٰ�t?1�S�G!�U�j��(�9��p�Re�����
GB#\cY *(�r��q��)�� ��L0)3.�y)&M�4�Zf�2v zG��4=�:��{�X5�]����b}W�/]]�����/�kM��f���[��g��+_����jǈ�/�W���?���/��݈��(�U��Yk�M�k�Q ��-։��� F�R����w>�xUM��AխW��N��*�%���Ƥ�c�[H��N�p�v]B^����#��=;�����e�"$�h��������?�����Z�aĲ���>�ڏ�����ӷ�ߚ1�`�
�$�j������=�7�WEm=5 4�3�*6�`.����^���U=�p(U��ʉv�ux�˩��g�}��弘4�q�Kϟ-��2�� ��ʾoȾ�"q.�t�G�L��f�姃�9=	�rX�o-���z�����&�+��~j,�����f~�j\�<kΞJ�[t�V�xѢ���"��ŵ���Rr`c��[����z~�I�CO@I�L�����(t�u�! �=ɽr^�b� ��������U����6�����v4��� �2 �"yk�[�����A3��Ks����O�0�(1�vQ����f�Ӵ
�z/Ġ[���]�"}�c�V	��1]��'�#�2ҥ����y�΋��4b`z���*VNWL�yW+k�볓B� �D3����]�
���`�ш:��0�.�{� �+�S����%uo��͢Y^�
�b�|ή����R�E�B���$��5�፵�k�v���yaG� U�߶Ё��ǧloW�(��0����fP��Y�1��b�XIZ�!����[ @o iR���9�8��Mz�~Ì���|�E���jK�%h��1�xV���f��v�����x9إ���h�����J�u�M�;�=aВ���޼�H73YX�ҔU���w�+a�W2)i`�\=y�E\>�.�o���g� �������$K�p�F��hd�6�<��yn���xe�+`�l�!ښ^~]��� ���7�I� ��̉����Q��|~����lI40��Nx�"�gL�(�SS�IHY�K�	���=��'��������U fA�;t�\�_�|�Q\K_�,�����$��2>~�����-hJ �e� �������� @���x�[���a?���R�Q���ų������]A`����ũ^������g��@j��R��x��塹x�����<1;�U�G�A@νn����~�#��*5����**I���~���/^��T��H ��b@��? C���&@��m{�Q��>�cd�6>Cg��^m~����O�#Ylł����h����^��h�Ydg`��Z�n�>[��x�.�s�\��y+ӈ�����6�6?�������
'������x&#�C���qҋ�&���:��? U���܅�r�j{^͗�E�@�{�IKjw�������]�!؊�Ė���`���t�8��σmƾ3h`�K�����Ϊ���y\��;�o�~q�� �f>��_�{����P��v�~�h{ڧ���<ER�x1V5��� :춪�g����B���)���HKGyv���%?�rzb�-ح C,|�_��!~R������V��t   )�<nA����ﯙs�9�Y`Q,��X�'���N�Y��s��-���ݏ�E~���:@_������MO2���q	����A$u���?XM�� J�aj1֣>�<ې	������j�؜�j�/��� ,�_ESX���x��ju�+�����/Bd"�f��͹Y4q133$_�����B�[��~�S��o�|�Wp����B|-�H�4��mA�0ޞ� �~0h���`�d[o�sw�����z�C(AZ���������Q���lo��7L���?��!(De��C�/R�I�q��b��=fŃ��ܷ�y9��l����矋��?Sdh#�.�DF>F;��]�e^�*��  w�`��� ��eV �qhݳ���Y�AT�7ET@&�3�M�����7�W����L0�^��? i� 4�H �'zo ` �8��~���ݏ؜��}�e  j0���㑌���/ݸ��l��2' �a���]���7�V�R��\���qV���~Ը���' 7Q	QZ�6�����^m�������:  A#�c�O'@����w���S�pH����<��������s�AQ�S�e�и� ��73R��/�Ӱ9=P��B�	E����߷Ͼ�~�G��� �"U��m�ݿس�د����sU_��?���O�[lk܀�	(�	���?�0�5z���'�I�a�I�Z�5;��>�漨�ʁ��Æ��MN��/w�������;�۷�_��i�8�U�=�gZ�-k;��E6��3��9� �_�5` #�	��H����OsA�bر;���ڶ�� Y𰇐�ژ��ZX���}燻o�jG���� ��Of�o�۽x�pP+���)������z�-���2�� ����wCY��� 7 {��^2<�t�g�:���`�n_vй&U�E�� ~HZ������~�0F��Np��~�w���)�38T]��g�o�9��.�e[�bt^�@6]�Ǽ��&o� ���� �m��S���8̚�5g[����%�#Q=�=t@�� ����:�IO�{?��ҏ���3��|�Qʒ�Z	���m�~V�r������zJsـ<*�l6���g��t�^ H�G p� �O�<�����q*�M�u�v�lu�V۵T���
��W d�6��m��s��᭏�aE^����)]݂v���d8�V!�Ν=Nz;ԥ\Ug=�]�_g�\65���[��ׁ���ӑ�"d+�<����q�5ijL��P[\�۵�A�E������*G�U*�����%n��CA�FA$�c<��ZA��4�|�Ӥ8���^��-(��%@��� s� ���#� ��� %����r�!�#�����@����D�0�c>Z��<�,Jj��Cv�Φۇ��(��f��?^o��mR����χ�� +�!Z~A��P��e�N���M����`_r+r�� � |� D9�n!/s�W#��:����gK�i�\@.���wɡ��B�� �Ǩ@�k��o�{���XQ��&� %͘`.I>��?�.���|�LkPN�k��}V<�����.� �P
�x�r��Ykf��L�ZƖ��v3���H#_=�k�Kj��<3.9��u�T���B�ʵܽ�x���kQŹ�3�9�j)�����4���ħ����z����X�:d
��
 �>���4����4 �Z��g�Ŗ�v�ɢ��q�d�0��y��WC�edV�`�Jj^ی�������f%��*�>h~��rY[�x��z�1�qJF�$�G�Lg0j���T䕶���3�����u�+��({�� W�� 4y:��� �%�n7:�9B��!E㜭�U�x�`���<ts���c�$j��d��)����U�BŃ�����zw������&�L@�E!�_1�L9Hˣ>u����I4�C׶��v�� �Wnw@.�  d,�V��@�� b�b� �lD�l]K�����9��fQ�u^K�C�;_��1$9�l3�Y:�Qs*'�'�Fv�ZT�<%c�xuݭ?�mT�2�lo'��]���xAͮ��SZ�$˥-��1<�j��K _�ݩ�	8%h�� � �y�� b��3�"B�kI�Rw�dE��C������e����t����a��YbF� �P!;�
��[B.ë���z駺_PTWx��]f�b�ˣ�*��'!q��Z�C[*AU�ȋ�`���pz��% P`�/ �����At|�|��%���z���t��˾���n�y�[�lo3j���g|�,�c�j5;�j��i�����}��K�G	b'
'�oN�D�(I,-��*]�<����"�ڭưe\-�TcP�����)�_�
 ���/ �C(j1���oR2~�\FV���??V_���ۛ�Ȟu��1G���r����Z�@���Ҭ�RU��u��^�`k�B��'�}��a���"
$������Z�Ur�0�Zԭq5�s̯W�IC��@�s0�/ xw|��K.C�H_��,�����Wy�w=��~�<�j$1�{�e�[���$f��:����ȸ��������I(�1�^�,���KKJ�ȉҵ�g$���-�� �鹥���=5��:5|����F2~): ���Y����HY�%��,tNY��ϻ�9��ї\F#�9�ۢ��b�V��u��C>(��V\���]�$ʫ��p��2���q�"Csx���ڎʵ^�j�TŘ�<=7��S��/ T_��������ކ�ٺ_GH�t�8"I.��w�p{�{���	�^�{Q��-"��Gu��������K�QV����xP����~��0Pg����W���C�Hjہ�	#�l��]�%(G�$ �1���F�iEgo U����A�@4�3���!��s��Y笓��8���d����X$�K��a��"�@7��*����}ܫ�\�}��b�˫���0gvF"`϶�W�c{w�\��:ȣZ @1f@��8���� U�9����n��=��!�u̢�,�>��~賎��<��:�e�I,�RǀH��^ĭ��ݺ(��=��A�α���)K�Ʉ)0�ϴ�︞Z���2 ����v��F�o�@n�Bg ⭣�� ����|�,:ι�N#�籯����@�E�{��>�=p'�{���o���x�_[�X �{WR�"��a��,� C���8��V�6��SK�\.ۮ�v�i��`� �v�G�U�?�p�d��d<�7�n�˳a�>&Ǆ=/��\$�x�3�y=p栾~�V��߮7���@e��װ3��7�^t�^e� C�&E�،���z}s����
T!N @���NB �a:�D> �c������K~d��c���a,�2.jNHjZ{.��T,	st$Dd��d���u�'�v�_�魤v���7��~��e*|(2����w~��_����pm��@��
���$�i6��5M�r	�a%(6�8��w�#G� pi� �d]*X�]o@?�yɒQ��Y�H�>�1&l�","�T,Jj��CvQ]d� Τ4���?��i�����n�����W��X<���|�������x������	-���I����e܀j�c��VJ�6p`��� p���d��U����	~a���=��C���2^3��)�Z@.	��bh[�|��@ݾ���������ᨷ�����w~�w�`�K�GO����?��/>��2P��RW��Ҏ�vN�V2N]?V����E� V��m�!��W �  �^ �
+Q܀~�Y�5��C�c,��Ԙ�{Qł��zN��AuEv {�
�ۻ+<kc�������~���^!��*���/y����S�B����Sh�|$Ѯ�#��{���fR�J]3�@\S
��7p�r�P4�� kpn5n@��Yg>�������G�1�ճ�{�%��jV�!��;"��6��B�6�����[�����*O��A��W������:����Z0�ϡĞv\�n%��b�
4�I�PW �k����a����\�6`�t��MH��5��=��my�+�����T,��՘�Ԍv�EvPd������{~�����/����*���??~W-�J; �'�A��	�'nӭ=�a��Ճu���Dx���x�zW2}\�+�*���\����$�Y�"�f֟�z����>��0$=�Դ���ճ��y��P]5kQ5�F���P�
������_�ݻ�{�K�'Tp������x�yP�(��5��*h.ɑ)N܈�} ������+P�~hA�x�� `3�|��A̋�.  ���b��>6�C�y������>d7��:�=���kh��eL�=�rfP�������*(�����O�����W~o��F��-��o�߾lOTj��_m�.��3�h�n�fg�K�,��e? j��W�3/�|��M�� �hVS����i�	~?����/�ϡCu�Ib�����r�4jN��説�#�FU��~͑�ژ�����~���:�����`�?����t8�&P��Jr �li/�x�z;�6�Tӊ��; `��pb���ZIzy������f?�oB�_���5I"�鷽Q��^��.�o]�>=�9b����6]�zP!;�
*dx��������w��^�<n�������j;+8��!W�:���8� ���c^NmU�0�  �; �C Nr��� ����a��xl ��܁[3_EH����Ȋ:�������<�=��a��4mF�M���eZ�zP)���FJ�}�������Ŷ�I�6�����<�<�L9�ڀ�W�bߊ�]�Y�L��p��z@��� ����W%��[������pV�:ބoad�-���}��Z���E�:p}�6*�q�W͚�a�Q]�Y���Z����<�����ʯ���aa����w��Uz�S��g�J0�`߇�X�����2\�܂z,S�~=��Y�S��o��d���I@�z�6 �܁ہ
��g�LѺf���}�~���羟�.��y�[�l�4j�Č����tw�숭��>�`��1�����x���o����
~�C������	̠���6/�<�ݞϼ�cZ��R�f=3@�`�h��u�u�=~��,P�5X�;��r"��7����TԱ��n��z,����vlo3�f�e5�2�m� �EvP5T�p�٘�ʳ���T~��!��̤_|'�}_-���@�!���dĕ�y����Ϭ@-�d`=�X  ��: N�ʾ�VIzyo��5��� ؀5��'EoB�_�����f�Us�~\���ҷm�Dκ��Zp�y�5Fv�VC�2��*��>y��{�p���=H�����~���p@[��B80�����w�Km&��DB6��L��:N����%P2}L�WypK�n@4���$�%���ǩߩ����0���C���l�%�b�F���
T����������~�w�#x�R��'��O��Yi�C2PCS0 ki/��*������e}��
��	�������S�.�*%��t��m�l��rR>N�S�����F��|^�}���Y�e^W,KjjN唨	d
T2��(�x���߿9�OCx���?����K��K�ZɠϠ��)́U�$���i�޺,nǹͷ�%�ղ( ��S N�z�z6Wy+�~���7 ��;���� ��>ɼf��΅;��`[*ֲ�ڷ��b	1�CQ=(!G%��p�������7����|��O�{�x��P=�\�.� E,�>W���A�\�^����:Y�T����ķ���e��gy����A-�|�L|����k���;�e��b-�ݶ�����mVm/*�Z���I�:P"3Tl�(Wp)��W�����~��/<@�~�Q��/��8���������vd���z����q��p��T@��*�	U�//6ϝ���^�� �t�_�����������V̽j�rr��};,�Y�����DQ����$[���_�=p���Z�ए���矪��C��6JS�;�H;��3?�}��F2�7gU��9��0` �����C�N��;��@����kL��7bv��Ko��]�y�!v�޶��D�ȼ,���G���_�}�o�B�5��/?�G瀞��� P�)4�����8�)]o�XF~��j9ՠ�X^��� P>5�	W�7�*W� ����u��қ��V�Yu�erUcw�>���Q�0@fJ@�9'i��/��?����<~����g������p@�(F!�**��ql�[���{a,5�s���� �z�N��< P���� p��U0+�U�<Hwץ�ث�������m0� �&�Ű8}Q��?�9�KG �x����|���G8���!��rP����.�a�6[��
��D����+�$,�� �қg �jp�#W$�����x؏���>��;UN�w�rU�U���Ԇ�2��Ń�����w�bN  �a!L�zU?.S��^��f�g�b-A��M @\� ; `s]'bU��@���/�xH��2sS��\��:	��;��k- �a�#�Ii�x�G��>���a�2l}p��I��-h�@��.��XN�:y� ��� ��@�L�&�������-��:��!Q���
 �ܣ$�T���)G���|���9�Cڰ�@�#@�Vc9�$���
�
  S��z� �%�a'����	����z�o�>��k�	���V;y^���loF����/5hǗ @�}�G  X>m������"HG�왛�2
jl�Ω<*j�9\i�n���
����{:�ݏ�q��2*���loj�<��W� 1�4 ����:�7$c`57 ���5�τ���uZ�"�����JS�;�K�!8���a��ׇ0�
�w�w���� W���ɻ�B� �!�	bh+�����آ�GiO�y��r�%�$"�8�|���4�:,8h��>� q�~xp�/�M�S�N/ | ������Z��Ŭ��yNO��B�EdxF��:��a�z��ܵ����b�@�=�d ��� ����u"��?_ ���D�^��g:��.��|
uP��������Q�c/��ޮE7�8�������@�؞o ; ����Ӻ�>;��l�f�#��\���#S�m���-O�i:�F����(�5~��+�B<b���{<̡]et�j� �|~��?]��k�� V��)�_h������^��L���0<,܃��FȂ��������������n���:{<XehV �}|�^} 89��P�]�/a��Oז��{���o�����i��@^�ɿT�o'�p0��}�d�T �=�2  Ɵ�C���@�lrH�����������:I�n���I�EO�yc�.�a9�����?��K ��p��	8��^�ҿY�,� (Іs��>\��]lA��o�����ß�p���-���>md�x�"���h�7 ��R x���&�s�|:�� ���@淄���?������/��7k�������j�������j�������j�������j�������j�������         [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://hrbkc3sl74qh"
path="res://.godot/imported/ennemy.png-eaeaf2a3515a646940864cedc8617351.ctex"
metadata={
"vram_texture": false
}
               extends PathFollow2D

var speed = 150

func _physics_process(delta):
	move(delta)


func move(delta):
	set_progress(get_progress() + speed * delta)
            GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /������!"2�H�$�n윦���z�x����դ�<����q����F��Z��?&,
ScI_L �;����In#Y��0�p~��Z��m[��N����R,��#"� )���d��mG�������ڶ�$�ʹ���۶�=���mϬm۶mc�9��z��T��7�m+�}�����v��ح�m�m������$$P�����එ#���=�]��SnA�VhE��*JG�
&����^x��&�+���2ε�L2�@��		��S�2A�/E���d"?���Dh�+Z�@:�Gk�FbWd�\�C�Ӷg�g�k��Vo��<c{��4�;M�,5��ٜ2�Ζ�yO�S����qZ0��s���r?I��ѷE{�4�Ζ�i� xK�U��F�Z�y�SL�)���旵�V[�-�1Z�-�1���z�Q�>�tH�0��:[RGň6�=KVv�X�6�L;�N\���J���/0u���_��U��]���ǫ)�9��������!�&�?W�VfY�2���༏��2kSi����1!��z+�F�j=�R�O�{�
ۇ�P-�������\����y;�[ ���lm�F2K�ޱ|��S��d)é�r�BTZ)e�� ��֩A�2�����X�X'�e1߬���p��-�-f�E�ˊU	^�����T�ZT�m�*a|	׫�:V���G�r+�/�T��@U�N׼�h�+	*�*sN1e�,e���nbJL<����"g=O��AL�WO!��߈Q���,ɉ'���lzJ���Q����t��9�F���A��g�B-����G�f|��x��5�'+��O��y��������F��2�����R�q�):VtI���/ʎ�UfěĲr'�g�g����5�t�ۛ�F���S�j1p�)�JD̻�ZR���Pq�r/jt�/sO�C�u����i�y�K�(Q��7őA�2���R�ͥ+lgzJ~��,eA��.���k�eQ�,l'Ɨ�2�,eaS��S�ԟe)��x��ood�d)����h��ZZ��`z�պ��;�Cr�rpi&��՜�Pf��+���:w��b�DUeZ��ڡ��iA>IN>���܋�b�O<�A���)�R�4��8+��k�Jpey��.���7ryc�!��M�a���v_��/�����'��t5`=��~	`�����p\�u����*>:|ٻ@�G�����wƝ�����K5�NZal������LH�]I'�^���+@q(�q2q+�g�}�o�����S߈:�R�݉C������?�1�.��
�ڈL�Fb%ħA ����Q���2�͍J]_�� A��Fb�����ݏ�4o��'2��F�  ڹ���W�L |����YK5�-�E�n�K�|�ɭvD=��p!V3gS��`�p|r�l	F�4�1{�V'&����|pj� ߫'ş�pdT�7`&�
�1g�����@D�˅ �x?)~83+	p �3W�w��j"�� '�J��CM�+ �Ĝ��"���4� ����nΟ	�0C���q'�&5.��z@�S1l5Z��]�~L�L"�"�VS��8w.����H�B|���K(�}
r%Vk$f�����8�ڹ���R�dϝx/@�_�k'�8���E���r��D���K�z3�^���Vw��ZEl%~�Vc���R� �Xk[�3��B��Ğ�Y��A`_��fa��D{������ @ ��dg�������Mƚ�R�`���s����>x=�����	`��s���H���/ū�R�U�g�r���/����n�;�SSup`�S��6��u���⟦;Z�AN3�|�oh�9f�Pg�����^��g�t����x��)Oq�Q�My55jF����t9����,�z�Z�����2��#�)���"�u���}'�*�>�����ǯ[����82һ�n���0�<v�ݑa}.+n��'����W:4TY�����P�ר���Cȫۿ�Ϗ��?����Ӣ�K�|y�@suyo�<�����{��x}~�����~�AN]�q�9ޝ�GG�����[�L}~�`�f%4�R!1�no���������v!�G����Qw��m���"F!9�vٿü�|j�����*��{Ew[Á��������u.+�<���awͮ�ӓ�Q �:�Vd�5*��p�ioaE��,�LjP��	a�/�˰!{g:���3`=`]�2��y`�"��N�N�p���� ��3�Z��䏔��9"�ʞ l�zP�G�ߙj��V�>���n�/��׷�G��[���\��T��Ͷh���ag?1��O��6{s{����!�1�Y�����91Qry��=����y=�ٮh;�����[�tDV5�chȃ��v�G ��T/'XX���~Q�7��+[�e��Ti@j��)��9��J�hJV�#�jk�A�1�^6���=<ԧg�B�*o�߯.��/�>W[M���I�o?V���s��|yu�xt��]�].��Yyx�w���`��C���pH��tu�w�J��#Ef�Y݆v�f5�e��8��=�٢�e��W��M9J�u�}]釧7k���:�o�����Ç����ս�r3W���7k���e�������ϛk��Ϳ�_��lu�۹�g�w��~�ߗ�/��ݩ�-�->�I�͒���A�	���ߥζ,�}�3�UbY?�Ӓ�7q�Db����>~8�]
� ^n׹�[�o���Z-�ǫ�N;U���E4=eȢ�vk��Z�Y�j���k�j1�/eȢK��J�9|�,UX65]W����lQ-�"`�C�.~8ek�{Xy���d��<��Gf�ō�E�Ӗ�T� �g��Y�*��.͊e��"�]�d������h��ڠ����c�qV�ǷN��6�z���kD�6�L;�N\���Y�����
�O�ʨ1*]a�SN�=	fH�JN�9%'�S<C:��:`�s��~��jKEU�#i����$�K�TQD���G0H�=�� �d�-Q�H�4�5��L�r?����}��B+��,Q�yO�H�jD�4d�����0*�]�	~�ӎ�.�"����%
��d$"5zxA:�U��H���H%jس{���kW��)�	8J��v�}�rK�F�@�t)FXu����G'.X�8�KH;���[             [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://doq0bxx1v4eok"
path="res://.godot/imported/icon.svg-218a8f2b3041327d8a5756f3a245f83b.ctex"
metadata={
"vram_texture": false
}
                GST2   �   �      ����               � �        �  RIFF�  WEBPVP8L�  /��'�v�v�H�m����hMf�X�$�_�E�{hef��mI�6�����*KUs{_I������K���t��$MzNj۶;��mw�l�f1��֦�m����8�Fr$����w�k�py��r�)G[>�54?��8%X���H�xC4��!A	
������#;�:D��2���b��^��fȾ�����t,��K:�}���Ö��vC�ȣ^�{�-x6G��n�C{*l��v������u�f00(�����'�Y;s�y�.�}\�}E7~�������}#>OΚ�Se{����5��ҟ�F=�Q�N���Ϫ���b��7R4�Q�MMPMP��� D�(��~�z�^�ȏ� ,�KGC�'Ą��鑺촚�kFӞ���6[>�v�[���_�M��������`�e�vq�kozG��8�	�I��t`Ё��F�h-c����h�δ�������Dل�E�o�^C]���r�_���e5z�F4r0���UA+�����-�-|�K���f�#m��WR�m��Lo���W@�1G�)���-K�R�<��X�VdJ��D�~s�l���f8ݭ�צ I��g �#q!A��c��m�5HL/w��}�l��<![��ԧ]�6ԥ�ӣ^�����b�ٖ�m�5ьU��"��"����hE�[���~?1:����{�W�'X���j�F�1�j�Z�V���(eU^N�1V�e`��K��f���W�G����F�zD��	Y�MA�����]�j��Cю��h��iM��ECܠ�6Vmؒz+b��'d��2g�'d��}M ���W7��~�?�N����W�L"�j���U1�E��|��J�Cl��y��)�yں�1�6V��/�Pk�4����5ې��20S}�ޏ�z̘��LMSO��7n1�1�S�)������8$�!�p�����rm�OBc�=G/��K��"�Xpڟ=�Y,�-�a�����ZV�U�Jc��A���O�2d���{jz�=�b�gT��jb�<�8���0�-�ՋmK�PV��6|��ǢM�m�w�N{ ��+=�^U+U��ԟ4I�=~�=�Ӧn�������<j�Z��E^���Y�i?�YD1b'U.#�V�10����l�A�uPe���<u�ϝ���3C�A�Pe��쾧�+   ���(����X��U���SfLL}�*Yj:5���s�o2����n%�5���.�ߪ�Օ,�'���=G-���Jh��<�Q�LO�z��\	�P����dϨdjC5�Ⱥ���%{v0��v�|W	p���%��J(c�����趧+ѥ6�w����UF��S���U&���n۾���8(̈c�n���էu0�mT�Wn;d��0��:�91	��fύ�E6����V��v�[���㔍�~�uP��k,���S;%۩�v���3R���P��.AוA��7M�F�7�^���}T�e0>9��oȼ�S��A=�5>\Cvy<�-d�bC3�A��\�[.��bJwd�	[.�5 ��_c%��P����"��*��{7q�Q��KX�`������"�/;��H�^��Uml�^�����q��J�6D3��������Yd����>+�qu�S7�K�٣h�QCʓ���o��!�E}O۾'�K��,r{B���4������E`�h�Ȋ��d���ˊx�ٙ���:��G�d�~�i��@-��G�&�J\+z����jMebd�:�vjye����;M�*�hɢ����pȆ�ެ@�镹א�k�3�7����H�0�����5d\���>�l��
n�����7�+�ټ�-d�bc;�����.cK��СP(��g��:$��0�`�٬��Y�b�=��gy��"�̜��ƫ�%�.�����?�	��(z��R4y���"[��D�/J�M��9n��Ą,&��h7|����k�- Ȁ@5���6�ks�*��UjZ	Դv��v�q�,��a�W&r�EnO���W/v[.Guu	���w$[��7vʒ�/���y��-��;��׃�B�1D���Ȭ�Ա���%����_�D�(/� �Abh+*`!ӮL�L�]1�#�c4��hId"#F�Y{ʂG���	�>��Z�4���c�����^(��&25`J{J{ʊG�d�z�C% ��f�)�����K ,jOm�х�!�y%0��m?ޛl-3Z�v(W I�}�p��l�G�5�t��Tj��E��ߧ%d-IJ�����No�����(M��EOwc^e�n)YK��V%C��Tƹɜ;���2{�l�65f�p.,�\d�+|R�`.2��Q�W澒�W���y�K���YW�G�F�%P�^V��"GE�I�\ ����Ѳ.̺�]Ƣ��O-a��Tb�*UT��U5�M+�0�i�@eea�F��XQ���`����"*�����HW��l


*����A�����G--� �A�A�]?.
c,b�cP30��Q��AӁ�����2��,�š���qyT���N�Ye�|t�	��U6�G˶���P����$t��-A@@@DDk�(@���Ǆl�,��՚ �>{�>{Ȗd�	��0�P�d���ϑ���'�[2�$f�.��'����r�؄ې��������-�k�20ó-=�l���X��־?�'�x�����Q��Ɓ�����1ϸ��z�]�.��e��˲	L~�?4V�?���~��u��T���V��-�����]}�L�nwF9[��{�{���nLU����9��W:G�d��j�@�P7�uy��ὡn�[�-6{�A�I��I�m�3�=��N6���Wj6�k�����<���X��D�������"Xa:֪Ӧn��m�����G�A�W?kF#ըG����\�_wEacwg7�������С��t�1Xs�n�N��������՚o�V�ԚsP�(G{�d�A�"b�usZ���b�=�3|T����?��'\�P���|-�.���`��:] ���j�ٖU��N�s>�g����c��	NȜ�<!9���0Fc[�	.W��Ap���4f���,4��\�`��c��<��1�:U��4�@��Su�it�6M6��E�sF3I���8j$�b�EO�A89�<�;�m��L\�����L�l<��*�G�l�g�<�9�y�9�^ F%V�k��N�t�bl>�i�.1]b�٧M#wDL�#���8}����=o�'ݾ&`���ѩ���eE4�9��G���b�h2�*�+=a��.��/�-|��0���a��l�)]�� �S"71!r��7|�76 1�I��a�MG:2z1z�E$'ȶ�-<�e~5�+��c�i�}T�����[�^�e[8��z��q��y6�ͯuty�I������0>9�<�o���     [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://cjt0vgh4qisvs"
path="res://.godot/imported/tile.png-b6edd167b3cc7ec58612b18f9a6dce92.ctex"
metadata={
"vram_texture": false
}
                GST2            ����                        
�  RIFF�  WEBPVP8L��  /���8l�F� ����_���<�"�?ܱF�����vkR����u��P�����p��H���y\�Wx�@^����8w�U��jmۮ�-��_�/�%�����R�#�6�~���O�1� l�n$۪�	@,��#�eff^s�1�?�?����>�����r����G���� �K{ѳ��տ�7Hf9�A,[5hU�LC��<ֆaA�L�O>���tdO>I&�̄��d�G��G�РY�,�(G!F�I���#��2�"';�����4�k�m�}�N�r����<������1���Qd٫X��t�3� �m&�=����Q�z]�;�%D��,G�����x���AGҳBd9��q�o-������Y�彯��?�8l�F�dG�7�Ov����� �q;m�͒ъ��$�t�p���Y3*<��Q�<XN���,��c.¶*�N�3p@��(��5���M�_����m�m[[�ZcN�t�'�s���]ί�9]��s�r���E��l��,iB'�[m۪m۶s�c�Ťgm6�L
��^�k3Zغ��F-�sd۪m۶婌>�ܪ2�(3ƘT�s��#ǂ1[�[۶j۶m�R[반TF�XҲw9��/�5z��d�$�mz�@"r�ڶmS$7Ү;"��[<</33�0��Y��ʣYfF�Ŷ�E�qJ��^p�'M�l��m;���k���=��r�3C	T(f�����R>�}O�!%�����{���͓$٪m۶�^jk�Ͻ���y�����֡s�O�����Dњ��V��m۪���V�Zko�e�p2�af����23$33g�Ò,ؒ6.�sP�d5l-ͱ�Ha�/ɵ�/Шm��6�t���+���CO�SuG�t�����e����j�U5��h۾N������GDf��w`	�M�hZ#Z 33�,]��Z�!S���s�*#��߫9�mնm��>�\���}K9fff���^92��y�cJ��B����׵M�$ɶ����(�'Uv�df�����U3w'y8�*�m$Irߝ�x��z�����_�F����+Yv�����<���N�
�6���x�zlfff��6���<�X��t��'O�m��mIR�c�}�����2�y(�,	33K�4&�����s��kv_�m��kۖ�R[�]�;T�8m�2����]�e{��f��H���=�ֶ�Ͷmk?@,33��6�ٔ{2_�����������mI%�
ڜ��x�M[5��n�V��ڶ>&-�d����7_�L{��$q�--�s�Q���,����%I�$I�-"V������K�	��$ɒ$ɶ�D������Z՗0�nk{�6۶M $U��t|�������r��wM/�$�� �$Iu�Yˆ�_T��@������]�w����]�w����]�w����]�w����]�w���o�����a� <*�կ�韞�~F��b\ `X ��7�����a�= =o���������7�+�.�} �7�+�� @� �zЮ�q�,�;r���zǴ���Y���*~�?7?L����h׃�yVZO�M��8�nj_� >!�x�8p��	����� �{��S�@̏����A<���x�@���F�  �B�}`sÀ�``��n�����h����o}��_�y~ ��bI�����{ٕ�=��u��o "�o!p��  $ ��A�[ 
@�=@�}y\��a�b�����%��mv��>�/��/�C-��{���'�q�G9��+�i�/� "�­(�٭�2����Gxx꟞2�)`t,�d\�a	 �}� FG��C�,_o���#��z�{|�f�q?�@�@Gǎ������w�f�����<���=��{N��僵WB�W �rDA�}��Wh��Ҷg����m�o[�S��B-��~�����,�M�c���T�����[2P;
ꨀ�((D�DF���DjFt$rk��C><F&�xm�D��\�6��Db�Q=$�c�����:�6��q��c>��ˈ|���lm�g�~��[�3V��1G��� p�������#��  ON��P��k(g�]d'���`xsY��(��'�q���?������8���7��(��>,�_�#!�`�b<�_B?�q!�5�N�%�ߤv��ƣ����ǌg��L��Z�!VC,R�j��P3���"
�IMD��(�5� *$v�� Q*2����IQ�#b��l� PB�:rc�i��=\5�����6�Z֜�8��x��r~����i�wd���ك�� @k���Ԕ�5���o����a�b탋������������~���`9������������������;���e�((
&�"�WqI�����1�I�&�n*�$GRc�֑�
r%%*�L<�4$IB�*H,�*L�V�P�U��Z�U ��@	�� �@ (DA��QɈAh�����@%�TH cF����Z�EcZ�9$tՙ[�������fHO�� 8��O���~�S��ǀ��^�~���؀� {y�7��pY�у{�v߱��΢b\�o�]�dO�o���q��7�@�����O�����y!���l��B�N鏫��̳;�<&�N1�"�#�hj�S��t��֚��5��\��K�
"h""L(T��n��J��ͻ�Hdo�p$!�4�l@	  �QR!!�B�Z��0F����u����t{�#�YŇ���d�Rd ����� ���>���Z< zK��@�o��.2G
\�����!u�0 �)ث������_���ړ�7<����3�4�������B���\�پ~��� 0����y����t �~�\�(�5��$��1�V�{�CqC�h�13IrT���M�Ƶ�#��D�F"�  �0���h���G\�����TrPO�;K��e���oG?�fqp��t�xyMu�x�@�"��F{NP�u]#�lV��̑�d�$�����_!`l� ��,n��lJ��B���r��c�B� ��pΓ��z�4/���X�Ÿ}�s���@�  `,��ց����Qgs�w�ͽ��6�˰��(8PΗף�]�Ǻ�'c�m�J��㠊$�5.�&DY�DB�_"Uh��H��Mv�c������y�n'�9�eJ��;����5�⠰���JfJ���!i0��Y9;��i,����Zm��O߿���sw�����з���%��s�� ���
6�0͛����~pv4���%q77��M=�^w!�b�P�- �##��[0�7��z�rD�   ���h��i<��o���<
�+Ųf̱�>�`�W��o�P��ER!-D��)a����a6�9��f�r�k���N!E�Y��T�.��kuuX�+�,椛M.�N4*#su�2-�*;W֦:-�>��c���>�����c[�[8ۜ��{�<�E�������7%��"�1��c��ߐ��/�'?��?��Gx��g8�曟�N;>�p���{��K�}���[�,qT��,��v�>��Ӳo��-�u�)��C�mگ5Zw띭�ڙ��\�u��Ц�cD6���3x�����e$��]5��F=�E����̷c<��Hb�����\Z���B�@β�]�����;/���(:��!w�-1V��
	@I��`Έ
��b�_#q�(hd��1Ҟ��>���:���V7��>�i�-�soy�[��|��{g:��۾�l�G�M��� ���1�z����7��{y�x�W�r.�������˫lb!P당�("2j/���;x5��pۘ���Z��T�+15�L�.ϼ�<�eGƔ-v�Ⱦ����������9�8m3�pw�(��O��$���[�S�0����3�c��̼"�E4�e�0���fa;�������:߽���m1��{jE�G�4к�1�UI��X��	4���(�2,	{��k���2�ZLGL�����u�e]�L��f4�=מ�������^Z�-��ܲ�k��1�uvd$8���8j����7��+��C�?��xĵۋmu���}�	F�#^��+�q���^��N�{'3)���$�hRd�ؼ2�^��ؼ£�1�G�&F� �K.�Y�I�N���2��ί�1�gl�
�������eѽG�Xb�e�j�����ei6Q�{`B#F�������9�5��ፂ�ve74�P���3�j$&�T�T�� u�1:^KDԪ�#F�HEP9���!��Z3q��Z�RuQ��9�^�6s0�u.Ӽ��^[?6�|6;����8
M_h���_�[��c˿~������x>��E�H51�7��q�޻��*�3S�U���S�z�I!%vK%%�Sצ2�x5Q�*��SA�*D*�d�.�q�Q�^�:���I�~?_�1�9z��C@�	x�W��ma�T��m�7OYr�W���M���
���$׭�n� h���c9ñJ1z#i<Q�8���QH�F�0DT�i�
%9#J�ʩ�X�Y1�"�j��kȅ��9����+���T��=�8z\ŵ]�jg���+�ѐ�p�m��U�W\�o�Ϳ�s�o�����W������J��e�[�B�s	HxQ�<ͮ��8�չ�-n��hojr��TEF�$�� ��
U"T	$B@5�;6��D�8F������{�|7z��·Y�|: #~寿��@��6���K���X.�ޘTB�q깤�+��b�ڰ��lj������Ž/�T�-�D5#jcUM���U����1�爓�T�g�I<��YrҜ��Ա��z\4s_ׂG�bo�c��B�)����yjP����o����_*h>|�� � �����0���(us����wc���~(�y�w����:����iQ�)Ə��&�>V��z.�@~{���c?����4�|:XO�O��,lY��n/#X�=�-M��C�w �
�������G>e׫�UCt�N6�hf�%���9�8j��H�U�R�#y��$�\�r��c��f8m��`ET ;J����  � ��u���2^�k��+w�<ľ%O5^j����2��>Ts#�A�&Fk!���˟�T,��b�]�����4��xV��ӡ&�C�� �^�qk�>��r&\ �hC#�6��t1��*d ��!���"�y���q��h���)s7 v�&Sq!�q�� -� ���a�lt�\ԉ~��L>�">���d;Er����Uӎ�>��_�ހ��
��T�#����P@w��7���z�w�T�|���  4o�^�6]�!`B�|N��˒�8�T���J�/5/�O�;zEX��}��5��&  "�J�\�c����5ȧ� ��by��x�,��.�VJ]�d#+��9�� PH� ��J͠}j,WhK§�O��)�RDA� �%g �b�1��K:��1aݸm<_�õY[�+�>\�$B�h-�4��c�E�瑽ۿ]��ە`�y�"�UL/Ri�T�����
�5#� U]�j'+�%zTϒ��cȧJ�1����������!̌i�f�핉��;h����sw���K7�~�� �+м���K7���J�/�ym�M�o��}�y���p#���_�N���{�~e��n+�U��r'= ��_N�٭�X�4�~�S�(��������t9�����7e���� EN��W�������^%��"�k�"@ DKM R�@�AN�+8J&�	���5��ZDs�]x���p+�����Q�׹p�J�~��7J���/P1�S�~^8�|(�Ǣx�۔�ݴP ��M���v�bVqҜ�m+9�i���C�![{eot��1k�t��Ü��@��~����{�K�˃/� @u ��	Rgi��.XKߥ��ϵ<�p�$��5�����\�uؚ�O"B	���}$��w+��̆��c=�x;�H\{�t�T�eT��R=�CI!I'qRIH"I'q���/���p�\�yb�/�<:$@� Z� 0�{�.� ��!  �D4 &l����$���%�UnN�� M&Nr��������Hm�&��1�{M�~������KԄ�����a"d����@#H@%��.�����
0�DȀ�� =�;�N���
^��|{\�C�{s�(����[ T� ��x*�:�E�ZW���n����^���[�k�s�n�.��. � ���S�i������� �B�6%v�X+�%W���̻���ld##��-�d�DRb����h�E�CD�5�CP@�<R��o �X�!����00|1��/_��S���ߚ�gH� � �������k�1����L��H���o؄���@���PZ�n��15i�F/�v��E��PS<�h&f$�li�Hߒ����ny�����J�������r�˯> �� ��P����孅�Q���R�����ށ�B=#�	w��{j#I�d�OU6�F 9W�QI���B�3aߒ��I*oF�|�%�d��+V�Р	EH�����`T �ͭ��. ��%9�Xe�|�q����,�f�tc9��_��uY�9�n����\���҄�YD:���7 �DaGH����x�J�͂,`�Y@]6��] ^��&��N:q���v����3ǻp]�_=�%����� @�<�^�X>bk��2�>�B�$�u��؟�0Vt8x}�a� ����l��7�2zk�zFo�0#�M*����8�(Q9��Qw��IH �s�MF }�
��or��p��pk2�J�/@96�; ,��0�v�y=v�>O���h�"�~���S�=�a� \Z�eQ�eZ����T�ŵ蚝vK���,'���GL����՗�k�u�b��O
 ��=x��K��GT��Ո�'���s��R��i�`��� {��  �#���`�OF)��x��)9)8���%��؟v  ���/��lu(v��0�s��I0��e� dHf]��]��A9�w��!S����K#ѝB �  `����;>V�E�w�i�m*��,pZ�E \ء��q����wT�M�#ݑ�p^G3D�r��  �9<��Sô{��מ�!�&-(�v_BW�3�*m���۠  '6�<^���jݍ�B� �k�����Iy%$�~,ɚ��N�D3�hƁ���>�1C�l���t��/ `֕!Y]�%�[���=%��O�>��] `xÜ�t��E��E��bt�I��2�j�5`HdQw���AO>��Ph��q5�2=�?�g�[N�@��C����!nfJѩs��sf"��)����*�

��lT�
0�x��cC�̢�5 Y�9�I
��q�!�6w��9۸��#���ǟz�'��b�	`{ ��<��X�!6e��k�fy�u��q��M:���xVf]��egsxM{�ͮv'12��J�� �	 �:& <���v���i�j�Е����q<	ѕNf�#�Ѐ�g)h�Gj���G�g�
�2}�z�  �|��nnq�Z�v#����#���;�g�Le�"1�c�6��D#��LJ����}4g���7_�u�45Y��N��|�a��~���Vɳ�A�I��1��<���>v�
H�wH�4����Pt�xr��bE�����aT��ǀ�x���A&;��6��lP;�9�d  �"�0D��;A�=���	ŗVK��zji��i.K���
U�h��ԙ'��깖�s% ��䋟� @����@��s,�x}U�>��0ƒ�8��O�s�@e�qْܶ{��(7��{R�F-����!�1=��������#�������� �~���@�mڝ+��I*;��W�v���z��y(�~��d0l�<j����)W8\�<�F�~���{��!���9'��S�S�AW��X  6s)Q���  2pG�.A"	�[<���%��wN]��#+���Mow-	�#�`k�����ɯ|�% ����ޖ1o�U���Vst�$jQLH?(������H����&[2�5�<N���  ��c�x�b9�Φ�&��^�>]v?e��ZmY��^2(n5aGL��_.ʏ��p��>���`wo��S�������W?���~s�ε{�쓳�	{v>�4�e��`��A`�  R����9��K��*�eQ*3��Tv��E����c�>	��JY�����9�S �n/[o�C��bv�d,i�ГV�+��ͱK(�d&�9L��M��}�L�h����d�?�����5Fh������r=0�c����V��H&i�Q���y�8D�wG4�:h ����<φ7��M�<%=C�" ��\ZC�q:��C��ؑ�<6Nф�I�i�%�sf1�y�9m���ǣ*�9�X2��9y}N�Ji���|�D�t{���z���iE�ԒdY�#�I ���+��jXI��oΚ�M���#� T	 ��C�r�s�=�*\�#(���r��J����```k�\#�Z�`O��;?-�D���뜚 z�*�	�{��(�s�IpUP&������q�#�=K��I���P�^"	�q�ͪ3�)g3XDM��~����35��Μ<g4MM[`*I^~�w���5�Y�c�����E�z2��,��r�,�f4aN�T��U.�N�Lb�Q�SFy�:����<�T��R=,+��%�#�v:e���G���~�=뇛�t��Q���nϰ���Fw�v�I�K�Y`�Q� ����ޓuO��d���?��@`���J��l�3s�)����Tw*$�D�ґ�Yr���̶il�;��Q<�t�&�I�y���������.��n�qٕ�Ѩ��k��B�,��8��P[> ���n���ܹ�9gFw2H��M�q`�6���o3VR�0 ZPk�m/�C�n��v>n�yL�z��N���������\Z���}�7 2�ގ�Q'=���?8Ðb:��yi�"p6Z1<��;�?3���Ń9<���7��rؔ�]�.¤F��i��rT������_s8�`����sZ�-�e1R}i��<��8j�L2s���8���3i$����`����B�|�t��R`���+
���aM����t͵+��t�q��
Z�=�D]������v����| k��l]ȬW�0�9٧���#8���%) `O����V+�r���?��4�Q��և[$o?�k  ���X�k�ʾ6r��5�XU�|�l�a�^m�S��q�L���K�ǒ� 2��>$��,L(H�L�7B_�#������j�����m�eN�'�$�-�O{��:�9<��>�W��`=��`����N6� ��3(@Y��jZV/d�1NG3/�|.������ ��Z��@��������T�fB�_ 'O�`Q���`��VĽضr���m��T��ч�~�9���f����@9 �!��O5��2@P�����_�����=00�kmQ[e2-Ķ�95Brh��{"��,��]�|���"��k�T�).�N$�q��Jm���}~�ײ�<$@��&�5(zӆ���}L�$��K���X��<�zAl��6������{5�6�p$���I�U��*��
�s0�����.��nM�cO����pz���,1�(U��"���F ph��1��kF;�h=b��t��4_��<��O  �M��iv��^��c��������3"�=+�&�)'kŮz�z�(ˍ�PMW�ް����қ!�-���Q�]�ᵄW��	W�����k�	eN�0�};�cv��x��o� �znq�ױKP#Sv�dE��'�9��+��dP������墳������V��W38��y���Q�)M7�_��?��77���ui�@��w����,O�"��|=�W������ޜ��Wn.\5t	�R�q��cy��a$jDw'��l"ty+��ma��s���=����+nU[Zy�sp��ˢ�D�W��C��w^��HA�l�b�
�\�E���fr0Z[�������g5
L�m��O͜����#��0�]n��<�#�B�b�pg�[3���vp5a&��4�1���i� �;Q�=��L�;y��t�_/а��c��0)t�$n�cYtxs`!�� ��eأ��A�!;Iv�-n#���?���~��ү�<N�]�O�HY*���/?����/It�f;Onpp�R7g)E�+ <,d�r�%+g%i�Ð7f���n:�<���&8���d���q�������94v��ղy��&%(;S�x80ǒ�!]U(��8���?�؛u��_��mԵ/+�7��<&;��Ѡ����_7�d���&���E�����w�U�H��@�qd#�;d����z������Nǹ(�򙉜�6����׏k�ͬ�~�_�o~�c �}>��6Kh/9짶��}��s��El ���ww�y��g��j$[i��p��p����.=̚	wt�|�R�W{e�8�L��<����� w0C��蓂<#�W�?��3����
��z @����C��ww��s���X�;�G��`��q��]k�5ۛZ�&la�c|���7�U���dx~�z�r���[��"��6�֛�09Lv4{���OhA������r�C��ت�XYC�$Sh \�K��S~q3#����|�ǆ;��\hS������?���{����|�:���-�Θk%�v��������AU;Ϗ��k�A���@�@W����(�~�;��7 �d�&3�:�;��ғHZ`Љ/��W��i
�%�Ҷ��]~�KA2>��Eyvf���ŗ&��>[�Ϯ�]�\h𘂏�$�,��������ΓC~���S4�ܖJ�#�X&;E*[���ybsH�/���5����{�[����7���9�g+!�Q�^@\&����2�%�W3��q����M�s���1��D��WL�L2����R�4�r���ә|%�-M^*c�����0S"!p���-2 ��= �;��o~����3|�g�<��k�.�l���Bt�g���� ��J C����ۮ����+�O�	 {�M.b��N�=u%�Q��~9߱��q:�1:y`r���f�f��u	����<��z.��\nd����8(	�BM���� �,ۃ��#���qg�����@�Ҟǒ2G�Z&�n�Cč%�xs�+k<��~v��W�\�s�g�_����ُ  )��5'�n��c҄_���3�+m�ŔY��>pM�tP (�L�%�t�q5�cmH��/��pG\5��Z��_)3ub��ԟ�M�{у����#C۵y�74�.]f���*��Γ���9��s�+����Ȼ[�����L�������s3���Yl��;8�	\Ӈ�nQ*)�yi��"�1��e�k����ߦ�������uk�}=�#_�������ů'\4�,/�5P�D� ;&���
����I��/� �ϫ���^�Yw��쭬�����MT �5���v������߿
0o�!�{��}O�t�~^́�7!{�
��#.��m��GNv����+;���e�a��}(G~��x��_����(�f=/k���0���G�̟?�Ⴉ;�.G`]/z �)������@�������`��n�1���v]CrD�$��s�9�N��.�
@&�u�w;�����rk�Hq��:�ٿ��.NнTkx� ��V4�l���5���^O����7�!DC� �<��b�H�ß�,>.����p��{���8�� �_����ǽ=���\���e��gJ<$p 4�&�k"�
��r+�I?��z��ʶ�����<�3 ��W����>��c��� �t��e��}Ha���Yn�� ���?�$�8� �{��K��Svy���L�H�Յ�Z���VL��Ե�t0����p���?� ���N���Z��^�v4A����}���P���j�#�5�����E�1O`\/^�p��w (b��u�����pm$ˇ;�_��!��T+�hې\��m��v�g$��zZ�=�ޞy��lսF��nJ�g���[��.������=��qe��W�;Ֆ�����΃f�����L4c�i�w �C��F`+]���{�׻|�?�0�1�5�����烓Â�:ϝ\��q"v�����ɖzݾd׾$�=)�ư�V�qK��iZƾ�;�_��R<uYRC'`"݇�8Խ��W�2`?�� �&Ǧӕ��]+�cDq�,�8�S��h1��@��+���Ȼ_���k.  ��ґMN%����Ӱ�����ɾ��r�9��������hZe��o>���ϳ��7���~����o�J�cY\�ԙǏj#��q��6c�M�2��-�����mX�`�{�-qkک[��#�8��!\�&2Q��ɤ-�r��=�|���ۻ���o~�+޿�����-L��k��u���s-�k�s�nXT���gf&dO�NlA�#�rmn�}�ݾ
d����Ҽ*/ʋJ��=�R{�9�[��*τ�@��Z8�.�3�s
P��~�ޭ���*p�Nv$+�����sV́T_$v�&' 
��#��F����yP�!�p~��o,��[_ ���{��O�_ �������`w�����Ξ���v #H6�%��Ѧ�Ҥ���Q�y���nI7�-�41S���	�����A�)�k�^-��sM�\�;�;�cu��s�:G�fm��6l���H��,E�����n��Xŏ�G���W�<]e�������r��֎e��@._N�>ޱ��T�+��БT���8�yϔ��~x6q��I톫W��]�ʱK�]����
d��hn��<����Ur�1�bN�v^m�W���y����! C��V37����³1p��X6�r�'�)4���+w݋����|��+��a�Qm��l�" �EQp��_۠�Sk����μC��M�z�ȭ�7�o�þ���i���k�u�^������@�P����I��x����W��5jMQ2�tiuJ��d����G�x�����U�O�FIc�=���~�6�I#��C�|�����!����K��:f�u��y�����8�=o����b8����,����zym���m�h�!��8�D��+�tB�׼�{~� �B�.1�у��� ��S}$�[y��z~����9��yr;p�8�#\!/]c2�tvz��==����!�Su�}�O��|׾��Č�uy���y��;q�t�.��� � x�M�F����+��l��מ�=�*?USbkA�#��P�	�������3��x����t��ey�yDJ)��J4K�6-�p\Sm����6�M�iFld�^��!  ��ӟ�'ݺ�Q��ܭ�@�7��f��r����f� ���^���5Ek�{�y��Vt���_�s����!���_nX���a�Ϋ'���L�'}��9�r�0���e��6ݴ�{l�wN�X�u-C��zKω�om��x\M%�nSb�ִFS+))��RZ#)((��h�4�x�n����P�(� �]�}�|샗j��Tֶc��Y��2���.�4u�	
�YvNn��j�a���pu�r�J�LZ�qL��N���5%?����}W�Xi��PC���z�����w<K� 2<�W�R�D;uǌx8 GOZ��:A�����������*x������v�:}��\I�V2�N%7!�8�vSc�T�*5\���#WA4e���H � 0� ���/���`|�s^Y{��y��x��d8��*�s�d����̽�aɲ+WخږɮaE�̒��vM���^�o������1���9"�;�� M?�i�Sޫ�������̽V7NL��8�V�iC:��6�tݵ�<R�O�H����Bۑ�,E�ԬR[�r��ކL���	
2�*SG�$��KԔ� `|�i6#H�Jo�ܮޞ-�����(�u���`���IV�+/�j�:qe�^K#&st�^Ա�'H/:��^#�����=6�)�g����Nᄥ����[��
R���x�����"k��i�����MU �׋����&3y�@�*��+����xea��1r��b�(c2E�Hj%E�"��F"%"��鼵�m'��=����C̣��RWN��U����D��/oT�_�~�Z�����y�N]/T��`
2J�O�+�@�'NjZEgZ&��v�������:Ǹﱻ�e�瞺���,����g��N�UX���e�6+��}�f��yf3���f�� O�WS����֒$5Z��cI�]
��U�E���'Ps[n�y.��tצ�NI��=�!���{�><�~��47�v.pY^�2�������~��0B����BG�*m�9h�`�N���Vt9��^;���!=L�{�>��f��S�:9+���x�7��&�e���ܓn�]0,Jh��ǭ�1-�����T����� )I%��Zo����y���SΓu8s��,0�G��1@�
�}�}���o�{F?�!�a+���U���	c��%��0���u� �#̀��#��n땖�Su^��cХ�!����B;����ʕ9t�,�N3�Z<�0��3��=.�M_DM�]]��͇;�����LZ#�����~�ZX��z(S���m�uEZWN�:8�]9�R���KuE��}�N3�d'��0�& P�	�@�,ɖ&���6y�l�2@O;�[�>\/���uedg=��S��3�[E��ʅ�vt��N2����ekq4 �p厕5tP x�˭L9z�7:zK9z�A<(��i%e���]���sT8"��y�& ը �P0��(ɦ -�D��H̴1�D3��'�d��v8�!�3h_ ���p��M��|�� vͥ����4�|��}{�m}��B�{?�  2�Yv�[��L3�>TW�ÿ>�I�2u��c���9�t<����턗
MA1A��S�=&�̳T�����N^%���
i@3��V�u���0�?8�6 (�@�8�7s�d�!Iy��R\7ÿ@�8��qx�����k��&��3�������
�}+���>�`q����R��KΫ��ι������`���(�������
L��5��5�uHV�������,�J5�4���@�&���9�؉&[
��B�4�����CΞ9Ol��4]��)$$y3�|��qy���`9_L4e�����Ү�3��'@�h�pC��xTp�
�f�'��>��'��;�8�.����jUF?Tg�<{�Y��"(��3�}]�h�~��36R��������V����W�0�@��7��L�{�/�Z)�o`��;��a�ډ6��|6!KB!�3���|v�b��:��]�bS�W�6��� �Ry�o.9 {�_N&FMJ���vor��~���}P��^��Ť�]>r���nno��]�z)��g��v=J<������M�D�髜7�=s�82b"�ӎ�ň�դIw�~�O-�!'���`.K�S�<e�I�g�1�`��ʦ�n�Lq올��m�����r%�H3��	}L����
z0��a9L�?���7�E�e�x�:i��.4��%i�4x�������?��o���r�	� ����H� ����� lr�À�� �@d��"�`
.;\�\�	.07̃���4�˔��%�(� ��O˾���g�.u����n%��z�櫖櫶�^#�4*��M=T�l�O�n�o% H��O��`�]٫6�T&�w��{�oV���?��H�Dn�D4bXe��`�R!Qw�U�$�Dn��mЅ��������HȄ��Yh���	��E��z�g��,�j���]�̻�|T�Mwԭj��`F��w�O�⌯' ȸL�(O�G8+�V�Cj;j�d1�Q��"������y�Q�.u�]ǉ���'!�c��p<�:(�}���ҕڢvn��r�q�{����w� ���w ��:�ɮ���7� h�Y��&E��N����c�[�L�à���Z�,��陃�Fg��Z9^+ұK٢��`#3�:�Rr����"��7��i��2  F3�k%�,RH%Γx�B8�Z��j�L��5��#]�H�/��J������i�����3�ޞ�W79�B�0��t����O��X�����2���˫�����sٺ?�я  �a�[�ܨf#ˍ��s�:Oƙb���
 �����h>�����ۗ�,7^��n�ݷ�w|�a�	0Z�!Z'w�:�qޥt3��=^�z�zڣw�M;7)؊WS����z�A�A��8���neK�[�#�9�]l6�װF�������üteu�G���E���P�\����{���&nf]d�+���;�̧����'=�U2x�����{��'�nDu���5ǧ]��h���&�g�m��C� �,z�mu��+h ��U��.^_gϰg��!��^��v����6x^>��O]DQ�τ���}���!K�2�4ǖ����s�>�w��� �E:S�.MN�R��zE�h� ��*���nI�I���s;<��*q����#0�*B�p4�,]���[A� {�=u	[������Fg�v��Z�},�̟�_(^g�wس6d_�J��q����y��
����v�֤�^�b�T��B�[K�u����\Qזn�'��.g��j� M�=�!=W�!qf�rk_n�ؑ�=�co�ީ�T����):oΚ���<�f����>f�#���@��I^��~�n�ϗkΙU�>͙!j�y��8�*v��[����| �uf]����p�Z�t���[���L����Y�L��@ڲ$=�^Q��ʡrD<D<�x��[n�r�lg��/������M�U���Ԡk�,,�����G�0ݾt���+�}�ݾZ��z7���y9[���S�x��E�n�pMMg��?��h�>ǆ�
��i��6���)�\!��~o�$��J�,�{��g Pʉ��}��aG�B/`?�6�_���r�`X�i�󠙤H��h�PU7 oQ�G�w�y�y���;�$]ͻW����7�	������1�|�Tâ�<ܣ��P`L��������n}*W8O��w���#D�e�ꮇ�?���2���F�>J�c��kK��.��1ʙR���� z�в߫V�y��bv�s��!ԃ��[_�u�,G_����	/�MOI2���5͕����sS��y�,��=�N�U�9���(iW��3��ݱs5oΒ�-��W+�0�}wOgP� �G17�>�}h�h�ܶ�w���l�%����O��zb�8��>3��vax��~~i2d�9KJ�rw�4A�#�u������?���z��3���h��/M^M�s���ݝ� z��ȃ�Y���@e�����5�휫�i�#������-�>�	���ɳ�Ȳv9�&�y�\Ϲ��g�s~�w��g���1�{Չf=��n%̓�Ի1���<�o\��7Ҹ�|*g!�)�C{��L�����N�*� �/em�w$�h.�r'�f�������_NVL] =�
f��s��Z�1��ur�䵥�a���Ύxr����^vl��8y ���7?�����p�F\ι׹�=��Xu�ˇ�����:>U���PAŭ��h���5m���\x�v���KC�1P�h��b781�X�|\l����t��`��ݴlt���r�41�q���؄k�/��|���S8����w����W�n}��G�����lTӴ����Ơj\��,�[��G�ǵ2����Ϭ�Q��x{����+r��s|��ԭ'ݔ��n|[TI�_)a#��xN�|m�K�¢������׹Ɏ+xM�M]1��w�o��(�w�,�H#��y���9N�}2��R�nuL���k��U]�t���4�I�Ϸ��*T9F �ȇofy?�P��J��՝��l�ζ�sasKtSb�.��|C q�[��pb!=S|8\s�o�1$}<����`_ǆ�k�5�J�(�����!>+cnLe�P���azf���6���o���(ّSl��J���1NK�?��|;h5�qF��1p���Mn�ԧ�!����Iy��Cv��ڜy��������s[����� ��j�)�s<k�u�oY@��+�B��ɾgLˆ�+�%iK�aM�|3P%V"Y��Jk�`����pա'P_ �ۭn��M��̵l��ۜ��ѯY	���
H�����)c��L]o������8�����u�.�+���x�ͷ�g��� $i��S��y���.�"����
���_ h��nc3�F�ռ"v�2 �Z�;�m ��D���5N�%g2o(s���|�@��R��㒎+�����w�zA����DV�� D�C��L�1�O���:�ca��* ��B��|`z��D��:�m>�7�M�B�G��K�Ȝ�y�q�uUmUm�ޯ�ȹ��~UO����cJ��xֵ׼�õ--�� �f�H�4�L|�L�̙G5 �H�+{�ߞxK𖙷���>����n7O�����;�Ⰿ�A�,��k2M=�z��(P�Chl]�>�A0�aXxN���Ѕ�D��'q"�)�cq�Ք���[� }
����o���x��x�il��7���;`��'4'?0�$6�31����G�Sb�Yi�^��o�ޖd=�}�}����:�='�2!�	;cc�b&�%K5��	U���p�q ��?����y��<�P�/�{���ܧ5�/'���#7�=�,���IDr��dA �V
���(u��_Vb%���힫۽#�%���|��i�t��9��M��D3�Yv�<�i6ɩ���T>?��g��(}A�=����ة\�[��		�d� '�R�DkL��'��0�q��0��>��-_�p��O>)w������Dib������7�{�{?����>5p�e�f�mb�1��Tp�q�W�:�^n���	M���v�����QyD,֜�)���݇3c5�3WX*�X��hݾn�]twz���P�nZg��1���	��`/6����7��m)�1.ūŦ��BTJN�'�S�g�ݝ����m� J��������>xK���{�����[��=����^}�Y��"7Z�f�T|$N�0���xL�Ds��ޔ�R �1e�vҟw��#�t�Ca���K3\L���a���KN��P<���~>���wV���~�δ~�����5P������������y�����<:�s�;��E L�8L\X>���~�:��ؚp�@$�Y�1�2�_5�U��w~C��v�������S�_d�;0��#l>���9�%a�?Z���Orxp�ظ��D��g�JkLM�����J{|�z��U��y/�{���y��쀁T{I�T����rRK�����7���]�͔o�����Cd���h����W��o�(}~��o-Hz���,Ǳ��\����������e�}G ���;o�7�W�H�J"f��p�-�+����k����!C��8%��*I7E�����&�����qU��K�A�@�ib.;?4�33]%M��&�i�'���%X�N���8|u)���� �O�a=�Qr���Q�?���3�:x}�V�y�2|����ͅy�%�v:2�|�?���{���x������:ހ��󵇴�4�w�߻���R���4/+�m^�E�#�.�t���_I:jo�|��'A�a�p�╔ׂW�3�����G4��;o���|��ъ���9*�M�S[�?Q]~��O�A� ���o���^�s  l�q���Շ8�4����\
�������;_�w�b����j<'iG	��? �G������{�����Y6-	�T7��	E8���GH�\�?J�����KXð�.@�V����~�� �!_D��H�e�3%�>M@3�q��d&7�#//�xX�LA,I��X8�%&< T=��uϣ�x�wj�AKZ�û����D]�8Q��!%F%�!�I���oէ�ù>fs�. |����{�g, �e_L�z<��o�?�<F�g��+�R  �+�B]q[�LJ�����Hb��演gfd�J��Üv�;_z�����̡�0�#),]7ɖ�� )UR]+7wP'��U"���g�^�so�
�����R��ݿ�����V��}�"�Iy�����$�&���DK�y%W�M�$%�I��<����\p�a=�qN��4�Ϝ��]���}��9�0`2���fڳ�4��O�{Z�K~�]ŭ�r����:qC�L\�8V_3O�����՟*�������[� C�����=�G?��/q���e�zb�w�yWsux�#]����4Q�@c��!Igb&��k���t���e�.�MR�K$�K籜��$.����,<?��	��DM(+�rB��N#�j��b@�"E<�ϩuB5��"Y�> jX��J��p]\G8�T�	�v�z�	6I������7��Y��v^}����~K��~���ǟ�q� ���}JO�\*�.���2���3$�8�9���QFK`� M$�D��1��&=r��%d����?�ƕ��b �G�!ds����ɿ=�_gL@�	�d
>?p6�"��KS'₨%.	�MvڮN2��r�cq-q<q\Va���b�_L|5�4�$F]���������>���%��[�w�����F���ӿ�� @����#̽�L��8�#�*Y�k��C��2�(q�6
���D�\5�>�&)�8f�\��c_��&��I�Zd
S�7��\�La[\=d2ׇAl�_��=b%����4��l��G����b�O��ea�ZTEh=\��Q�+�j��D����W���{���^�mxh�{���|�����T��Hv��"j�hz��"��6Tι.�$�6&�8�H��KH��I�� )�P~�l�y���.Ǡ�$dJ7Ϳ��?;��2eFA"�4�\=��ڟly	7�ߴ��1���G�+4���=��X��U"	Bߚ��\K|Ÿ�y=����R��������~_�9�`�_ r(�����掲/@]7s����D3ʙ�#��6L�"@*/�Q�˲M�]���(�ĀIQD�S� eF��L�K1���L�le+���s"�5
2�4`���0���>]+ڒ2�$/9'ߓ-�N*�C"Axˢ�J�_��G���h�	ބ����qߟ����U�}�Y�(�lHٗ��Yn������)@؛��UHHXv��Fc`"��iq�GT�^��5 �a�SW�`5
J�0�$W�/�~�û���"��Z}G����������:�G	�&\T��ԍ�i��ۍ,���#V�@yB]?�;9����w��k?��y��?�� �;Ӿ��>v�+颴!\�I�5�	U��� ��а�V	�����{R+H@C�d�^�*�B�lj�^L�/���y�n�=J�u��w8b9��N�I5
�&�1�;�����{?��]X�X��~�g��e��(B;w�gQg�l�kY�>�lB
v�A2C�C��=��×H��3�K���±�������G�q�#n�%�hх~���  $[���F%�QDM�B�{A~W����}��V/������bU�6��ũ�3X�3:���Z�e� $ �3��	v��d����)qDN�N:�E#�K�8"G�P#�|����gc�Ǎēg��kt�~��!(#d�J�C՚T�,���Oy����	�<z���Q�����٭���Y>z��X̥o|�u"   (�t �^D�@�Aw�!Bd0�%��;Qa�I��X�wX$��p�����g$K�IG�I'�� ����*�(�Ĵ�c5���~�Ύ^>7P���C��oo
��Z�ɢf)�(ؤ7��a,) @$D�f�-��ްHG@|��&�Y�X~����������Nk�$%�I$5�'�! ��m��*I�G���<͗�����b7����W�4��%(��#�βf\�2m�#f3�2�l/S @"  ��;" TB�ez�hBx�!|��� ��{�Dt�*��K�x�>�ڎƤ�3�#-�q�Q�Pe���w�|k�yY0��-��D�_�W�����|:��8C���f8� ��� H��@񛶴N ذHG�0���&&�D�K$,|��!��-@���uE���Kmu�F�S�[�b7	q�k�>� ���Ey��$�T4��T�Si����~�����}м#�i&)UW*����BM�@ <�	�3~��e�/���% \@W���� �DSM4,� u���)�(u?��W]P�7�hc6��%�h�Ĉ���1`� @����0Œh�HOX�cw�;�����5ʳ�h8�v4#tH8��o\��� ^h��T�@+��K�p'a"��H] �@  �@�����_�� �����l�&1a�A�ۋ��M$��x#x��44 E���k���9$��Po�� �  Ȩ �[�vLQM�Z��R�>l�����M鑊Ԍh��s��/���t��ԥ�`"D!�ȉ��H�rGF�[Pd	 
@��p�
� @��* � P�_��(U��b��� b�kXh&5e��񝾽)���Ċ��5J�Qb��%VL�Q؏�@�v��� ���p�q�j�@M0=i�աy��L��ڵ��~���������o�H /�	�#��	�#8�D��� ����0ȅ!bp#�z�+����*� *@W`R����5�(�BM�ϧW�(�D���`=������ʾ'k��[4�h��6��� N�����@MV��!.���g�u��1�x}|�D�vD)�&ؠ$\��Ax�M@H$�a`�N4\��&�#�����)�$J�%�N�(�2 H
���&&
&
%�H���+$V�Q��!�&����~~q>�0�G%��3+'7���X�>��|y�?B�9���vQ��+	��	��%!��4��&�������`H$
��p�<� �`� E-�h- ��-�u����T�@MNtt���zξ��`h��B���f_~�;�;�k瞰�Ҍ$ȉm��	��k!1a 	 ��'FI��m�v�'�{��g���v���m�����1ôz@��V�W��5�3�ڥ��%-)��ث����	����R�#��w�����}�w��j�ռo5�(=��j�����x��2�I����ϱ���w�����[V͗{�q�8
 ���(�F�4��y��qIH0f5�v��`n��i���p�rb�6w�[��~��'�:�&�����r��ߝ�.�P�/��3��\�4b;q.qR�`���c'ߧ�q��W��k���5�ߚ!�=��� ����-mK����W��n.ﲙx���کVLZ &x���'?P��n�=Ϭ³�n�C��\��կ,w�À�ᥖ>�����E����W�=%.e���+�<l���:��~���X�->����^{��3�gs�﨨 ����:� \��h�{��A<)&�@�{��,��v�g��p�.����&е'_W�95?P����zX}�C��v�gJ�O�g�3�c��� 
N�Po�c��"F"��%X����	W&,�	�Vi.�G���iث&�� Ms' ���n���Nn�m��v�]����3 ��83�,�6���[ ��{*O��ki^�m䄞����t6�A+4A��f���L��r�J�>	�Db&0�������g�����v����oW�0@4���w h�>��*;ܛK�,�}/g���6O³��$�$��$jV�%4E	��^F�Rɉ���._�T�MZ �������/��5;���]{�NOJx��� �gV�������
�8N�s�f��Y�n��JNZ�I�mũD[Ҏ���؜�������j�;�#2l��O�"�c��O�}~Z�g�1��f�S��W�|���U�8
*�0p�9���T�+�n[˕EUy����`����=^�GNK�-�=�F$��SkE� {������pݯ�}��]��-�k�~�s_�����-��Ω�T�_]��޴✡t=W�1Ҕh$4xS�rF>�w��$=�� �2�|zSO�  OD�ő!�K�|)�K|���^�6�F����[�Z��7_�w�� ��sN.,�����ޞ�N�d1d#X���3��IGF�/׿1��?7ߘ�,��T�����R"
�=�s�����̯�z�U�k�^w�NIS�o��� � ���? �|�����ǻ��B{�b����٠U�&�������_�	��cUn�'�@B�����fw�h�6�ϑ������m��9�G��Wt� ~��E}��_k �<�g�-���5��2���J��~�)��s�$�������p�(#ē���,�l�H�7ɴpa���d�5q�q�ܯ`սN_�7����C��t�x�?,�� ��� ��{�����z�Q'-�q9��˄t��đ�s�m.�q�c�I���z��RwZNmXq��w�����c��Z���Y������u�z����/}X���k���������^�>�2��a�X%m)�(�ט�	17R���˗���=G�����7$ !Biǜ3��M��0x��Dq�L-q��|_��F���4��V�����ޯ~	Z:�� � ��fa��,�V�DS��n���m�L#��H����"[����%�IL�3z3�)��)�q��b�� dD�i�'r�HW6n�dK��f����{� ��u���|X�+_|X�܀���.�f���p*�gʱ[�c�[ϕ*J(���������^*j�Ә;�1čb$�I	��� �����{"�[����	�Fɉ��4Qr^@��%� <��C  }nt�
f8��ݸ�6��8q��xx���[)WJ�@�������*Y⊸�zk���^Ld2�1_?B��_X���nӒ��7���e��R7���n�ۻV�#q�FJ I!
  �%C�?�)���   ��$y,=<��o۝_�C��.?r�*�&gR��l�mU�_�>aT�+ibG��Y�~2�U��u��ܒF �'nb��7��$��vj):ٸ��ʮ�����������QQ�vji���U�
&0MZ$mXo@V���_�!c��6�qVǋ3��wL>W'i^�󴽣�QY+��6E��	䌒�k���Cv	�I!l8�������]g���M#��:e�`������u��]��y�k��]KJ�Ix���L�]O������ �2dT���:^��g� �Z+v��˷5��*�&��W��t��F�R:��r`���Pn�l�`��D�f+-X#H�ÔC37؄O�5�DNT�����m�®-pKq�0v.o.�y3�R�W�1��8q�����uc;�&�B+����m�;  �� ����y� ��E`��R5߈�T���Q�c� 3�6�5���o�٠��K�SJ�IK�(���7����T%�D�#�	h@+S2���H��b�2S2`d�����5�e�����ft��6: ��G�N�F�c�D�[,#���G �&ow X/̺4b,��u����X���/�y�s�Kt.å��&��.�ƀ#�d�BBR�0����ެ6 KT`P��7B�^ �(�����Ps�4Й0x~��Ro��*�Y���
�A���Oŝ��Y��IL")FT �'�:�&"Q)�R�t���ЛeD?��Ӽ�R�`�_������>����e�R���:�β�2��j������wqm ���J���s�Ò^^ܬ��b"|�n��)��Ԍ2��p=�C��   
�0A �! l̅�t��;d0Ļi�(w��"ʨq�.]):g�����	��X��P�+ko@|�#��z}�Շ�� @!����s�$��>YϿ���ے:��4��)>�;?��tn�kv�=*�&�6�q���/^JS� Z3�1��&3I��҆��44�n��]%U���%� }�[d;��S�df�eĜ��t�_2�� t���H�N�ۤ�YNt�� (��<_H�t.�H:����ߔ�D@@J|4��y|��|b�����E���AÂ�����0�ih�0;�D\��t�������\�P2g3���;��99�u����3�<����Z8�a��U��{~�c���:��7�P&�   �xh�n;7|ޑ���C�Q�ϔm]��3>W%S���I�%�`U�����J�M�}�ܗOg!6�A�A��ϓ�?�}���h��g�	~�B�7V����y�.�}Ҏ�*�T`�w���_.��>#��XGr�C�d��o �yF���%  pQ-�����iy�]��w��_n�e�_.~40�O�w·r-��5G�7��u.9\�\�ŗS2Y��p`BH�~S��I����J0,)<��O XT��m�K���Ϩ�u_�o�\�?m!A<,���q�-�0���L\ţ�~�Vŝҹ����čb8~��	��R����p��߰�r]Oę_���}P�_���w��}�|�&.!Z��L��_�>��N#��y�yD׀u P� {" ܛƾާu�lr(�����F0>���NfH���  h�b'������@`P�㺞�4_�ߦ�_|���l0�$��DN O�Zj���zԞ�Ӿ���Ssڥ}ij$kEqÇ�tf��2[�d��7�p~���8�|�B�dG�^di=��9��k�o��Q��׀�����Z�O/�ޯ͆c���/\$v�K7:R�,~g�3�O�h{���5p�u
���6	$$��cfrSt�R2�ѷ�݊.1�idA@��m3�!|��    ���{d00D�I�i.��/|���O}g�z`-�_�S�d`����(��}Fe|��I#��7,QAΎםQ ,0��9D:�̱IՇ(��/�!�.�~w#�Nڲt����-L��>-i2�}.�$&0���ذ&s�dF1��$c��h��
l � � K�����q �
�g�&� i��e�������I�X\�侙:UY@W�}��@	.�J�gǳu_�V��G�P|�|8'��H�8��< T��`9 �X^��  D^�K�t%�ێ\Lx�h��4�e�o��"Ug�4L�hӋ�=vG�"l3�4, �5  � "�^���y�x�S�CW:<)�|�d��#�L���34�Dɺؽpy��w����o���4����� 0��6i! 0\�K$�t�-��u�c�4Nwi���Y�=-݋�ZR�-C�� �!��RG�6�ۋz�C�K5�L�)�Ϙh"�PBZ���*�M�GWz�vV�(r� P��#��;x,��XZ��ޓHc�3;O[  ��_�0�"8��A+]4��VZh���⡅�x�Ɋ�����  UQ����z���_&J$
2��  K�X��MI���)ҡ��j��ZJ(��e��  "	�pb��5��P˸xb;N��_v� �D��r��i0q��I=�D𠽄�Ȃ/�C4����=^t�A�i�_<`���QFq�`I�MJQpX(�K Ġ�5
��);xƛұI��%
����M� 
�ޤ�ѭ��0m���u� �>CZ�F`�  ���;h�)Q�D	�#� sؐ �=�>ԣd?�L�(�� � �%
�9���� 
�ްu�S95Xb�]�:$$&`�����#t}6̨� �p�s�   ��bI�8��ponR(�%���� ��D�%�UCJ7#�1��pB.ˌ�V ��W5�_�{N�Do�����O=i�����-F3������6�s�3�0$��26) `�
"�-��L�f��0'�] @� ��L�M�$0 N�(�!I������p�"p�$I���7zyq� `�B���c�i,0 M�;�0��7�l��b�  �j���%��1��4B��#�%�z �I�t�j�=�E �O������b�-g�-���"�$H,2�0�e�>����|�:�4�,.fE}��	��`�1���Y�,�0 N�&fi��bM}����0'��,0������"�S�$��9}o`�1!ɹ5��f���+��Xd���$���D����Kbv����� T�`9u�j�JhOY`���SoQ#���5�K�ZZ��X��]"sd��BLr�jI�8��ܗ�%�^C6G%�;�%�/ˋ�t�d9Ґ^��$�̨�`���~����$��M�=��P�	 �n����0��8$�7  �zZ�~b�ɡ6��ರ��_݅c�]E"�*�p�e�[�˴����{�
 ��!�]�c*����^܁��d@�	��.��-��LaWL��P/ր�I�|�s��,���2G�mL�!�+������+�Z��@�;�MYiQ�]� ��i�:�x���NB�	
 4IE�e0x[N{�H4��1�D�����*�%��JH��4t�ƒ�ܗk�Vv�j&H)Js�G�*�$YyRY7e��e9axl��[�]�ۨ$f-r� P�	�|H�Jw��&o�J��-���$1U�) �<�<+x&��ˊjG㨆j&��:vɰ�%
Mu �R&�-��x�,'�zq?��>Tg�X���r�Ě�
�i�Q�J)��R���  ���Jǜڪ��Ȁ��,)$;#�%I�Z>�> @綘��/�3��_� �@F���j=�A����8�K&tH�3U�eaI3<6��6F'�ٶ���/�-�_�aI�ء�Kվ� A����(9T�|&}1�d��YU�t3E�[��S��m ��e_�B�Anm�l_���x[KHN]�!� Mt�W"^wj^�n�|�� �XKB,:}�l�m�}��OI�0�i���8����,,�kiMc�{�/��K� �i��l"t�hD��?�o����YJ��'�]�}�l<2�|٥��D8q�TH�j��#�\�R«o�y�ݗӆX�6חZN��F���� �k���y�:��}�6�K���X����L���;�,������t���jl3ح/���,
 P���#8��>,(,O�@��_��g˒ϯ'����
�wt+� �5]�-�2��RB� ȏƘ�6[v)�/ed�y��T@S�&*);�r�a�]?[J���`��C�\��̖]jXu4Q ��H�F3����fE��೥�� $H)���DZ ]�3�Ԅ� ��M�1ɥ{�
$�w,%  ꜵ��H�.8@j, ��@����������� A@��/�MP݇np���&y%�w��|z  o,%��m��,¥���>tPȏ��+53��G.K	U�Нh<
� [�)�G�Z�+U�+�yLg[J�jMk�5�P�.T�dC�2�"*�I�W;C�ZJ�����2\̈́�v�_Hj�&�)���z�ಔ�Ü�x�hX����HZ�$k�5���@��oK	R}&$���<2&.& �@M%P�	b1��  �o�`&�@I�(�$��"����v硛g-%�K�ʫ�u�8pt;J@~,Ii��V��w�������Ҋ�xI�G�H0H���ވ<t�Y��* 	�T�3y  �b�C��$ _F�h*'I&��	��`�m)A�!���ˤ�}��dx�Ҙ���$B�	,%�Ɵ�;���%��f'>CH�p�Z���N%&�� 0�n��p��5�]^m�#\  �Ir�U� и,$t'��%A@Ũ��`O�"�;Y��E� P{R����?���I����:^��t���z����v'H���	Mb�1�w��$���⽕	5y ���I!Y�T'�hWR5ɣQ�|L��*Pz�ZF8��G��\�q��&�`@FQ�*�BU�K
�4$�Q�zp[FH��G�ޕ3�8�b�Sm���� �|����%r��b2���@u���W)`O��D���YU�3�ǝ�����2��  �F+&���і�G�P �EIr4P���z���O�����$���Δ���r�MH^#E��u%�����"B�˒9'+E����9'��d$$2<BM���,�
�3d�}PO���@���:�+e�D,�N_N�W�*t2� �QTNCR rw�:,%����0Q|>j�gBa6M�9!��R֨��� M����Tt�<��Y����48)Wb%h�h ����\�a� ����3Eiď�d @�E��u[�� �@�X8 '�M7�  j���G��? �o���}�}��!S1*B� �1�$_�H+' 0�2�W���r��� ���s@!b���dr@J��k� �&1{��*�^��s[Bx��/�. �tI�L��Yj�a�$��Y5eo��;|\cbæ�a�TB�1-�$����V�3b��7�ea}. ����ڤD*�
��<q��B,�j�v�l��	�[�/-$[��%6��P��vc%�'Bj��I�{���<8�X�B�빴�X���(p"�<��KI�\�
D: v,!,�  ����Q��X  ���F!�&C��%^c�H� (<}Ze"�ݰ^����DS�4j��y�dc�� �"��׎4V� ��#��n�1�Gs�m�"��%{ `H���rw'^T@���$Y����x~.�TY- � \pQ���%I�/{�KZAC��%e��2��eY��; ��Ӻ�ˋ(�*1IFM�dK鑨ߟ3 ���8�9�S�\�l0�!I�vj���]� �E�Y��#��=�x [2j��XhGZR잡@@��/��o=��/,!��d�o:ͷhO�z�n ���dj��)��@�� �� �ש5�4�![�SB�r�j�.�^TC4�m���
�ʶ|��}�p�g����-�Ȁ�r=4���qT2��:�F:���)�nKHo� ���a#Y�1dC��"�EM0�v�Bߛ�G�Z
��W0��W��T��W#C~�^$  M�Tjy�99|�*���]-��s?��q	պ&K�߲=A�	0�D��
g��#C�M�x�Ͱ�N�i��])�H@���eVZ��S�j�H8��:���hA*���%�b�	]U�%Ǟ����\t��	����y��&k��g��}iY������[��\MVa7m��<��P3��t{� "^'�p� �r��p��c�Z,���e!��{kc�("�� ��/ൖ��	�����1R�mQ��ĒDè��ϣ@�u��b��N>P�ɧ���\��nRJ��ui&܉�#%�k�U^�5E�Y �� ��=,�UI����"I��Z���f�fX��T��Lʦ]3�ݠqY6x��/��DVq7-�QJ~'�������h*tI������_XD�%���t�);Z@z9R{�`1�Vd�+Oru6/!�����F����
l�֫GJ#��*t&��xaR3��8��iY�_*�K�����LlK�XȰٵzs;1Z�d����g2(� ~�����_��������ÑI�4n��eձ�O�HS6�T���B�R72h�,,�' 
_O�ƳJ�a�B�x ��$�^�#VRL���ޣ8�z�~v$Mo )�m�nd��5�l���0$�e��""ۓ�3>�ѹ9�A� �!�C��TUb���X/�Z����RGJ�Ĺ	�����W�
�yU��I��R���$AS�	`�CV%���7����O��O��P�$�,*"d��2
 �T�&#�U�����g��$?�0D�D����D��L_<��#v9vkL��#8?��qs|��嶖ۋRm%^%[�������l�E��J�'�-�-���۟�����v�}�q��M�(l1�5	��dآT8�1M��AqE;7R�wo ���v:�����Q��L��-��&��ǚ8�(�q�ڹA� �H��MIA���,�DS"�A�������#�� Cv~��B&M���dJ*adR�ʹ/�O��m�|�����fRM�4)�a�i*,�*r��v}����x���>�dy�֨��.pq�QH��pu�y��~[/�sK���嵔�Tx���$�u�W``�k���H�����To	��rv ��my�)���1q��H1����@4Sɗ�S��*^��#W��D��r��:�'���-5,(1M�jGkt�o~�7��/��
����D} ��L���j�>PBH�넖 v#/�������4�W�y�� �nBR0!�cE��F^TF���tFq���༠�$��P�,/)�L�Db;� �r�T[��|EN�Ⱥ޲^����U�҉�*98IR�~dR�jR���sH���"�$�ģG��~��E�����3c`��{ ("�,��*�( E_��n͎O�e����� (R�� ͥ5�U����wR�L��=$�J�w��������U ̫�ՐUȁL� v���E)���45�Inn�����~�����X�(ꘉu�D:!+���&G�P��-u��\�E�΋T�����ph�^{*&�c�{L*RTE5��&%��uk�[�ne|�vf�\�и�7��L1w%�r1@��$\&h�T�Ďeܤv�ޮ[o�<���|�gEV�߸��j�Rƚx;� �� �כ�(C���Q*����=Jb'դ�+�߾����"�* ��WC��FS�5�G=�|)D�}�]K�4���)ē�/�1 �rL�*8T:��x�r����n�0�2U'������`��8N��'�(d������:��O"�;@�(�&��.�������'�A�������n�V���'G���Ҋ��z�*)"�C����x��}[;'�Rɤ�B� r��r0�E-Ny��c��竝�~  p���I���x<�<ɻ)x���z��"�u�X��8_rV\;P��ېGL�VMr�9Ogr|̽YR^��I�R��qy�� 'o���b: R�M�䤨BP'��b�0_/Dآ	�֑�.^�	������=�����U`GT)I�����ٴbl���UF�����z֓�q\@�b��q�:v)���"�#L��0_���"��:ɫ�������w���֗'%�� �6l�i6��������\�������~��pJ 鳭[^RJ�a.В�$��O�/��5���(b%%�i�V������o���2yh޶WR�s��H��e��)��Q)t*)�v�~�gi��������\9�d�r��Q&+�愿���.l-�X�VR�-Λ��y>'��� (r�;XR��5)����)@�"aN�\�>ہID:�2��v�AN	�����"�s-i��(=Bnu�̤|��;0�Z�y��۷�/��զ��ʔة$++^O�l�R�I��j���b}]���
�|?���t�k�P�D�x��,E�	����w�J*�j�'�=��H5�^�zY���(*�*g~�d�HY��M�	�T�TcB^~E��pEǸ��@nO:,���DpDi�gҔ�,|�Ҋ�]*1��qL�(.k�"U~�\�9�ZDr��7i"�ೖy ��ky����}�V�u:#�Ƴ�sų!vS��;6��i����g	�N�:���Z��ܩ�+@ΈY��/ ��K`�Q	��Ɛh�K�e6!�B72�L'E�~���P��F���0W��d�i� �fQ�H����XQ���"U��e��bQj�2�0�ӱү�3V���	��(�E�tZ�����s�$WRhGL^ $�𓔥�Y@V7%叩0��� ���˳JP��1�o�$���k��`;r_"�ɔg���p�����!U��\���RQUQq9��$���W
��T�Tɭdj����섘9\��H�h�j�H*1!�'χLe�z�}�@�H�X&�o�r:��� ��V�$9�	9���-��+!U˔O�H�-0u#�#?]�x��th�p�E\͢VRj�Ѵ׏�7�� R.����o3lP*�y��%�ۊ��3���p��q1��*�H�Z�2�4YL	�M�`Qm��mM븭8nK0�c����p�w���֗9����L�A�-�t��`�P*(8DS���v��kW�8r���-��T�s�G���	H5-x��y6�q�@��&7�y��<�t��� E\�q4!WR$���g�!U�����`�
�6t:!fF� *�Tޙ8�I���2Eܚ RMH�����c���s��u7~ݕ_w����mQ�� (x([uS��b!
�
�ĭ��@'Ɖ�cҧ��'G�,�Ω��IG�8:������+?�x���Oɇ ���C�"��M���'�\S�ۛ���҄<��G]�e�3u9�����>44���@��商9$+&�O�Nu�
�c�)u�kϫ��Vg��Z. ћ�Ǩz�u�E�ԉD�XHps�J!���1	h�����<s�g�hU��\9'��ʵ�7��pRd�Y� @���q<!SFx�4�TOmN���0J�+�rs�&�d�	�M�$�����<I��yHN}N�s���F��� P�(�ǚx�Sf�rs�,d{�ĵ�[�q"�3xf���\��Y�Ǚ����7����<��G'� (8(�l����݄wg� d[G�#nN�KP+�@�t{���t{'��I��G��r+ 
^��踙��\�.��qner%n��:1±p�<��g��Lʏ��xy<p�/XO��ˇ�H�H|�
5A#ܝ� �=ET�F��@����)�4��4ݧ�>�Ӣ0�	��r25\�W�	��.�m��wѵ7W(GX<���G~�P-
]��j�ݝ���OM����Z|��D_���9��qr:Y�W��#�?~$�?��<"Tˎ4���ۋ͇M�1����ez��EAu�f�*1(����>�r����$ȣ��祭��-�5q&�׎ᣄ˴�<1�@�:qK]K�e���9�8&*"������|�%'�O�c��z&!�f<�>���%j��\0�i�����<^=�&��jA��������ƚ@ıĎ����!D .Scjfe�8�
0MռA�u��ZBZ{��g4����:��a=�-y}��	�RE���ɛ���$Q�7̙>V��U�c���;~�zXu ��r�8��.�NED�=ۅ������3n�a�'L_�#O��cY=U�|$X��!�km�F1J(� C��^\�(�����͎�A#H'o(}�q�Qy���l=T|R@�(8���&g�є�MTr�p;�rE5SB7��c'J�;y�gN�L�t�G�g��S�� N��s�e�I='9eG���L��!f��X����q��)������G�sh/q��i��P�y�F�'�� .kSe5�I���м�9;��8�R��Q����w. ͷwg6��%���	�2b�p�p�bfV&��z'��9� �l��}���Npx�ǁ���S�߃�1qN�9i�u��y�ͅ��~5sT�[�/L�#�	{^��y��p?>����Y�W� ���/~9���-Z����Y�\�K������X�������꛶ާ\����<���˯>�� H�Rñ�z[q6ղ�Q�4�[���:Q!L��/v9
� <A?�}<��Y*~x��~���<�n���gr����"q�`>�� \ކX'���/̠�GМ��G?������A�P����PpQ��zL/g:"/�1���	�2�ʸ��B8�f���I��^��O��� ��_��g?�ؽ��8�k�E����Kn���v9�5�1{Gx�p��R׌�N��������{�������� �� @��f)��"g��s����cTr���.cf��q�����x�0�S���ŧ���`|����E������y�P6UlG~ɭ�Y�M�`�b��� �%�#�n7��p�,��C�Oޞ�'o��OC@����W~Q��n���P��~b�K@���������n�ޑ��A�-��'���H�3��qx&HD "n�*������!��!�=�~�Cvl~��Tn�P�c�k�m������s!���}?/i�%��M&p'��d�Խ�\�?�&!��(��f�m������0�á��N�-�/�Ϗة���U�� i�r
�U���Z�k����>%<'~&�� ���x} N�d����7�Sl��^
`Q��L#��������hox������D����P*����7�����b^�{&v��]��@ k�f	+��'2�5ѝ��t.<�33֬6�Ύ�ǭ�
��mY��6J6��~���7�|�@���~Q�_��[p���k�{{\���@^���q���q� ����x���=�<���Z������۰�Va{�d���7��$z(|X�/M��v�{�z
��Y��Z�+�0{ϟj N�@�m@ܦw��62��y��v_���<ܞ�3io�DP���� ��;ӎ7�xA�S�ۼ����P*( �-��%�gW�p�Eb7pK?M���q=W�O��d&��]�7xew������o�[{��~^3L�X�*���	P��<�;��9�aJW��G*D�	U5e<A�&u���Ø��S�@�u���J���5(��('P�����M�������	�	�	��=<x�yC�� /�d(�"\��J4[��z��[j����!�����\{��)Wg�:oC^���|.n ����u�i?�ݺ�ީw1��(�r�  ��[�<�[!�����@�Ӛ��=�E�I%Ci\Z�NR#����һ)���v���ھ���a�[�54iC  (�6�]�p�������9I�C4!�U@ �-T  F� G�X�E�]��,�,7�·;~�DZR���Ԥ�z���y���澥�ove��A�>��s�J�ylo��l��Պ[f��矝��y��d���HIr'�1�	u�B�s�*�00D�{��=�=�w�eN���N��M�Z��>��>z��+�n�ُ~ �]V�5�{{���x��I�������~wO�_�Q��Q)�d�:II�81DeȨ*dN�Kȃ����@e杹��O�O��x�pAt�`�
u4��Zͭ���F�_|Ď��^+O�5�y�/p���A������7=�v�);�]JR\�MzI�X�C�D2$��]��K4��r�dֹ�w�;���NJ�M/�D�H;��f��,3̒����r;��q����C臛��2�2�����-Bj��� ����*39P��;)$ą����e4y�U@N�A   ,!Bi�4=�2����tncyo�i��'*�А�%����yȺ�����4W���z?F���Kq�	?�K�
�� �ӫ{�I!'y�If�;)�'��|1��kT���� ������ԛU�y����,4�k�}�v�Fbsiӵz1\>��kd#���u�^�@�6����|)�N�A*G��d�%L��ɢ�`�l��Hw�����IV2���Nʤ%�c�Ǖ�Ѵ�m��da`ē�����,6��Yϝ|)?� Z� ؎;���f���5y8��<hσ��؅_���<|=��Ѽ�~�^"�= ��-]�*�%���a� �1��(j�t���wd%7���$#�$�!jQust���  2�~``M$��>Z��T���,/sμ�| ���}�2ΉU�\�e]k�vk���o��@���������Wٌ�����B���2�C�k
�����w�=�}B?��q�  ��\���5����g�B�K	ŝFӬ0�D	uz���h�'@���5�Y�UO˞�,��{߀+�7�����B#�lύv?'e)��K�����]v�~��k�]����|VU��^u�'0Bh ����S�����^7[~j��`����f��ѥ$�)��$���M��n� �0GC$��h�t<�JG�M����4w*Sɧ�=Au�gBa7 B��˵\����n\1��c�>�ᓓ�����@��a����V�nE�c�U'ۨ�7d   �������� "@&r#Y�m]`4�������䦼�HőBV\Xx얜���ͮxN']�q�գ.M�)4��4�=����������qLI�ӑF��q�0c�Vfw�ٝ�}������w���?�@�Q�Y�/��5����;�ͤǘ�����\r&�(�2�:!���p@
[v+�A0P^�r�h
R@q�H�8'9�bM�Gk��%��t�ugٳ0�X��No�b��ZTC��6cD����;�>B�7��M6B�;[v�q���Sv��O~��Z(�kn3���G�v$w����b�˺���e,c8#c�mQ!q������ � j��^|�UF�p
R@qd���ܱ�0J����_����@ �@ZӚ��,Μ,z���O��� [�Z�P l����BT�
T�= �ǽ9�<�3#� ^^M8P�*�D��e#�k�����B�>,f��nv���~��A�E�%�S����ۊ?_TM`��LH��D��Γj�pJ22�悸�8�Q~�Dd�;<`�;�������K駀їLR&9�bD�&$��  ���%������@<�3-�{���fF�E�����n-[�'�1�'�C��CD�����h�����(�v��!S%�W�\����������>,Y}w���N�>o��@"���v^o��8|��r'l0O��,����F9�!C&%�fB�2s�i�6`���e``��_�MYJ��82��I����ĀJȐP���Gx�u��"�pD$�DC�x�=�h��Y���,z�Λ�p[T��q�&_�w.�l�p�<��K���v��F��R�L6��DR����V �����������y?�u'��a%L^WS��\͘$�"��s3!(,ո������F�o3*nu��ʠ	l���norR2ES��;���p�%�0b@�&� uÉG�T��{� ��7r�;�	_:�9-O��;+�J��J>�+�Z�D�a�r��<�y�����FE��p0�=í�V���1�M7��pIs���B��������{��#vN�����}ފ8n��j�%�7&|����͙���t� �"W2 �0���g�t��&�G+��Z@	.lѭ`&E���<����Üev8�9�b�c%�1�F� A3�޿��`Hxy�Z	H��|#�#��Nt���Ӿ�Jk�N��9my[����T4��)b�3y�r�q��j�v���"L4��X�E�����JCJ
X�6;g��?�#��2���-��>���F�şE��q�iƸ��$�(��=��0�	�qjRAk�}<�lupa��/���8�j�K��K�d�A"�_�X�~�O�O�b"1*JT$@�}����UnE����   Y �,t�Ha`��D�C�'l�D�K�t��;����!.=��m1��pa�(���v���h�A0�#t����Lx|��TCV���y�?��+ ^ k*��-ѣţo*���g�Ϥo��X����������Bw�#J �tP�:V��BgZ:�u���Z��#�v�U��LiI�9]�ߩ=�ԍ�RL��/&&�k�0��Kup�50o+.��� �ܰ��\�ąG�6l$�ȆB<w�nm�6�V�w�l�,��6���^^���%%���`�7ׅ#üdjyKHG{-�Yo��,ivu��4�����]�o��
� �E k����)�$�_�K�������	�-q!��+��,8��Kg����������ŭ&ep��ی��]O��:q�-��_�M	��4�t��Ҹ���7&nlR.�(�F�H �����P��G �h9��0 b�N��"!E6��� D/l$��K4�D#!�2�쿒�M�u�:��W��� ��nQ*��?��B �*���7娸4��$!�f�Y�s7V��@�-�:����%�k�/�bHk������I4����T�,����}�Py�ܥD >b'�`jh���i�+��	�%��ݐ3�����Lp���E�W���R�GJR���T��=RP�����b�`�A�Ó�`Kj  ����@"�H*@� t��93��8gv5L3��i��F
/LX���`g��
@@�[�et�b��K����튠�*� `;iN¹z���|�;���ap+� L�P�z6s=����5Pu����(F���W�/�q����~i>���/�Ѽ8x�����_|'�K��ݺ���� �δPK�4�?<�V��݅���aIf���d�np�����ݩ�M)u��t�6�)��rcbj	 h��H��{RC���� ��aFb;�(|Q"HT$2G�72��@�fa�<�a�#���Å�aC!;�@���&����6����5�o�"VAU�P � ���I�by�K�1���Gf"���&�ޜ�ϿU�Wgi�rПw@�V�<�ߢ?nt�@��{� �n�r��<<�wtzI`��0�F6kX��;H@�6i�uFî�lghF3��[��c�vM�"A j͘�٤&1����~�����R�/�c�yX���`@� K,Q�  �Q�_�/�X�č%&&�QbP� -� B�Q��Ғ�Q�0$7sv�ͰKv���9C2��{z_�3v&�p�Np"v�Զ/�"w{��"Y�˕\HR ��J#&.Wa��!NH(i�i=��9;��� �~����{?�M%��_��������� ��qΚɽ��:i~�y��s��PvT�]%�A(��0�@����i�qڥ�8:;!��=���4X�$&5�"k�tMj*dT 
P�15Y�Ɩ���(X��Q�.PH,�(q���/%��`��x �$ �	�! J� @$�B�f�f�pv���?<�k��p�l��J���@TԊ�Kb�r�5��vU�B���Ӓ&�E,eN%<�!�!wׇr�'�6J���o��/@{;���M��g�v�����>�hJR�j?��Z6�����iK\�	��FZi�#�#<<��Z���5� ���@A �- F j���� *DhMZcM4-؂Ej8��8X���c0!@!DhI$�d>G w�S�3��.pEW���&�P�S�}[���$&3#R��1e�+n�+�erbZ�J�gN�T^�}͐�a�)�.��6�w������7���
þ�����7sNp;��JDu�)���޴��]G� � /|�%J�K�頓���}N@�j�9J�ڤ�yK�����&"� PTDQ Q H4QT�R�����
������(�ŀ1�6�X�8��̞�DJ B"&v��"�T��̜)�5ɢU:�O� ۏ��X~�`�w@{�t{;<T�KF�lk�MԄ�?���]�+�G��0��3�i�-�.�tt�VTI�����f�:�HB��&gR�0�hC��ݬ�f�`q9�0�C��I�٣���Wz����'��S��O~��F�^�ge�w�nb�۰��0��hZ�8�U�h�`���H �'B �# D ��	ҙ�Mc��]����Ї�C�`]$2�p1�L��b��F�hۄ��{8E��5囝�zt��)�
D�W�'�YY~�@�� �ާ_�7�< �"z� ���N�.*) � ­�  0 ~×�D8:�LgZ�L��o�M~�6�`�
�*@�*�1�|$�ڮ�)E�"[L��:e�%eFE�@����&ј �LtjŉG��G�XCs>����?�O|����Տ~����^�������Gw8�w5wIjt f���y���b�+a ܮ @ !��C4���œ�1b2����$�	m���h���f�8��O3j�ܪ���3&E|Yo��Z�M���1��
B1�b)'f ���Hr���y�)\�(����z>z�z���k���Wtn�[��T��6|�b^\짝 � da�'! 
?p0�CJ�%��iI�h@�9��L����+��c�1�d�r��h!��]��.&^��Ni����/�e�8�=�� !c�=���u"�l�K������<�x����z>=��}!�5�6�gt��&?V�d�T>��֔�c����i	���!� &6  f� ��J�B�v�*|c���%�3��'�۝����ޘ�b���ͪ�����x��p�#�vŶ���I�TD���k�N��� ��?���~�I����% Ћ;��i����<�a�)���%\���9iw��^	l��x�ouvq����]�ɸӆ�A&�u��_����j��%�SԔ`9@�K��X5}Y]*$����]�[$�.���L܄�Es尚�� X�ǎ�<�s!���<y P��-o+׳i�c���`O)��M�f�N>�M�LN�7���ϷV��g�F��t�3�qz�}�����߀�%4#�d\N���&	���C^�82k� W�+��<@Y7ۃ���r�CUfz��&�ks�l��x�����iF�,�b\]�����B#!��N�^��1�y��W�s'Qvm���XK^"_M�&xX���k���a��� p��q>�^�BJ��F�71隵F��j�>nY�[x.L%CM27��/n�,�R�ӄ������{la$��ɘ���  z+6�) 
�q��y����"�#܁�r��R�H /Ofs(!&r�4�ÜK')v9J�na� �b�G B����<1�=��픷�))/O5 �g���.!1SBC�r�Cs����N���0@��Vl�0 !�q��|[�9M��۳ykob�R�4y�3�0�̝@�`��<�22Q� ��N�q���|Ql4/�;�˽��̷������Vʕ\D�R�,y1�"#$$��#o��<�l��r.@��P'��VlH >Z��|�>����t����d�$DC/?�  �����3�'���I�{LP ��ب��}3���\��j�1f�0�>���Vp��� %^v< $���9�:>	��� :�� lJn"h�'O�A�|(^��3���Z��\�e�	/3Y�r�'�"%3.�硑���@F5�
�d�|���j/�a����ȝ�q.\	�Z�+�)MB//��>��i�یM�X�-�T`n*�֓e^F�! Un�+Y7����%�ܷ�^����~�&��.77R�+LXy>����%�b�q>Y���	"�V�t��^5,� �%'��w�`�<��}-��j[��ʑ�Ya�.U�w�9���I�Br.��[�,[\$Nի�&��'� �t�h �\�{��Ǐ }�.O���jǌ"YQ�:��sV0�E�+)7R�.E=���B�~�N���T���U{�>:1���E8�)�dUr}���HweD��?��(3������NW'��\K��rec��?O<Í�����&.�I�$\̶ɴ)Y�G�+�K��G� ���r��?�����}�py�+�D���=��2-G���=�OwP`?�fKK<(9s剜ʢ��m9�:'S��l;�$��-�pO�m�|Q�yr
(<�����
 �G�yz$�����z�h��T��˚��8J�ŋ�9��DM�=�8��bm���dI���Ho����m��s�H�H�>����}@���F0�S���]��h���"�Aj�9�c8Kj�@�6i���[u�q*Nq6K�%��hf�$~�~F��[^V;G�@3Pz�G��[��xz�.�B�nN�g�{��xUD��S�ʲ���xֆ��!�<6��ĩz=u1l�9M*hޡ08�{ķ�gH�Y}9����QU7P�z�_���S�6;�J:��O�2�v�T���5�xC8+� �I���.>���<Np&^��&�9*�z��d
����/y|�����?�+]�Ǵ�,u�C�������_̯ �}'�]��k���F�*(@[\��)�]
yx�7��{ZY��,���?�>��N�%��Qr��'�ϔߍ�?�s��Ⱞ�隀1�%�����8�����c��ϡ\�
�c��(�"�tX��N��w*R�Ui����<5W��w��o�=Us�?|q����X������������S`��=��jf��x��ElQ}�C�`��	�l�R�겺Tۉ��fzMrL>"�&��߫Y��j��n�]`^�L���#���?��%��^���Z��Q8�h�T';sHA ��%�hP ����}��h���<�*�o�C����'���~˹�r�����K�閂�5}�� ϣ��0�;ޝ@`��Gd�����W<E�G�_��z%d�řA��D]�1Dq@���r]����KE�����YZ�
��h�2v~[�����s�~���y���3�F��:'?���~���-���ݩV��Y=���Usmg̼Ç��q��.|ʟH�����O���"/TT�<�蠅��I'�=����F̦Ii2�v�?ș?`�m����'�u_ �����n����˯��g
(-�[֎�وΪDW����V��u��ڼ��	nMy%�$��S~Ḹ�A3j�T�*	�c�-F4�A9٥�|�rW�L[X6O+"��������\�Z��>��3��u� ��W�C�E�Ҫ��9�y�Eg�cYS��~im^5t ��L8J������݉��P��PX߈m�u�S(�I62Ԝ�TeQ�w:�-J d�Ht�HNl�{�~{MqUϗ)�r<R ���s�\����8��~����o~�v�v �t�o�E�1y0���g�[�X¡�3)Ϧ%���K~&PZ_�"�8b>�ϩ56pW������7�{,[*	s�J&�N}H9l�]�5s+`]����	v��o��i{�C�ys���5֬Iʰ#���k&�p����f���"U�� &z:P���"����˗K-!f��$#t�TCR��D�M!4*��k1�Ztb���5�k�9��o~��0mv1<l��- NTq���t0���+���SD�tcoȤ��5s����ShAs"]����=Ӗ���E�Q�,�PF���GC�0a�RjQ�ÜVr�V�����G���߀�y ����W/φdI�"JX?�6���aDt��� ��5���*S�Kr����+0T˪,��� >X6���e�&���(���⏮�Y�GY|4��+-H�-�z�{�Oi�'���O���y��Q���5������P�����,�0�VO� L��������� +N� \�D*���� :��_�ߥ�����΃5�؄�O���&��!L \T�����z�c=��x�]�� ��<�id�BVP�P#��`}b�c.���]H���w'�Y[�i�&�ǔ�9M!��La���%����QV�Q&�,8>�ש�N�)�^���\�� fʛ+�7��	S;�|��Y�ԚI�;�w�;a �_�:y���ǫf�봥��W��Gf�V�ҡE�Ml��U���@��~���tC�rJݨ;5Y����{��ʽ؍��F��g�^��܌�t�R:�A!z�d� x'�a�T�R�$�.{+/{sz��	����_��t����kd��2b.|\�SF�G�)$�b񈇭k^��chPä#�7-I8f(r"^��yVdE�ބN؄{�L6͌���E���?n�o��x���|�G*n�!�h[�f�8x;�EÄ6M>�K&��Z�]���������]���۱w=�=�YO�I������R��B���M41���~�O�2Cd0to���" �c�-3sG<�#v��A�c����3=��sR�)F)8c����my;��3���&ՌI�n�(Gg�vh�.��>0�"��ױ$G�F4��(�[K$B ���!�� ���uzb F��qD	6��r̿�6��F<'S}�ݢ� ��N�����l3�R�H7��1~t-�>�ፄq�TB��� i+��Rם���/?e������ ���G�U��s�C4����.�  �� �PЍ�hPE����zw|� &�hQBl���H��=�x�M����T3�t�n�c,g�dLb�����B-<63��7x�;��E���R�N4��H�?b뺫���"�Hꮏ�u�'�I�� <�CB7�Q��1�@�����X&\e�  e� �8$Ƿ����wffn'�v%�L6�^����9o�K�&!&Ȑ  �^G���[a�a��\�0�!�Rz�a ���xˮG{� �EQ����U�d�J�ƴ�~0��UJ�:ȣ�*��C�u�wO����C�-�*�����c���>3�g.U�3a��j.�(�3�;g�b�Kr攐�S�C�qvM��e�;�8'$L�8�����f8�ʺ�����|] ������>:�P*c:û8#�QD�":�����7�'
�Bg�qb6�s,�qtpc���N�'��e�������L������u����>Ӵ�5�3t0^>,b���g�w�.��`_S\���iH0�
�� ��!BCF0��Є�8DmcPB��� \�ZN�I�%G�Ff>�0-�M�<L�l����%q].s.���Z�!&H [�$�w� 8�0nTD��Z����~7�~W5Kj�W���%g	�s��Z󼗾�k��1�m�'T!pnyH!�Ć6&�X���w(��NĈxo���&Gn�1+Y����5�pW�`ۧ����p��l��ޯ�� �53�6�O��`�0��fP��u����/���|ȥ��rh���|'��L��_�j�8GG}�7j�ݸb����hu��]$K k���E��s�j�8M,Fm����م%���Y\�����r��Mj���	�g1�ik����~Ϊ�#��,���îW&���x��b�7���?�/�3|��0!p��e̡w,$ał�4��z�����u��@:vr|V�,�-g.~	L4�Dӻ���a�U*�����˫fr����'\Ƌ[2)�d��#�<b{�:��ǿk�y�	� �)l�6�DE"S��_5��}��7|��'� �ӡ�E�N�&)F�X��v�� D�84ai<���&J��Q�%�'������Xl�����ǎ?�Ǿd�53|4ç+�;���~���W���x;^�k� ʴs4iF2��I�����>����.��@��DM�&)i8ǁcJ<��f��V�H\��0Uo���8wc�NM�e]V>��/��M��/�j�ܒ޵������_���g|� �G%��Y\�0>*�I�?�gtFNޟ��?YtO0 V�O�ru_g>�T�L�W��c�u�*!p�q�G-ǀ%)�u����Q=M�v���*(��!��>��5��Mɘ���I�8�Ϊ�����~
P��,�¬��@Xva1~!�r�\|����w�c�E/�}�)^����VqNz9i֥X;|�T���}��g��|�皏�'�dZʓ)��K�7]|������N�zǀ�H��$����n2l���*Y�� jĭ��`��å�ڔ>
J)���K����� ��A�	 ����4�nM vbq	��������w� �U�3���F�%�4U���v���[ ��[���}���H�t�i5�)���k������$C���@ dh@���`��2H#q��_d��iW�-�H���dzj͚qpt��l�Po�t��<[�t��"�'Bd�C�`����5^ ��F�iqy|�
$�X� v �v1��;���x�gԱؿ^�p�aD$������o�a���4�ܥ��?��e���t�$����[����0鴖^�����$���o'�"�sN!N�`�Ǥ�F�I@-.����(Aa�<i1+_|�������wOB���C��d�D@��tK�x	 ���G�upaw;?�k32�ǟ����� ���W�'����{iP�i���+��2.>y2�������	 P���ׯG=��L�Es7'���L�A!�Ç+|���ʕ�n���  �����9�4=uϢ3[fd�Yv>������-��(�p��\���u��&�(	 (܉aX�;g��3�aؓ�U�R�3����K3��].��j2���/]F�,�hgd�e�����W�0C�����"��5)u'���D+ʓ�iI���
�>���)��4D �E�����h6mOř-�Μ3��s���O��6�U�X~\�s�~���&�(qQ�� ���`����&���?J���`o�$��#f���(��No�.㽋����H��K���)��<���0��k��0<t����fN0D������~ʏ��֔�mK \P@
�D�#������3�y�l�:>�}%�
X���F��JIJR�JE���&6ǌ��m���P�ݻp��	!$06ۡa7f�l���+�r�m�;����yi��pXj�<��+�y�Gp��Y�C��7��%w>~���G 
��]��0'�h�9D��D�ĜqO9�ϧ�|6�'�`�Q�>�𜮴<�,�����,�"w�xB�na�k��,��+vRě���� ؜R,�D�&�����k���! �I��l��CK�HXB���Ӊ����"��m�t
3v������0 ����F��.�	0������7)��pӢ�~�?x �ᢘ��0Ӷ�șn�B+��IUE���iU]����yo��mYȃA8�tҎ��*�r�,.�Ͳ�o�G�l���(@ �m�(o,)C׳�*6�S�R"g�i�$ʔ�-���L�&�v;��w��Jo!�'�|�or�g���� �������w& �8μ��7�������`���W�C<@`�V�ݛJN*�)&UI��F#3-U�B�i'�[p�O�f�	�✞!����6�2����dw�6;9�h ̇G�"A�򹋌r,�v����B6�N��㺤�����P�K�n�g�N
���^��񋛗%'�ǉ_;�߸�?ۗ�ǰ�y��V�둋˕/M.��;q�)��yk��dV7��
�$z2�p���͏�̳(�^h�9<XBt�!�fU��K���fy7akD�u
]+��n��'N���+y�f�(��]���|�2�~�(v�{�����;�>,�����`�*P��a���˯{���p��e㼙&�@E��I�Ƞf�E;�U�9ة?�ygp�ŕ,f�X;���D�ґ֬����S��TۀjA.|UW�zY&��6I'7�ͤ�����q2�	G;�}�B�B�[\>��m^0�vF�\P�W���߃k�!��&K�jм�����{��z��r)oU{�/7�m������@;�f����0�ᛖ'3t�`a���0 #���IWVoV1��m������Rm'��bk��!���  \x�ZE]ƶ�&`B���Ιƛ?I^�_%I��ޟv ۻg�G�C�A�p�`���K�}�|���=L`��շ�h^@���{Is=dا��	�妳չOox����gn�<�{�rfA��QHn�p�0$|�����7�b���B�`g`��8�=�fA���ج�.-��Aԡ�xMi H ��   .t@��-������[k\X�BVF��r��kr@O9����|����U���wIl~v���+~?�;�s ~�߷������/  u/�`o"�����{9ݓw��G��Ē�m���5΄2� ��V�_6C�Z:�ڹ��pdD zB���P���K%���4ђV��~ob��&#P"@[d�P P �.�[x�	�t��d�������q%��䐒��&w�Ld���c<n<wm�o1������w�~7>��8o����`�=����	XS�b�ބ�l `x��4
j��Í#a�Jv��e��d��SK]��A�᝹s;�ʄ��^�.,���iߧ+-i9���L��2W�cf{������NN:���L�і!"uD "RB!��A� 2��<�{��&�$$!�d'9��dNJ$��6�ڌ����3��'W]$f�!EXb+����$���5���C��JQ�>� 8���! 2�xJ<
���W�X�73�<�Ve���k�2rc�r�
�,bp�]2p�!�0�&v�ә�p�|>��M�L��6�̔��ؙ&mQ��^�RL�4Bk�0e¹��� ۩:l8��E��Iv�� ����"@�������ݫ` -���4,���D����;�db�s���C��  ���Ե��a�)��o���ܣ7�Kϼ��ϼ��]{����' ~����1�_��y�� �- �lL������ft��}1и��"��b����fYH9u^�.  @�p��;b���V��{��v�1Sp�>�C2�*߹���4�hv'c3#��В	��6K�X�9%��TSBI � �� �I�pT�!!���#%�Ɉ���1F��G��Qګg���Iy��2��@��be�=W��k�
�^zͥ�Y�f��hal�.�7@~����?��-��l�@�r���rY׊��9�4VQ���`¢�l-fB�A��0� ���p'Λ��@K�8"�0P��% @KM�!$�v����͉�xH
ʀ�Ħuq�DE� ,�(b��� ��ڃ��*m[O�8�hoϻ��\�JZ�Qr��%z.9g�"�y���u�>ԝ&^&C�h��o���� K3���/  ��;��F�o�px��f�}`�v����

��eJ5�	e���� %F��(  0�� B�B��l*1a��y,s˝�_��u{�lO�'{k'�Z��kv���Rz�8W��r������g�5}� ם��� �]x�#�,�|�� �3� M#p����Z�Z�5wĲp�����	���7e�����dh2"\��eX�P�r�=��IH��1�l�+g.�{4�y�B�W�܆3���6���s�0q~�$� �p�ǿ(S�����5��@G<;%�kP��sr+��0B�	˄^ү]�����������rB�v ��N����\<��:)s;�$�I��yr.�y�K&�r�ܫtt��W����f��P�@��  �;����}����[�i � eG���Wܼie� �	�b�vBj�J�'���n�W�"�<C�pI�i��֋ֳ����5��詬��䎺 y��K�΅WI��~�ew���6C��
} ���?P�z�������/�y��y�c_&�Ef�>q��t��L�-��Y4b�d��\��rX��֫�"�|׋���Ek�92�'��s��B_z�{�������Z�aw�{�ru^�� �.@  ���G�tu���� �������fT��w&�0p#���ij�I�O�	)rBJ�7��������uڷNw���8�q�����L�>�5uE����r��N/sS���զ���y�2��� � ���>-��.q�$Ne]��Jgni5�d1�&���Fb�p2a	ߵ|;�$8�E?a�0w��*��yj��N[u�9I}��x�.�`�I�$��x/s���������]�t��}���g@@l_���O���h�w�۝|8�������;��O�q�ʙ���,�T8�*+�	+���۔o�'��}.�1�����)���t�E�u�xx��ŵm�R��LT&��}陗�W����\��}��>��م�s�.ݾ
�X�� �O~�������? N hn)� Y�r����մ�\YN���+�Ď�hX���4��<EMd�y�d�~�� G���}����0�?��e�	Љg�i��r�p��5H����x�zo���\jr�+�m�N���'���Y  ��� ����tgs{ j_$m�u�=kϤ��Y^:�cMW�}R�8g�D{.2����@-)5��|󌙌q&߯���5� T��T���s>��0��ٷ;XP��h�vǓɥ3oKΩwԞc�ۗ����)G�+C�NP����|�z�]�z�c�(� Ծ ��N���L�)Y����9ko������a�}d�qș�D"���  ��y)����\�6�PʘɌ� Н��������@��m�J{O�
� X����{����ɜӾ��p�|�p߭}P���`�Yڶ ��@|>�� ]o��_!m�� �����֙5��H��׳�yR���у���(�*+ԙ��U�%U[BY.������n4������T�9����{LEj���s��0/I1�=zM�.��r��+2+]Y��m�?�n���b�>��IY�����7��_�.MMk �}��j_'e'���<�q�q�il�"
�� ���],89#�M��'!v$NƱb���ͱ���e����f��w��41� f����.�m2���+�֍�F�P�߻���ueh�g�~=Du^�K�e���_�_���y�?�uuk pM�q&i$�h���,g���לb*�9��B�-�M��JB�ȡxSDiƐ�)%w2��]��9����3s�嶼�󣟪��I��z/��h��s�[�Ҹ������c����`N����@����2Z�\�o�����*�#� .'����i��k{2<���h>��j&ICb� �A(������M��D.�s(9%��I8������ܗiD��i�e��T��@:� 6����d��W��]���.W>��#��u���~�X1C���_�_O����_����7y�� ��}ch�$ ���&�k��r����>�2���S�3�½�ѭ�y������,��¹,��X�;n8�:���3S�c�m�BEZ�D _�t.å��E�����[���3o��u�f�ױ�{���!~1�)}�r��)@�,����7�,����W�w�����N���@�O��Ǖ6םR��1�c��ys�^ׁ�����'�� O�k`���Ѕ��G�I�)�W�W<ś��BF�<�} �(�u߿u�2�����#$������x{�}iJ��L\�H��"n����s��̻n_1��6��$��_ݽ�}x���)����7 > ���|7�H��?~ 0>g6�)
�i>���y|ꁸN#�VL�iUݘ�-�Ob�@�D/o��e���W������?=o^�;dB�M$D�	-���4h	YD�G� "�K�;�p3�V#zQk�^��]|��y��JX�ٰ&|��HBS"X	�0���*��YXF���ay��W,����1F�#���Ȭ��c����!Ϲ�khunɋ���Ƭ2��P��x�x>
�.ڗ��������W�����g��L�{�����:�+(6�V�VʙFЏ�a��
�D9�l�R*º��kfD�m��s¥x���r�%��'���Jy��nf!!@��"��"D{#�)�����ل�lE��b���Љ��!q�q=�'Bx2���a��]������}���)��q�]�d��\c�+9���gr�����X��c[����W�L�u�Wvp�y6���������� 0-]���{ͥ�n�t��bx�s�%�v�2J�$�"�A-d��
�	��f��Q�cg�җ-O	���_�|�|�\6"
J  �L� &4�Mh	9h	��R2!�"ZB��	)<j��(@� (���J PBL��U��h3.pҸT��6�v+�hJ�>4�E����T&&��0"I���q�w,�M�G�Vzչ�c�c�W;�J��mt6����;��6����|�5D$dD�4yR�)q]������4��a���9��{�ir���U�N�N�A�F?25I~��P�1c�E*�P jqp] ͈�}τLhJ��;D *!�l���ЂL�'̃&L攘0�`
���0�)S�4�ӄ�h�LȠ	��	@B��H�k·�n��C��{�?g�_�|'(�	��:!�n0�[���
����������V4%�V�5����% ����)���K6��y�z��K&�X���2w�5Z�I��8��u\W^�M��8"i�|�@ ��L3]9Q���?w< �ᴫu���:q�^��u�gi�Z��w�����z&͐Zf�(� vk�R��Z���qE����!��bi%�'�ǜ0S0�	�
,���!R��F�UY֢=��k�B	=Ȇ1��r�06��D#��#���b(�j�VL 	 �&/��ƿM�Sp5��M-�9�O�}�qYԖP+���1�W����>M����<"~��7
���z��~�3�o7������8_�᏿���5� �m�S(�;Ku�T�۬��;��:�w�U�i�V�h��")k�ԑ�xY��ӷ�ѫ=�T��P"@*����H$���Dz�u/K��l�Uג�w5�MnK����T���T��șgo_o���˗�rD�qo��轻���w7�/���7 ���̝&a$�� ����u��ܛ,Sݿ<CGav��{5��� ���2��Hb��VR�P�WG�1�.v�bzb����v�.G.k&�J����GZ�N�DD$��G��`(d�mɯ�����ͯ����;��?| x�s��'c���f�7Y�/��C�g�����o��^Tk[��/��|�}������WN���1���%Wz��S��:����sLzU�Q]	����<�zI��H��Mb���+O�������m=��?�ˀsH�����?S&e�/ [����x��0u��Y�1^ԑ���&�K|�}�cń��qi�jT*��5��_�
�	�DRyQl4��M�bV��H?�x_ɇ�e�C̥</���4w���/��X�K��`o�n/������o�K��?�������	��i��/p�O��:�s�햇|��=i��HՍ�@9�*Kjn�PqP7�B$Z��K���IM�$+�P$,�H�P�V��J D" C�j�,.�H�����c��Z�)��8�:J?�S;s\r��z����������s�\f�7����l��[ '���l��U�y�zX,�9|����w���G���Y�\eyN�G,���U�5�T��c�ۚ|���SMJ��j&JU��B`Ĩ�B�0�J#�����j��@�d�L:S32�#ɨm�2B���di&)h��3U��2��*HT+�����U\q%��c%*yr,.��}��9�^�f;sk��Y/Y""b�
�4$wd�Vѐ�Ż�;:�B��+�"&��3��W��}.��h?B^�q+ъ��4��#���v�5y�o�)�;�Tx�Ů�Z#*T�I����h�����QE��M��T@b;Z�(�"���T3 Z��&�e����Q��ɈL��m�2Pɀ�� � =5L�&S���8I �8"�Vj���0V�vIS�Xb���5s��\G�쬃�m�[���Οך�n�l����5��V�jx���y�H���}��ب>L����M��L���/ p�30a�W`��?�C^�B��v�V����=!_��6���K���s��Q����<.W%w�H�hj��XS���4�Uh�5E�PD
��K#1�JT�T5!�
J��Zd�`V";��n�t4l����=x�U�z҆��5:�H3z0����G�Ў6�g��#c�c^+��]��h��F�X}���xZ���h�S���a�<v�Lk��y�q���ݲ��~y�]��������ǭ�z�����ю�8���X�a�޴� [=mĔ_���8������_<8SF^�@ر�����P�!_%���/F��bꈓ�94�K�掍Ԗ=����aى�ޏw��x�N#ˑcO�nG���M��HR�W�U�&�
�DP!Z��(���D�jhAE�"j5���^+f��"9�3���3�踦#�1chG.3+�.31������䵳N3c�̬eγ2�����ڗ�]E|��ǎ���Y�K���q;�ҼGv���U�E{Tf������8k:,#^�;|�'��f��+6l��w�>@[�܀w��N:���\�����#>����ѽ7��f\�#S�o�UYvd�S�����lY�\���i�yi�M^�|c�0}�f����p[v�/����,��H�I��h���Jb���8�xL��hR���4
�=vF�5j��s�%�b..)Kq�5M�{��I��,s:�y}Nn�XL�}N��%��\%�Q�v�)�3���Y�-Ѭ��D�ǎ줹�p 8��݀�4,��T\1㺦X��+6��Ҽw���c��>t��������~�������������T lذb���-�^@�O���O�����L#�M?N	�dG��a���%Sj��<z벗f��穹o���Ժ5ĕ���!�m.!����3�͈t��5�{��mek�c��^����8�돴�H�=�n����x���hڀ{��u�+���Y�Fp�����W)�y$p���7��� {�y3=/���_ �������<x�۾r��t���^�{o��`ƌk�%;���0��=�nYϓܷ�-�~J�*qE][4l��x�֥ L��1�\�mM7z���2������6�����l�s�m��	�� c/�`�;�?}� #�m��|	�)���?81����g ���|�S6%���j�� V�X�b	\�V�+��8�\ � �\A��H{�����+vp��|xL@��?�`F�9����a���
�E� Ge�}�4  ��v젟��[A�=��M����~懀w��\�//T��J=v��(p������i^����o��s���� �o�{������?��.����⿋�.����⿋�.����⿋�.����⿋�.������               [remap]

importer="texture"
type="CompressedTexture2D"
uid="uid://biuts66sdber3"
path="res://.godot/imported/tower.png-6d542b8347d8353639a26fbe0e398a9d.ctex"
metadata={
"vram_texture": false
}
               [remap]

path="res://.godot/exported/133200997/export-2ae2eca00b78e4ff5805a301c3faeb3b-BaseEnemy.scn"
          [remap]

path="res://.godot/exported/133200997/export-2277b8745ca24d11ebfdccde03e9d375-evil.scn"
               [remap]

path="res://.godot/exported/133200997/export-13f3cd8441d130b219165d85caf6b8ae-prototype_path.scn"
     [remap]

path="res://.godot/exported/133200997/export-c9044343bdd5f639c97d99046dc5f02c-baseEnemy.scn"
          [remap]

path="res://.godot/exported/133200997/export-72c4eadce7f4e03d15c2cdd61a982b69-level_prototype.scn"
    [remap]

path="res://.godot/exported/133200997/export-56843273a12abb07ac6f4a0b27bd3af7-userInterface.scn"
      [remap]

path="res://.godot/exported/133200997/export-5d47dfb61193d27fe2eacb98ceaed458-gameOver.scn"
           [remap]

path="res://.godot/exported/133200997/export-290e3af7919f5a3fabbdf12b7a731962-tower.scn"
              list=Array[Dictionary]([])
     <svg height="128" width="128" xmlns="http://www.w3.org/2000/svg"><rect x="2" y="2" width="124" height="124" rx="14" fill="#363d52" stroke="#212532" stroke-width="4"/><g transform="scale(.101) translate(122 122)"><g fill="#fff"><path d="M105 673v33q407 354 814 0v-33z"/><path fill="#478cbf" d="m105 673 152 14q12 1 15 14l4 67 132 10 8-61q2-11 15-15h162q13 4 15 15l8 61 132-10 4-67q3-13 15-14l152-14V427q30-39 56-81-35-59-83-108-43 20-82 47-40-37-88-64 7-51 8-102-59-28-123-42-26 43-46 89-49-7-98 0-20-46-46-89-64 14-123 42 1 51 8 102-48 27-88 64-39-27-82-47-48 49-83 108 26 42 56 81zm0 33v39c0 276 813 276 813 0v-39l-134 12-5 69q-2 10-14 13l-162 11q-12 0-16-11l-10-65H447l-10 65q-4 11-16 11l-162-11q-12-3-14-13l-5-69z"/><path d="M483 600c3 34 55 34 58 0v-86c-3-34-55-34-58 0z"/><circle cx="725" cy="526" r="90"/><circle cx="299" cy="526" r="90"/></g><g fill="#414042"><circle cx="307" cy="532" r="60"/><circle cx="717" cy="532" r="60"/></g></g></svg>
             3�Z'>�}   res://exile/BaseEnemy.tscn5h�Cy�|   res://exile/evil.tscn8�����3   res://exile/prototype_path.tscn	M˙}�Y   res://levels/baseEnemy.tscn�����!   res://levels/level_prototype.tscnRVϜ:-SS   res://levels/userInterface.tscn5R�uG�G!   res://singleScreens/gameOver.tscn�\�?C   res://tower/tower.tscn�ׯu|N   res://ennemy.png.��1�xq   res://icon.svgĞ�-���K   res://tile.png��aW��)   res://tower.png ECFG      application/config/name         notaCardGame   application/run/main_scene,      !   res://levels/level_prototype.tscn      application/config/features(   "         4.2    GL Compatibility       application/config/icon         res://icon.svg     autoload/Global$         *res://singletons/Global.gd    autoload/ESpawner          *res://exile/eSpawner.gd   input/Up0              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device         	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   W   	   key_label             unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script      
   input/Down0              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   S   	   key_label             unicode    s      echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script      
   input/Left0              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   A   	   key_label             unicode    a      echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/Right0              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode   D   	   key_label             unicode    d      echo          script            InputEventKey         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          pressed           keycode           physical_keycode    @ 	   key_label             unicode           echo          script         input/Click�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device     ����	   window_id             alt_pressed           shift_pressed             ctrl_pressed          meta_pressed          button_mask          position     /C   @   global_position      3C  ,B   factor       �?   button_index         canceled          pressed          double_click          script         layer_names/2d_physics/layer_1         Player     layer_names/2d_physics/layer_2         Enemy   #   rendering/renderer/rendering_method         gl_compatibility*   rendering/renderer/rendering_method.mobile         gl_compatibility      