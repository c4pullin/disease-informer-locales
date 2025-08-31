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

virus-flu = Flu
virus-fever = Fiebre
virus-fur = Piel
virus-the-farts = Los Pedos
virus-killer = Asasino
virus-bloxulosis = Bloxulosis
virus-epox = Epox
virus-drbm = D.R.B.M
virus-zombie = Zombi
virus-claus = Claus
virus-bloxpox = Bloxpox
virus-bloxburn = Bloxburn
virus-useless = Inútil
virus-randpox = Viruela Rand
virus-thirsty = Séd
virus-aylin = Aylin
virus-ray = Ray

# These are select options, but the room itself can be shown in text

room-heat = Calor
    .description = Why are there multiple black spots?
room-cold = Frío
    .description = So cold in there...
room-wind = Viento
    .description = Annoying to use when fatigued...
room-radiation = Radiación
    .description = I hope it's safe...
room-centrifuge = Centrífuga
    .description = Weeeeeeeeeeeee!

# Shown in text in the doctortrainer

status-neutral = Neutral
status-better = Mejor
status-worse = Peor
status-same = Igual


## Interaction commands

-virus = virus
-no-virus-match = No se ha encontrado ninguna enfermedad que coincida con su búsqueda.

# Note: { $match_virus } is the virus' name
# { $last-editor } is the last editors's name
cmd-cure = cura
    .description = Te da la cura.
    .virus = { -virus }
    .virus-describe = El virus que quieres curar
    .title = <:cure:1276978906875822101> Comó curar **{ $match_virus }**:
    .not-found = { -no-virus-match }
    .last-update = Última actualización por { $last-editor }

# Note: { $match_virus} is the virus' name
# { $last-editor } is the last editors's name
cmd-information = información
    .description = Responde con información
    .virus = { -virus }
    .virus-describe = El virus del que quieres obtener información
    .not-found = { -no-virus-match }
    .title = <:cure:1276978906875822101> Información sobre { $match_virus }
    .symptoms = Síntomas
    .notes = Notas
    .last-update = Última actualización por { $last-editor }

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

-allowed-interference = Permitió que otras personas interactuaran con el entrenador.
-forbidden-interference = No te molestarán otras personas.
# Note: { $cap } is the number of viruses a patient can get infected with.
# { $room } is the current room
# { $intensity } is the current intensity
cmd-doctortrainer = entrenadordoctor
    .description = Un simulador de ADC
    .virus = { -virus }
    .virus-describe = Si quieres entrenarte para un virus en espcifico.
    .cap = max
    .cap-describe = The max amount of diseases at a time. Defaults to 2.
    .allow-interference = permitir_interferencía
    .allow-interference-describe = If you want to allow other people to annoy you.
    .incorrect-virus = The disease is either not enabled, or the disease has not been added yet.
                       Ask Capullin if you think this is an issue.
    .title = Bienvenido al entrenador para doctores.
    .trainer-for = Entrenador de { $person }
    .virus-notchosen = You haven't chosen a virus, so you'll get a random one.
                       Only **{ NUMBER($cap) }** diseases can appear at the same time.
                       { $allowed ->
                       [1] { -allowed-interference }
                       *[0] { -forbidden-interference }
                       }
                       Buena suerte :D
    .virus-chosen = Has elegido curar: **{ $virus }**
                    Solo **{ NUMBER($cap) }** enfermedades pueden aparecer al mismo tiempo.
                    { $allowed ->
                    [1] { -allowed-interference }
                    *[0] { -forbidden-interference }
                    }
                    Buena suerte :D
    .redo-title =  Bienvenido de nuevo al entrenador para doctores
    .redo-desc = Recibirás una enfermedad aleatoria para curar.
                 Solo **{ NUMBER($cap) }** enfermedades pueden aparecer al mismo tiempo.
                 Buena suerte :D
    .interaction-check-msg = No puedes hacer eso :<
    .btn-start = EMPEZAR
    .btn-activate = ACTIVAR
    .btn-back-to-decon = BACK TO DECONTAMINATION 1
    .select-placeholder = Choose a room
    .patient-has = Tu paciente tiene:
    .room  = Sala : { $room }
    .intensity = Intensidad : { NUMBER($intensity) }
    .stop-forbidden = No stopping other people's trainers :rage:
    .stop-title = Thank you for using the doctor trainer!
    .stop-description = I hope you enjoyed it :D
    .win-title = Congratulations!
    .win-desc = You have cured your patient from: { $virus-list }
    .virus-seperator = { $virus },{ " " }
    .virus-end = {$virus} !
    .levelup-title = Well done!
    .levelup-desc = You have leveled up to level { NUMBER($level) }
    .gainedxp-title = Great job !
    .gainedxp-desc = You have earned:
                     `{ NUMBER($xp) }` XP !
    .cured-title = The patient has been cured from:
    .xp-text = { $virus } +`{ NUMBER($xp) }` XP
    .intern-thing = The intern did its thing
    .status-text = [{ $virus }] { $status } { NUMBER($perc) }%
    .timeout-not-started-title = Took you too long to start!
    .timeout-not-started-desc = Be careful next time.
    .timeout-started-title = Your patient got bored!
    .timeout-started-desc = They disconnected because it was taking too much time to cure
                            { $virus-list }
    .virus-none = None of their viruses :(
    .timeout-started-cured = You cured

# Note: { $shipper } is the shipper's name
# { person } is the person's name
cmd-ship = emparejamiento
    .description = Get shipped.
    .person = person
    .person-describe = The person that gets shipped with.
    .shipper = shipper
    .shipper-describe = If you are curious about another's person shipping.
    .match-text = :heartpulse: **MATCHMAKING** :heartpulse:
                  :small_red_triangle_down: `{ $shipper }`
                  :small_red_triangle: `{ $person }`
    .match-top = :twisted_rightwards_arrows: **{ $first_half }{ $second_half }**
    .match-down = **{ $percentage }%** { $ship_bar } { $ship_result }
    .ship-0 = Awful :sob:
    .ship-10 = Bad :smiling_face_with_tear:
    .ship-20 = Pretty Low :frowning:
    .ship-30 = Not Too Great :confused:
    .ship-40 = Worse Than Average :neutral_face:
    .ship-50 = Barely :no_mouth:
    .ship-60 = Not Bad :slight_smile:
    .ship-69 = ( ͡° ͜ʖ ͡°)
    .ship-70 = Pretty Good :smiley:
    .ship-80 = Great :smile:
    .ship-90 = Amazing :heart_eyes:
    .ship-100 = PERFECT! ❣
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
cmd-navigator = navigador
    .description = A navigator because numbers hurts brain.
    .virus = { -virus }
    .virus-describe = The virus you want a guide for
    .virus-notfound = Not a correct disease or the developper hasn't established the steps for the disease.
                      If you really want the disease to be added, do tell Capullin!
    .title = # Welcome to the navigator
    .guided-for = You will be guided for: **{ $virus }**
    .navigator-for = { $person }'s navigator
    .not-started-too-long = Took you too long to start!
    .not-started-careful = Be careful next time.
    .started-sorry = I am sorry, but the navigation has stopped
    .started-sorry-why = You have to interact with the navigator once every 3 minutes to prevent this.
    .started-guided-for = You were being guided for:
    .started-total-progress = Total progress:
    .started-progress-show = { NUMBER($current) } / { NUMBER($total) }
    .interaction-check-msg = Only the user who initiated the navigator is able to use it.
    .end-thank-you = Thank you for using the navigator
    .end-helped = I hope it helped you :D
    .button-start = START
    .guiding-for = # Guiding for: **{ $virus }**
    .go-room = Go to **{ $room }**
    .intensities = { $len ->
        [3] ||{ NUMBER($int1) }|| **{ NUMBER($int2) }** ||{ NUMBER($int3) }||
        [2] { $hide ->
             [1] ||{ NUMBER($int1) }|| **{ NUMBER($int2) }**
             *[0] **{ NUMBER($int1) }** ||{ NUMBER($int2) }||
            }
        *[1] **{ NUMBER($int1) }**
    }
    .intensities-same = **{ $int1 }**
    .intensity-is = Intensity is { $intensity }
    .step-show = Step **{ NUMBER($current) }** out of **{ NUMBER($total) }**
    .cured-at = Cured at **{ NUMBER($percentage) }%**
    .status-start = START
    .status-end = END
    .status-reset = RESET
    .status-no-navigation = :>
    .status-previous = <-
    .status-next = ->

cmd-ping = ping
    .description = Replies with the current ping
    .ws = WS Latency
    .global-ws = Global WS Latency
    .no-shard-latency = Shard WS Latency is not available
    .no-uptime = Wait a bit for uptime to be available.
    .title = Pong! :ping_pong:
    .api-latency = API Latency
    .online-since = Up since
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

cmd-rank = rank
    .description = Gets your current rank
    .user-rank = user_rank
    .user-rank-describe = If you want to get the rank of a specific person.

cmd-deletemydata = deletemydata
    .description = If you wish for all of your data to be deleted.
    .delete-info =  The only data we keep is just your user id and the guild id to save your progress in the trainer command.
                    Do you really wish for all of your data to be deleted?
                    There is no way to reverse this process.
    .timeout = Took you too long to confirm.
    .confirmed-nodata = You didn't have any data to delete.
    .confirmed = Your data has been deleted.
    .cancelled = Okay, not doing anything.


cmd-leaderboard = clasificación
    .description = Leaderboard for all the pro doctors!
    .globally = globally
    .globally-describe = If you want to get the global leaderboard
    .title-globally = The best across all guilds
    .title-globally-footer = Global Leaderboard
    .title-guild = The best from this guild
    .title-guild-footer = Guild leaderboard
    .xp-text = #{ NUMBER($rank) } | { $user } XP: `{ NUMBER($xp) }`
    .deleted-user = Deleted User
    .top-5 = TOP 5 DOCS :lab_coat:
    .no-users = No users have used the doctortrainer in the guild yet...

# Note: { $count } and { $times } are the same, the number of times the user cured the virus
# { $virus } is the provided virus
# { $user } is the user's name
cmd-statistics = estadísticas
    .description = Allows you to view your statistics
    .user-rank = user_rank
    .user-rank-describe = If you want to get the statistics of a specific person.
    .stat-virus = {$count ->
        [one] { $virus }: { NUMBER($times) } time.
        *[other] { $virus }: { NUMBER($times) } times.
    }
    .stats-for =  Statistics for { $user }
    .no-order = In no particular order:

# Note: { $virus } is the virus' name
# { $len } is the amount of intensities, from 1 to 3
# { $int1 }, { $int2 } and { $int3 } are the provided intensities
# { $bold } is whether we should bold the first intensity or the second
cmd-newupdate = newupdate
    .description = A new way to update the cures
    .virus = { -virus }
    .virus-describe = The virus to edit
    .symptom = symptom
    .symptom-describe = If you want to update the symptoms
    .emb-title = Welcome to the new editor
    .emb-desc = You will be editing **{ $virus }**
    .emb-cure-title = Steps for { $virus }:
    .editing = Currently editing { $virus }
    .step = Current step
    .room = Room
    .intensity = Intensities
    .btn-start = START
    .choose-room = Choose the room here
    .choose-intensity = Choose the intensity here
    .choose-symptom = Choose the symptom here
    .intensities = { $len ->
        [3] { NUMBER($int1) } O **{ NUMBER($int2) }** O { NUMBER($int3) }
        [2] {$bold ->
            [1] **{ NUMBER($int1) }** O { NUMBER($int2) }
            *[0] { NUMBER($int1) } O **{ NUMBER($int2) }**
        }
        *[1] **{ NUMBER($int1) }**
    }
    .intensities-same = **{ NUMBER($int1) }**
    .display-step = { NUMBER($step) }) -> { $room } { $intensities }
    .display-step-with-marker = :arrow_right: { NUMBER($step) }) -> { $room } { $intensities }
    .no-steps = :arrow_right: 1) -> ...
    .stopped-title = Stopped the editing process 
    .stopped-desc = Below is what you had edited so far

group-when = cuando
    .description = Check when a certain thing will occur

group-pillow = pelea 
    .description = Check when a pillow related event will occur

cmd-fight = almohadas
    .description = Check when pillow fight will occur
    .time = Pelea de almohadas <t:9999999999:R>

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
    .placeholder = Choose symptom

# Command not ready yet, you can not translate these
cmd-calculatecuringtime = calculatecuringtime
    .description = Calculate the time it takes to cure a disease
    .virus = virus
    .speed_curing = speed_curing


## CTX commands

# Note: fluent_compiler is being a bit weird, so as a workaround,
# { $synced } and { $count } are the same, which is the amount of commands.
ctx-sync = sync
    .synced-globally = Synced { $synced ->
        [one] { NUMBER($count) } command globally
        *[other] { NUMBER($count) } commands globally
    }
    .sync-guild-cmds-to-guid = Synced { $synced ->
        [one] { NUMBER($count) } guild command to the guild
        *[other] { NUMBER($count) } guild commands to the guild
    }
    .sync-global-to-guild = Synced { $synced ->
        [one] { NUMBER($count) } global command to the guild
        *[other] { NUMBER($count) } global commands to the guild
    }
    .clear-guild-cmds = Cleared { $synced ->
        [one] { NUMBER($count) } guild command
        *[other] { NUMBER($count) } guild commands
    }


## View things

Confirm =
    .confirm = Confirmar
    .cancel = Cancelar
    .interaction-check-msg = No puedes hacer eso..."
    .timeout = Se agotó el tiempo de espera.
    .accepted = Confirmado.
    .denied = Anulado.
