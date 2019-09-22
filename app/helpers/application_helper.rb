module ApplicationHelper
  def tagline_quote
    quote = '„' + [
      "Jak tłiter, ale gorszy.",
      "Potężna wichura, łamiąc duże drzewa, trzciną zaledwie tylko kołysze",
      "Nie jesteśmy echo chamberem. Jesteśmy otchłanią",
      "Lepszy od fejsa.",
      "Snepczet to guwno",
      "O muj borze ale nam zaraz gugle zasiem obetnom",
      "Nie mamy konkurencji.",
      "Zabijamy media nowoczesne.",
      "Web 1.(9)",
      "Tak działa kapitalizm",
      "Lubię fajnie brzmiące słowa jak akceleracjonizm czy heteronormatywność"
    ].sample + '”'
    return quote
  end
end
