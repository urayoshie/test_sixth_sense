module Message

  def start_message

    puts <<~TEXT
           --------------------------------------------
                 SIXTH SENSEの世界へようこそ!!
                 あなたはこれから長〜い旅に出ます。
                 どのキャラクターで旅に出ますか？

                 キャラクターを選んでください。
           --------------------------------------------

         TEXT

  end

  def error_chatacter_message(select_character_num)
    puts <<~TEXT

          =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
          #{select_character_num}は存在しません。
          #{@characters.first.id}から#{@characters.last.id}の番号から選んでください。
          =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=

         TEXT
  end

  def game_explanation
    puts <<~TEXT

           --------------------------------------------

           あなたは#{@chosen_character.name}になりました！

           さて、これからあなたは#{@chosen_character.name}として
           長い長い旅へ出ます。
           このゲームでは2択から進む道を選んで、
           ゴールを目指していただきます。
           あなたのHPが1000以上になったらゴールとなります。

           Let's go on a long journey!

           --------------------------------------------
         TEXT
  end

  def index_message

    puts <<~TEXT

           AまたはBどちらの道に進みますか？

           A道 => a
           B道 => b

         TEXT
  end

  def error_way_message(selected_index)
    puts <<~TEXT

          =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
            #{selected_index}の道はありません。
            aまたはbを選んでください。
          =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=

        TEXT
  end

  # def a_hp_action_message
  #   puts <<~TEXT
  #         =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
  #         #{a_shuffle[:msg]}
  #
  #         #{chosen_character.name}のHPは#{a_shuffle[:additional_hp].to_i}です。
  #         =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
  #        TEXT
  # end
  #
  # def b_hp_action_message
  #   puts <<~TEXT
  #         =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
  #         #{b_shuffle[:msg]}
  #
  #         #{chosen_character.name}のHPは#{b_shuffle[:additional_hp].to_i}です。
  #         =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
  #        TEXT
  # end

end
