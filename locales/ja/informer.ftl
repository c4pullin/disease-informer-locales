# Please consult the following links to check what is allowed for command names, parameters, description, etc
# https://discord.com/developers/docs/interactions/application-commands#application-command-object
# https://discord.com/developers/docs/interactions/application-commands#application-command-object-application-command-option-structure
# For translating a new language, copy en-US's informer.ftl and create a new folder with the discord language name
# https://discord.com/developers/docs/reference#locales

### Localization for the disease informer bot

## Common variables

# Shown in text 

symptom-feel-random = Feeling Random
symptom-energetic = Energetic
symptom-tired = Tired
symptom-hungry = Hungry
symptom-need-brains = Need Brains
symptom-feel-unwell = Feeling Unwell
symptom-coughing = Coughing
symptom-fatigue = Fatigue
symptom-runny-nose = Runny Nose
symptom-dry-throat = Dry Throat
symptom-sneezing = Sneezing
symptom-itchy-nose = Itchy Nose
symptom-itchy-throat = Itchy Throat
symptom-feel-useless = Feeling Useless
symptom-numbness = Numbness
symptom-christmas-spirit = Christmas Spirit
symptom-hohoho = Ho Ho Ho
symptom-abdominal-pain = Abdominal Pain
symptom-foul-smell = Foul Smell
symptom-feel-warm = Feeling Warm
symptom-sweating = Sweating
symptom-gray = Gray
symptom-feel-fuzzy = Feeling Fuzzy

# Shown in autocomplete and in text

virus-flu = インフルエンザ
virus-fever = 発熱
virus-fur = 毛皮
virus-the-farts = おなら
virus-killer = キラー
virus-bloxulosis = ブルックスラ症
virus-epox = エポックス
virus-drbm = D.R.B.M
virus-zombie = ゾンビ
virus-claus = クロース
virus-bloxpox = ブルックスプロックス
virus-bloxburn = ブルックスバン
virus-useless = 役に立たない
virus-randpox = ランデポックス
virus-thirsty = 喉が渇く
virus-aylin = Aylin
virus-ray = Ray

# These are select options, but the room itself can be shown in text

room-heat = 熱
    .description = 何で複数の黒い所があるかしら？
room-cold = コールド
    .description = ここって寒いよ。。。
room-wind = 風
    .description = 疲れっと使いづらい
room-radiation = 放射線
    .description = 安全だといいな
room-centrifuge = セントリフュージ
    .description = ワイーーーー

# Shown in text in the doctortrainer

status-neutral = 中立
status-better = 良化
status-worse = 悪化
status-same = 変化無し


## Interaction commands

-virus = ウィルス
-no-virus-match = 君のクエリに対してのウイルスが見つからなかった

# Note: { $match_virus } is the virus' name
# { $user } is the editors's name
# { $time } is the discord formatted timestamp
cmd-cure = キュア
    .description = 治療方法を上げます。
    .virus = { -virus }
    .virus-describe = 治療方法を知りたいウィルス
    .title = <:cure:1276978906875822101> **{ $match_virus }**の治療方法：
    .not-found = { -no-virus-match }
    .last-update = { $user }による最終更新{ $time }

# Note: { $match_virus} is the virus' name
# { $last-editor } is the last editors's name
cmd-information = インフォ
    .description = 情報を上げます。
    .virus = { -virus }
    .virus-describe = 情報を知りたいウィルス
    .not-found = { -no-virus-match }
    .title = <:cure:1276978906875822101> { $match_virus }の情報：
    .symptoms = 症状
    .notes = 注記
    .last-update = { $last-editor }による最終更新

cmd-getvirusvalue = getvirusvalue
    .description = Allows admins to get the raw values for quicker updates.
    .virus = { -virus }
    .virus-describe = The virus you want the value.
    .key = key
    .key-describe = The type of information you want the value of.

cmd-gettrainervalue = gettrainervalue
    .description = Allows admins to get the raw values for quicker updates.
    .virus = { -virus }
    .virus-describe = The virus you want the value.
    .key = key
    .key-describe = If you want the whole raw data
    .room = room
    .room-describe = If you only want a specific room
    .intensity = intensity
    .intensity-describe = If you only want a specific intensity

-allowed-interference = 他人の干渉を許可しました。
-forbidden-interference = 他人の干渉を拒否しました。
# Note: { $cap } is the number of viruses a patient can get infected with.
# { $room } is the current room
# { $intensity } is the current intensity
cmd-doctortrainer = ドクタートレーナー
    .description = ADCのシミュレーター
    .virus = { -virus }
    .virus-describe = 特定のウイルスのトレーニングを行う場合
    .cap = 上限
    .cap-describe = 一度に発生するウィルスの最大量。デフォルトは2です。
    .allow-interference = 干渉許可
    .allow-interference-describe = 他の人があなたを困らせることを許したい場合。Trueははい、Falseはいいえ。
    .incorrect-virus = このウイルスは 使用不可能、あるいはまだ追加されていません
                       問題だと思いすならCapullinに聞いてください。
    .title = ドクタートレーナーへようこそ
    .trainer-for = { $person }のトレーナ
    .virus-notchosen = ウイルスを選択しませんでしたから、ランダムにしました。
                       同時に発生するウイルスは**{ NUMBER($cap) }**だけです
                       { $allowed ->
                       [1] { -allowed-interference }
                       *[0] { -forbidden-interference }
                       }
                       頑張ってください :D
    .virus-chosen = **{ $virus }**を治療するにしました。
                    同時に発生するウイルスは**{ NUMBER($cap) }**だけです
                    { $allowed ->
                    [1] { -allowed-interference }
                    *[0] { -forbidden-interference }
                    }
                    頑張ってください :D
    .redo-title = ドクタートレーナーへおかえりなさい。
    .redo-desc = ランダムな病気を治すことになる。
                 同時に発生するウイルスは**{ NUMBER($cap) }**だけです
                 頑張ってください :D
    .interaction-check-msg = それはできません :<
    .btn-start = スタート
    .btn-activate = 起動
    .btn-back-to-decon = 除染1へ戻る
    .select-placeholder = 部屋を選択
    .patient-has = 患者の病気：
    .room  = 部屋： { $room }
    .intensity = 強度： { NUMBER($intensity) }
    .stop-forbidden =  他人のトレーナーを止まらないでください :rage:
    .stop-title = ドクタートレーナーを使ってくださってありがとうございました。
    .stop-description = 楽しかったなら、幸いです。
    .win-title = おめでとう！
    .win-desc = 患者はこれらの病気から治しました： 
                { $virus-list }
    .virus-seperator = { $virus },{ " " }
    .virus-end = { $virus } !
    .levelup-title = よくできました 💮
    .levelup-desc = レベル{ NUMBER($level) }にレベルアップした。
    .gainedxp-title = 良くやった !
    .gainedxp-desc = 獲得：
                     `{ NUMBER($xp) }` XP !
    .cured-title = 患者はこれらの病気から治しました：
    .xp-text = { $virus } +`{ NUMBER($xp) }` XP
    .intern-thing = インターンがやらかした。
    .status-text = [{ $virus }] { $status } { NUMBER($perc) }%
    .timeout-not-started-title = 始めるのに時間がかかりすぎたね！
    .timeout-not-started-desc = 次回は気をつけよう。
    .timeout-started-title = 患者さんは退屈してしまった。
    .timeout-started-desc = 治療に時間がかかりすぎるという理由で切断した
                            { $virus-list }
    .virus-none = どのウイルスも :(
    .timeout-started-cured = 治ったんだ

# Note: { $shipper } is the shipper's name
# { person } is the person's name
cmd-ship = カップリング
    .description = カップリングをゲット
    .person = 受け
    .person-describe = 友情、あるいは愛情の深さを知りたい方。
    .shipper = 攻め
    .shipper-describe = 他人のカップリングを興味あるなら
    .match-text = :heartpulse: **カップリング** :heartpulse:
                  :small_red_triangle_down: `{ $shipper }`
                  :small_red_triangle: `{ $person }`
    .match-top = :twisted_rightwards_arrows: **{ $first_half }{ $second_half }**
    .match-down = **{ $percentage }%** { $ship_bar } { $ship_result }
    .ship-0 = 最悪 :sob:
    .ship-10 = 悪い :smiling_face_with_tear:
    .ship-20 = なかなか低い :frowning:
    .ship-30 = あんまり良くない :confused:
    .ship-40 = 平均より悪い :neutral_face:
    .ship-50 = ガツガツ :no_mouth:
    .ship-60 = 悪くない :slight_smile:
    .ship-69 = ( ͡° ͜ʖ ͡°)
    .ship-70 = なかなかいい :smiley:
    .ship-80 = いい :smile:
    .ship-90 = すごい :heart_eyes:
    .ship-100 = 完璧！ ❣
    .error-value = Discord could not provide valid avatars
    .error-notfound = { $count -> 
        [one] One user does not have an avatar
        *[other] All users do not have an avatar
    }
    .error-http = { $count -> 
        [one] Failed to download an avatar
        *[other] Failed to download all avatars
    }
    .error-discord = Internal connection error.

# Note: .status-reset doesn't actually show up, but is included for convenience's sake
# { $virus } is the virus' name
# { $current } is the current amount of steps
# { $total } is the total amount of steps
# { $percentage } is how much the virus is cured
# { $len } is the total amount of itensities provided
# { $int1 }, { $int2 } and { $int3 } are numbers, for the intensity
# { $hide } is for if we should make the first or the second intensitity hidden
# { $intensity} is the current intensities, formatted from .intensities or .intensities-same
cmd-navigator = ナヴィゲーター
    .description = ウイルスを治すための手順を段階的に説明します
    .virus = { -virus }
    .virus-describe = 案内が欲しいウイルス
    .virus-notfound = 正しい病気ではない、または開発者が病気の手順を確立していない。
                      もし本当にウイルスを追加したい場合は、Capullinに伝えてください。
    .title = # ナヴィゲーターへようこそ
    .guided-for = あなたはのために導かれます：**{ $virus }**
    .navigator-for = { $person }のナヴィゲーター
    .not-started-too-long = 始めるのに時間がかかりすぎました!
    .not-started-careful = 次回は気をつけてください。
    .started-sorry = 申し訳ございませんが、ナヴィゲーターが止まってしまいました
    .started-sorry-why = これを防ぐには、3分ごとにナヴィゲーターと操作する必要があります。
    .started-guided-for = あなたが導かれていたのは：
    .started-total-progress = 総進捗：
    .started-progress-show = { NUMBER($current) } / { NUMBER($total) }
    .interaction-check-msg = ナヴィゲーターを起動ユーザー専用。
    .end-thank-you = ナヴィゲーターを使ってくださってありがとうございました。
    .end-helped = お役に立てば幸いです:D
    .button-start = スタート
    .guiding-for = # ガイド:{ $virus }
    .go-room = { $room }に行け
    .intensities = { $len ->
        [3] ||{ NUMBER($int1) }|| **{ NUMBER($int2) }** ||{ NUMBER($int3) }||
        [2] { $hide ->
             [1] ||{ NUMBER($int1) }|| **{ NUMBER($int2) }**
             *[0] **{ NUMBER($int1) }** ||{ NUMBER($int2) }||
            }
        *[1] **{ NUMBER($int1) }**
    }
    .intensities-same = **{ $int1 }**
    .intensity-is = 強度は { $intensity }
    .step-show = ステップ**{ NUMBER($current) }**のうち**{ NUMBER($total) }**
    .cured-at = 治療は**{ NUMBER($percentage) }％**
    .status-start = 始め
    .status-end = 終わり
    .status-reset = リセット
    .status-no-navigation = :>
    .status-previous = <-
    .status-next = ->

cmd-ping = ピング
    .description = 現在のピングで応答します
    .ws = WSレイテンシ
    .global-ws = グローバルWSレイテンシ
    .no-shard-latency = シャードのWSレイテンシーは使用できません
    .no-uptime = アップタイムが利用可能になるまで少しお待ちください
    .title = ポン！ :ping_pong:
    .api-latency = APIレイテンシ
    .online-since = アップして
    .latency-text = ```py
                    { $emoji } {NUMBER($latency)} ms```

cmd-updatetrainer = updatetrainer
    .description = Update the disease luck
    .virus = { -virus }
    .virus-describe = The virus you want to update
    .luck = luck
    .luck-describe = The new luck value for the virus

cmd-statusmodify = statusmodify
    .description = Allows editors to enable or disable diseases for the trainer
    .virus = { -virus }
    .virus-describe = The virus you want to enable or disable.
    .status = status
    .status-describe = Make the disease enabled or not

cmd-rank = ランク
    .description = 現在のランクを取得
    .user-rank = ユーザー
    .user-rank-describe = 特定の人のランクを知りたい場合

cmd-deletemydata = データ削除
    .description = もしもすべての個人データを削除したい
    .delete-info = トレーナーコマンドの進行状況を保存するため、我々が保持するデータは、あなたのユーザーIDとギルドIDだけです。
                   本当にすべてのデータを削除したいのですか？
                   このプロセスを元に戻す方法はありません。
    .timeout = Took you too long to confirm.
    .confirmed-nodata = You didn't have any data to delete.
    .confirmed = Your data has been deleted.
    .cancelled = Okay, not doing anything.

cmd-leaderboard = リーダーボード
    .description = すべてのプロドクターのリーダーボード！
    .globally = グローバル
    .globally-describe = グローバル・リーダーボードを入手したい場合
    .title-globally = 全ギルドの中で最高
    .title-globally-footer = グローバル・リーダーボード
    .title-guild = このギルドのベスト
    .title-guild-footer = ギルド・リーダーボード
    .xp-text = #{ NUMBER($rank) } | { $user } XP: `{ $xp }`
    .deleted-user = 削除ユーザー
    .top-5 = トップ5 ドクター :lab_coat:
    .no-users = No users have used the doctortrainer in the guild yet...

# Note: { $count } and { $times } are the same, the number of times the user cured the virus
# { $virus } is the provided virus
# { $user } is the user's name
cmd-statistics = 統計
    .description = 統計情報の表示
    .user-rank = ユーザー
    .user-rank-describe = 他人の統計情報を取りたい場合
    .stat-virus = { $virus }： { NUMBER($times) }回。
    .stats-for =  { $user }の統計
    .no-order = 順不同：

group-update = アプデート 
    .description = Update

# Note: { $virus } is the virus' name
# { $len } is the amount of intensities, from 1 to 3
# { $bold } is whether we should bold the first intensity or the second
# { $int1 }, { $int2 } and { $int3 } are the provided intensities
cmd-update-cure = キュア
    .description = ウイルスの編集方法
    .virus = { -virus }
    .virus-describe = 編集したいウイルス
    .symptom = symptom
    .symptom-describe = If you want to update the symptoms
    .emb-title = アプデートへようこそ
    .emb-desc = **{ $virus }**を編集します
    .emb-cure-title = { $virus }の手順:
    .editing = { $user }は**{ $virus }**を編集中
    .step = ステップ： **{ NUMBER($start) }**/**{ NUMBER($end) }**
    .room = 部屋
    .intensity = 強度
    .btn-start = スタート
    .btn-previous = 前の25
    .btn-next = 次の25
    .btn-add = 手順追加
    .btn-remove = 最終手順除外
    .btn-edit = 手順編集
    .btn-end = 変更確認
    .btn-reset = 手順リセット
    .btn-stop = 変更破棄
    .select-step = ステップ { NUMBER($step) }
    .choose-step = ここでステップを選択
    .choose-room = ここで部屋を選択
    .choose-intensity = ここで強度を選択
    .choose-symptom = Choose the symptom here
    .intensities = { $len ->
        [3] { NUMBER($int1) }や**{ NUMBER($int2) }**や{ NUMBER($int3) }
        [2] {$bold ->
            [1] **{ NUMBER($int1) }**や{ NUMBER($int2) }
            *[0] { NUMBER($int1) }や**{ NUMBER($int2) }**
        }
        *[1] **{ NUMBER($int1) }**
    }
    .intensities-same = **{ NUMBER($int1) }**
    .display-step = { NUMBER($step) }) -> { $room } { $intensities }
    .display-step-with-marker = :arrow_right: { NUMBER($step) }) -> { $room } { $intensities }
    .no-steps = :arrow_right: 1) -> ...
    .stopped-title = 編集プロセスを停止しました。
    .stopped-desc = その下には、これまでに編集したものがあります。
    .success-edit = Succesfully updated **{ $virus }**.
    .failure-edit = Failed to update **{ $virus }**.
    .timed-out = Timed out.
    .timed-out-not-started = Timed out.
                             You didn't even start...
    .interaction-check-msg = Only the current editor may interact.
    .gap-in-intensities = There's a gap in the intensities
                          Did you miss an intensity?
    .cure-too-long = The cure doesn't fit within the limits discord established, so have a file with the cure inside.
    .ask-limit-raise = Did Tim really add a cure this long? Ask c4pu to raise the limits if so...

group-when = いつ
    .description = Check when a certain thing will occur

group-pillow = 枕
    .description = Check when a pillow related event will occur

cmd-fight = 投げ
    .description = 枕投げはいつか確認するができる
    .time = 枕投げは <t:9999999999:R>

cmd-invite = invite
    .description = Get an invite for the bot
    .btn-invite = Add to your server
    .btn-invite-user = Install the bot
    .type = type
    .type-describe = Guild or User install
    .bot-invite = Bot invite
    .user-invite = User invite
    .embed-user = Get the bot installed
    .embed-guild = Invite the bot to your guild
    .contribute-locales = If you want the bot to be translated to a language supported by discord, or see any wrong translations, you can contribute by going to the following url: https://github.com/c4pullin/disease-informer-locales.


# Command not ready yet, you can not translate these
cmd-symptom-diagnostic = symptom_diagnostic
    .description = Identify a patient's disease by their symptoms
    .start = Start
    .placeholder = Choose symptoms

# Command not ready yet, you can not translate these
cmd-calculatecuringtime = calculatecuringtime
    .description = Calculate the time it takes to cure a disease
    .virus = virus
    .speed_curing = speed_curing


## CTX commands

# Note: fluent_compiler is being a bit weird, so as a workaround,
# { $synced } and { $count } are the same, which is the amount of commands.
ctx-sync = sync
    .synced-globally = {NUMBER($count)}コマンドをグローバルにシンクロナイズしました
    .sync-guild-cmds-to-guid = { NUMBER($count) }ギルドコマンドをギルドへシンクロナイズしました
    .sync-global-to-guild = {NUMBER($count) }グローバルコマンドをギルドへシンクロナイズしました
    .clear-guild-cmds = Cleared { $synced ->
        [one] { $count } guild command
        *[other] { $count } guild commands
    }
 

## View things

Confirm =
    .confirm = 確認
    .cancel = キャンセル
    .interaction-check-msg = そんなことできませんよ。。。
    .timeout = タイムアウト。。。
    .accepted = 確認致しました。
    .denied = 中止致しました。


## Errors

not-allowed-editor = あなたは許可された編集者ではありません。
