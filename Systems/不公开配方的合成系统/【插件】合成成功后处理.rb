=begin
===============================================================================
  【插件】不公开配方的合成脚本 - 合成结束后处理
===============================================================================

  【说明】

  对《不公开配方的合成脚本 By喵呜喵5》合成结束后追加一些特殊的处理

  不需要这个插件的话，直接把这个脚本删掉就好了

=end
raise "本脚本需要放在合成脚本下方" unless $m5script[:M5Combin20141204]
raise "合成脚本版本过低！" if $m5script[:M5Combin20141204] < 20150706
module M5Combin20141204;module Tool5
#==============================================================================
#  设定部分
#==============================================================================

  ITEM = 1

  # 合成结束后用于合成的素材减少的个数

  SUCCESS = "Bell3"

  # 合成成功时播放的音效

#==============================================================================
#  设定结束
#==============================================================================
end;end
class Game_Interpreter
  alias m5_20141205_combin_success m5_20141204_combin_success
  def m5_20141204_combin_success
    m5_20141205_combin_success
    Audio.se_play('Audio/SE/' + M5Combin20141204::Tool5::SUCCESS) rescue nil
    $game_variables[M5Combin20141204::VAR].each do |id|
      $game_party.gain_item($data_items[id], - M5Combin20141204::Tool5::ITEM)
    end
  end
end