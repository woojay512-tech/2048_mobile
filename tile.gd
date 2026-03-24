extends Control

var value = 2

# 색상 정보 (나중에 더 추가 가능)
var colors = {
	2: Color("eee4da"),
	4: Color("ede0c8"),
	8: Color("f2b179"),
	16: Color("f59563")
}

# @onready 뒤에 %를 붙이면 노드 이름만으로 찾을 수 있어 경로 오류가 안 납니다!
# (단, 노드 설정에서 'Access as Unique Name'을 켜야 함 - 아래 설명 참고)
@onready var background = %ColorRect
@onready var number_label = %Label


func _ready():
	update_tile()

func update_tile():
	number_label.text = str(value)
	if colors.has(value):
		background.color = colors[value]
	else:
		background.color = Color("3c3a32")
