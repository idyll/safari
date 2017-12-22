defmodule Safari.Test do
  def init(request, options) do
    headers = %{"content-type" => "text/html", "accept" => "text/html"}
    head = """
    <!DOCTYPE html>
    <html lang="en">
      <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
    
        <title>Hello Safari!</title>
      </head>

      <body>
    """
    fill = """
    <p>
    Ne per causae definitiones, ut veniam vocent cum. Eu torquatos expetendis eam. Volumus delicata neglegentur ne eam. Ut mel ubique facilis fastidii, cum no temporibus adversarium. Mucius scribentur intellegebat quo eu, id luptatum inciderint scribentur nam. Duis propriae in eam, an cum forensibus temporibus. Magna animal necessitatibus et sed, erroribus evertitur an est.
    </p>
    <p>
    Posse ipsum sapientem at pri, eam ut option vocibus. Cu nullam corpora ius, ne stet splendide est. Meliore ponderum nec ea, quo ea suscipit phaedrum. Per wisi elaboraret ut.
    </p>
    <p>
    Agam dicta sensibus quo an, vel ipsum veniam graeco cu. An viris aeterno dolorem est, novum diceret gubergren cum ad. Usu menandri patrioque scripserit te, usu an fugit molestiae. Qui tollit appellantur ut, pri solet aperiam facilis te. Integre electram quo et, persequeris consectetuer ne nam.
    </p>
    <p>
    Ut eam dicunt voluptua principes, dicit perfecto mediocrem ad eam. Te suas integre quo. Nec posse atqui omittantur no, ad sea sumo veritus mandamus. Qui facer viris latine et. Cu tation altera quo, illud oporteat est ne.
    </p>
    <p>
    His in quod noluisse vivendum. Modus etiam alterum et pri. Id quo dolorem indoctum. Elitr signiferumque at cum. Id habeo graeci consetetur qui. Nam ut sumo epicuri.
    </p>
    <p>
    Assentior voluptatum ex eum. Ea est nemore democritum, ei odio iriure accumsan nam, no veniam voluptua perpetua vim. Vim et volumus denique, ad verear argumentum vim. At idque velit cum, quis illum ponderum eos te. Integre labitur disputando et pri. Te atqui legere adipisci has, no eum erant verear appellantur.
    </p>
    <p>
    Quod audire abhorreant in est, pro novum partiendo ei, et quot porro pericula cum. Quaestio interesset scribentur cu nec, usu ei tritani eligendi adipiscing. Mea at antiopam dissentias constituam, an eam illud graece, probo habeo minim eam no. Sit aliquam interesset et.
    </p>
    <p>
    An purto tota equidem his, et nec aliquid splendide, has ut ridens deserunt. Has at omittam appellantur, ei lorem audire gubergren vis. Ei sumo erat comprehensam nam, eam an enim ceteros corpora. Mea ut eirmod eripuit ornatus ceteros.
    <p>
    """

    body = [[["" | ""]  | ""]  |
      head <> fill <> fill <> fill <> fill <> fill <> fill <> fill <> fill <> fill <> fill <> fill <> fill <> fill <> fill <> fill <> fill
    ]

    request2 = :cowboy_req.reply(200, headers, body, request)
    {:ok, request2, options}
  end
end
