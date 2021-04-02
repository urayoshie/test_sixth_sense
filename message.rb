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

  def way_message
    puts <<~TEXT
           AまたはBどちらの道に進みますか？

           A道 => a
           B道 => b

         TEXT
  end

  def error_way_message(selected_name)
    puts <<~TEXT

          =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
            #{selected_name}の道はありません。
            aまたはbを選んでください。
          =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=

        TEXT
  end

  def action_message(proceeded_way_msg)
    puts <<~TEXT

          =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=
          #{proceeded_way_msg}

          #{@name}のHPは#{@hp}です。
          =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=

         TEXT
  end

  def goal_message
    puts <<~TEXT
            #{@chosen_character.name}は城に着いた!

            あなたは驚異的なSIXTH SENSEの持ち主です。
            自分の直感を信じてこの先も突き進みましょう！

            =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=

         TEXT
  end

  def lost_message
    puts <<~TEXT
            #{@chosen_character.name}は迷子になった。
            SIXTH SENSEを鍛えて出直しましょう！

            =*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=*=

         TEXT
  end

end
