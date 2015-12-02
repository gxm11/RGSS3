=begin
===============================================================================
  存档名字修改 By喵呜喵5
===============================================================================

【说明】

  神经病式存档名字修改，可以让存档变成各种诡异的名字

  如果存档名固定是 存档名 + 存档编号 的话，请直接去修改 Vocab

  由于脚本的运行原理是擦除原本的存档文字，然后重新写一遍，
  因此需要提供原本存档文字的位置

=end
$m5script ||= {}; $m5script[:M5SN20151202] = 20151202
module M5SN20151202
#==============================================================================
# 设定部分
#==============================================================================

  NAME = [

    "毁天灭地的存档1",
    "振奋人心的存档2",
    "天地孤僻的存档3",
    "EX咖喱棒的存档4",
    "鲜血淋漓的存档5",
    "哀鸿遍野的存档6",
    "阴沟翻船的存档7",
    "意义不明的存档8",
    "烤肉定食的存档9",
    "猪排盖饭的存档10",
    "暖洋洋的存档11",
    "软绵绵的存档12",
    "威严扫地的存档13",
    "鬼畜循环的存档14",
    "编不下去的存档15",
    "居然能够到达这里，真是了不起呢的存档16",

  ]

  # 设置各个存档的名字

  ORIGIN = [4, 0, 200, 24]

  # 设置原存档名的位置，4个数字分别对应X坐标，Y坐标，宽，高

  TARGET = [4, 0, 544, 24]

  # 设置新存档名的位置，4个数字分别对应X坐标，Y坐标，宽，高

#==============================================================================
# 设定结束
#==============================================================================
end
class Window_SaveFile
  alias m5_20151202_refresh refresh
  def refresh
    m5_20151202_refresh
    name = M5SN20151202::NAME[@file_index]
    return unless name
    contents.clear_rect Rect.new *M5SN20151202::ORIGIN
    draw_text(*M5SN20151202::TARGET, name)
    @name_width = text_size(name).width
  end
end